import FormalPhenomenology.Models.Conditioning

set_option autoImplicit false

namespace FormalPhenomenology
open Presentation HorizonConditioning

/--
In the current constructive kernel discipline, refuting horizon-independence is
exactly double-negating the existence of a conditioning horizon.

This is deliberately weaker than manufacturing a `Conditioned p` witness.  A
classical double-negation-elimination step would collapse the distinction, but
no such principle is imported or assumed here.
-/
theorem not_independent_iff_not_not_conditioned
    (M : HorizonConditioning) (p : M.base.Phenomenon) :
    (¬ M.Independent p) ↔ ¬ ¬ M.Conditioned p := by
  constructor
  · intro hni hnc
    exact hni ((horizonIndependent_iff_not_conditioned M p).mpr hnc)
  · intro hnn hi
    exact hnn ((horizonIndependent_iff_not_conditioned M p).mp hi)

/--
The exact appearing-domain exclusion can therefore be restated as a
constructive double-negated conditioning obligation: every appearing captured
phenomenon makes it impossible that no conditioning horizon exists.

This theorem does not strengthen the historical interpretation of `conditions`;
it only exposes the proof-theoretic strength of the already verified exact
condition.
-/
theorem exact_appearing_condition_iff_double_negated_conditioning
    (M : HorizonConditioning) :
    (∀ p, M.base.appears p → M.base.Captured p → ¬ M.Independent p) ↔
      (∀ p, M.base.appears p → M.base.Captured p → ¬ ¬ M.Conditioned p) := by
  constructor
  · intro h p hp hc
    exact (not_independent_iff_not_not_conditioned M p).mp (h p hp hc)
  · intro h p hp hc
    exact (not_independent_iff_not_not_conditioned M p).mpr (h p hp hc)

/--
The stronger horizon-by-horizon bridge constructs an actual conditioning
witness from any existential exhaustive capture: the very horizon witnessing
capture also witnesses conditioning.
-/
theorem exhaustiveCaptureConditions_captured_implies_conditioned
    (M : HorizonConditioning) (hb : M.ExhaustiveCaptureConditions)
    (p : M.base.Phenomenon) (hc : M.base.Captured p) :
    M.Conditioned p := by
  obtain ⟨h, hs, he⟩ := hc
  exact ⟨h, hb p h hs he⟩

/--
An appearing-domain bridge that produces a conditioning witness for each
captured appearance is sufficient for the exact exclusion of
`Captured ∧ Independent`.
-/
theorem appearing_captured_conditioned_implies_exact_appearing_condition
    (M : HorizonConditioning)
    (hb : ∀ p, M.base.appears p → M.base.Captured p → M.Conditioned p) :
    ∀ p, M.base.appears p → M.base.Captured p → ¬ M.Independent p := by
  intro p hp hc hi
  exact (horizonIndependent_iff_not_conditioned M p).mp hi (hb p hp hc)

/--
Producing some conditioning witness for every appearing captured phenomenon is
still strictly weaker than requiring the *same exhaustive horizon* to be a
conditioning horizon.  `displacedCaptureConditioning` witnesses the gap: capture
comes from `false`, conditioning from `true`, so the witness-level bridge and
`ConditioningIsSituated` hold while `ExhaustiveCaptureConditions` fails.
-/
theorem appearing_captured_to_conditioned_is_strictly_weaker_than_exhaustiveCaptureConditions :
    ∃ M : HorizonConditioning,
      M.ConditioningIsSituated ∧
      (∀ p, M.base.appears p → M.base.Captured p → M.Conditioned p) ∧
      ¬ M.ExhaustiveCaptureConditions := by
  refine ⟨displacedCaptureConditioning, ?_, ?_, ?_⟩
  · intro _ _ _
    exact True.intro
  · intro p _ _
    cases p
    exact ⟨true, rfl⟩
  · intro hb
    have he : displacedCaptureConditioning.base.Exhausts () false := by
      intro a _
      cases a
      rfl
    have hc := hb () false True.intro he
    cases hc

end FormalPhenomenology
