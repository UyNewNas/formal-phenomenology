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
At a fixed phenomenon, the exact proof-theoretic condition for replacing
`¬ Independent p` by an actual existential conditioning witness is stability of
that existential proposition itself: double-negated conditioning must imply
conditioning.

This is weaker than assuming decidability.  It introduces no new relation and
uses only the already verified equivalence `¬ Independent p ↔ ¬¬ Conditioned p`.
-/
theorem not_independent_iff_conditioned_iff_conditioned_stable
    (M : HorizonConditioning) (p : M.base.Phenomenon) :
    ((¬ M.Independent p) ↔ M.Conditioned p) ↔
      (¬ ¬ M.Conditioned p → M.Conditioned p) := by
  constructor
  · intro h hnn
    exact h.mp ((not_independent_iff_not_not_conditioned M p).mpr hnn)
  · intro hs
    constructor
    · intro hni
      exact hs ((not_independent_iff_not_not_conditioned M p).mp hni)
    · intro hc
      exact (not_independent_iff_not_not_conditioned M p).mpr (fun hnc => hnc hc)

/--
Pointwise stability of existential conditioning is sufficient to collapse the
appearing-domain exact exclusion into the witness-producing capture bridge.
Unlike the decidability corollary below, this theorem asks only for the exact
double-negation-elimination property used by the proof.
-/
theorem exact_appearing_condition_iff_witness_bridge_of_stable
    (M : HorizonConditioning)
    (hs : ∀ p, ¬ ¬ M.Conditioned p → M.Conditioned p) :
    (∀ p, M.base.appears p → M.base.Captured p → ¬ M.Independent p) ↔
      (∀ p, M.base.appears p → M.base.Captured p → M.Conditioned p) := by
  constructor
  · intro h p hp hc
    exact hs p ((not_independent_iff_not_not_conditioned M p).mp (h p hp hc))
  · intro h p hp hc hi
    exact (horizonIndependent_iff_not_conditioned M p).mp hi (h p hp hc)

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
For the first research question, stability is only needed where the bridge is
actually queried: on phenomena that both appear and are captured.  Global
pointwise stability is therefore stronger than necessary for this scoped
collapse from exact exclusion to an existential conditioning witness.
-/
theorem exact_appearing_condition_iff_witness_bridge_of_captured_stable
    (M : HorizonConditioning)
    (hs : ∀ p, M.base.appears p → M.base.Captured p →
      (¬ ¬ M.Conditioned p → M.Conditioned p)) :
    (∀ p, M.base.appears p → M.base.Captured p → ¬ M.Independent p) ↔
      (∀ p, M.base.appears p → M.base.Captured p → M.Conditioned p) := by
  constructor
  · intro h p hp hc
    exact hs p hp hc
      ((not_independent_iff_not_not_conditioned M p).mp (h p hp hc))
  · exact appearing_captured_conditioned_implies_exact_appearing_condition M

/--
The witness-producing bridge has an exact constructive decomposition on the
same appearing/captured domain: it is equivalent to the already identified
conflict exclusion together with local double-negation stability exactly where
capture occurs.  No stability assumption is imposed on non-appearing or
non-captured inhabitants of the phenomenon type.
-/
theorem appearing_witness_bridge_iff_exact_and_captured_stability
    (M : HorizonConditioning) :
    (∀ p, M.base.appears p → M.base.Captured p → M.Conditioned p) ↔
      ((∀ p, M.base.appears p → M.base.Captured p → ¬ M.Independent p) ∧
       (∀ p, M.base.appears p → M.base.Captured p →
         (¬ ¬ M.Conditioned p → M.Conditioned p))) := by
  constructor
  · intro hb
    refine ⟨appearing_captured_conditioned_implies_exact_appearing_condition M hb, ?_⟩
    intro p hp hc _
    exact hb p hp hc
  · rintro ⟨hexact, hstable⟩
    exact (exact_appearing_condition_iff_witness_bridge_of_captured_stable M hstable).mp hexact

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

/--
If existential conditioning is decidable at one phenomenon, the constructive
double-negation gap closes *locally*: refuting horizon-independence is then
exactly having an actual conditioning witness.

The proof reuses Lean Core's `Decidable.not_not`; no global classical instance
or new philosophical axiom is introduced.  Decidability is a sufficient source
of the weaker, exact stability premise characterized above.
-/
theorem not_independent_iff_conditioned_of_decidable
    (M : HorizonConditioning) (p : M.base.Phenomenon)
    [Decidable (M.Conditioned p)] :
    (¬ M.Independent p) ↔ M.Conditioned p := by
  exact (not_independent_iff_not_not_conditioned M p).trans Decidable.not_not

/--
For the first research question, even decidability need only be supplied where
it can actually be used: on phenomena that both appear and are captured.  This
is still stronger than the exact local stability premise, but avoids imposing a
decision procedure on irrelevant inhabitants of the phenomenon type.
-/
theorem exact_appearing_condition_iff_witness_bridge_of_captured_decidable
    (M : HorizonConditioning)
    (hd : ∀ p, M.base.appears p → M.base.Captured p →
      Decidable (M.Conditioned p)) :
    (∀ p, M.base.appears p → M.base.Captured p → ¬ M.Independent p) ↔
      (∀ p, M.base.appears p → M.base.Captured p → M.Conditioned p) := by
  apply exact_appearing_condition_iff_witness_bridge_of_captured_stable M
  intro p hp hc hnn
  letI := hd p hp hc
  exact Decidable.not_not.mp hnn

/--
With pointwise decidability of existential conditioning made explicit, the
exact appearing-domain exclusion and the witness-producing capture bridge have
the same proof-theoretic strength.

This is a stronger corollary of captured-domain decidability: global pointwise
decidability is convenient but unnecessary for the first research question.
No classical logic is assumed globally and no decidability claim is attributed
to any historical phenomenologist.
-/
theorem exact_appearing_condition_iff_witness_bridge_of_decidable
    (M : HorizonConditioning)
    (hd : ∀ p, Decidable (M.Conditioned p)) :
    (∀ p, M.base.appears p → M.base.Captured p → ¬ M.Independent p) ↔
      (∀ p, M.base.appears p → M.base.Captured p → M.Conditioned p) := by
  apply exact_appearing_condition_iff_witness_bridge_of_captured_decidable M
  intro p _ _
  exact hd p

end FormalPhenomenology