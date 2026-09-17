import FormalPhenomenology.Horizon.Conditioning
import FormalPhenomenology.Models.Finite

set_option autoImplicit false

namespace FormalPhenomenology
open Presentation HorizonConditioning

/--
The split horizon model, with no horizon marked as a prior condition of
phenomenality.  Relatedness and conditioning are therefore separated without
removing horizons from the presentation.
-/
def splitIndependentConditioning : HorizonConditioning where
  base := splitModel
  conditions := fun _ _ => False

theorem splitIndependentConditioning_coherent :
    splitIndependentConditioning.ConditioningIsSituated := by
  intro _ _ hf
  exact False.elim hf

theorem splitIndependentConditioning_hasStructuredIndependentAppearance :
    splitIndependentConditioning.HasStructuredIndependentAppearance := by
  refine ⟨(), True.intro, ?_, ?_⟩
  · exact splitModel_structure () True.intro
  · intro _ hf
    exact hf

/--
The same finite witness jointly realizes relatedness, absence of horizon
conditioning, and failure of exhaustive capture.  This establishes consistency
of the three formal axes; it does not identify the profile with saturation.
-/
theorem splitIndependentConditioning_hasSituatedIndependentExcess :
    splitIndependentConditioning.HasSituatedIndependentExcess := by
  obtain ⟨p, hp, hstruct, hn⟩ := splitModel_situatedExcess
  cases p
  refine ⟨(), hp, hstruct, ?_, hn⟩
  intro _ hf
  exact hf

/--
The three-way profile is jointly satisfiable even while conditioning is required
to be a subrelation of horizon relatedness.
-/
theorem related_independent_nonExhaustible_are_jointly_consistent :
    ∃ M : HorizonConditioning,
      M.ConditioningIsSituated ∧ M.HasSituatedIndependentExcess := by
  exact ⟨splitIndependentConditioning,
    splitIndependentConditioning_coherent,
    splitIndependentConditioning_hasSituatedIndependentExcess⟩

/--
Horizon independence, in the conditioning sense, need not mean that no horizon
is related to the appearance.
-/
theorem horizon_independence_need_not_be_horizonless :
    ∃ M : HorizonConditioning,
      M.HasStructuredIndependentAppearance ∧ ¬ M.base.HasHorizonlessAppearance := by
  exact ⟨splitIndependentConditioning,
    splitIndependentConditioning_hasStructuredIndependentAppearance,
    structure_excludes_horizonless splitModel splitModel_structure⟩

/-- A captured appearance can still be independent of horizons as conditions. -/
def closedIndependentConditioning : HorizonConditioning where
  base := closedModel
  conditions := fun _ _ => False

theorem closedIndependentConditioning_independent :
    closedIndependentConditioning.Independent () := by
  intro _ hf
  exact hf

theorem closedIndependentConditioning_capture :
    closedIndependentConditioning.base.Captured () := by
  exact closedModel_capture () True.intro

/--
Related horizon structure, horizon-independence in the conditioning sense, and
existential exhaustive capture are jointly satisfiable at one actually
appearing phenomenon in the current relation language.

This packages the already existing closed-independent witness in the exact
compatibility form needed for the first research question.  It does not identify
`Captured` with Marion's phrase "saturates a horizon"; it only shows that
relatedness/capture and absence of conditioning do not conflict by definition.
-/
theorem related_independent_captured_are_jointly_consistent :
    ∃ M : HorizonConditioning, ∃ p : M.base.Phenomenon,
      M.base.appears p ∧ M.base.Structured p ∧
        M.Independent p ∧ M.base.Captured p := by
  refine ⟨closedIndependentConditioning, (), True.intro, ?_,
    closedIndependentConditioning_independent,
    closedIndependentConditioning_capture⟩
  exact ⟨(), True.intro⟩

/--
Merely combining universal horizon structure with the coherence requirement
that every conditioning horizon be related to the phenomenon still does not
force the exact appearing-domain incompatibility between capture and horizon
independence.

The closed-independent model is already maximally structured at its sole
appearance and satisfies `ConditioningIsSituated` vacuously, yet that appearance
is both `Captured` and `Independent`.  Thus neither "every appearance has a
horizon" nor "conditioning horizons must be related" supplies the missing
bridge from horizon-independence to non-exhaustibility.
-/
theorem structure_and_conditioning_coherence_do_not_imply_exact_appearing_condition :
    ¬ (∀ M : HorizonConditioning,
      M.base.UniversalStructure →
      M.ConditioningIsSituated →
      ∀ p, M.base.appears p → M.base.Captured p → ¬ M.Independent p) := by
  intro h
  have hstructure : closedIndependentConditioning.base.UniversalStructure := by
    intro p _
    cases p
    exact ⟨(), True.intro⟩
  have hcoherent : closedIndependentConditioning.ConditioningIsSituated := by
    intro _ _ hf
    exact False.elim hf
  have hexcl := h closedIndependentConditioning hstructure hcoherent
  exact (hexcl () True.intro closedIndependentConditioning_capture)
    closedIndependentConditioning_independent

/--
The closed-independent countermodel to `Independent → NonExhaustible` fails the
new bridge: its related horizon exhausts the appearance but is not marked as a
conditioning horizon.  This confirms that the bridge is a genuine extra premise.
-/
theorem closedIndependentConditioning_not_exhaustiveCaptureConditions :
    ¬ closedIndependentConditioning.ExhaustiveCaptureConditions := by
  intro hb
  exact closedIndependentConditioning_independent ()
    (hb () () True.intro (fun _ _ => True.intro))

/--
Not being conditioned by any horizon does not by itself imply failure of
exhaustive capture.  The two notions answer different questions.
-/
theorem horizon_independence_does_not_imply_nonExhaustible :
    ¬ (∀ (M : HorizonConditioning) (p : M.base.Phenomenon),
      M.Independent p → M.base.NonExhaustible p) := by
  intro h
  have hn := h closedIndependentConditioning ()
    closedIndependentConditioning_independent
  exact (nonExhaustible_iff_not_captured closedModel ()).mp hn
    closedIndependentConditioning_capture

/--
The split model with every related horizon also marked as conditioning.  It
remains non-exhaustible even though it is not horizon-independent.
-/
def splitDependentConditioning : HorizonConditioning where
  base := splitModel
  conditions := fun _ _ => True

theorem splitDependentConditioning_nonExhaustible :
    splitDependentConditioning.base.NonExhaustible () := by
  obtain ⟨p, _, hn⟩ := splitModel_excess
  cases p
  exact hn

theorem splitDependentConditioning_not_independent :
    ¬ splitDependentConditioning.Independent () := by
  intro hi
  exact hi false True.intro

/-- Non-exhaustibility likewise does not imply horizon independence. -/
theorem nonExhaustible_does_not_imply_horizon_independence :
    ¬ (∀ (M : HorizonConditioning) (p : M.base.Phenomenon),
      M.base.NonExhaustible p → M.Independent p) := by
  intro h
  exact splitDependentConditioning_not_independent
    (h splitDependentConditioning () splitDependentConditioning_nonExhaustible)

/--
A finite model separating the exact appearing-domain incompatibility from the
stronger horizon-by-horizon bridge.  Both horizons are related to the appearing
phenomenon.  The `false` horizon exhausts its only encoded aspect, while the
`true` horizon is the one marked as conditioning.  Hence captured appearances
are not independent, although the exhaustive horizon itself need not be a
conditioning horizon.
-/
def displacedCaptureConditioning : HorizonConditioning where
  base :=
    { Phenomenon := Unit
      Horizon := Bool
      Aspect := Unit
      appears := fun _ => True
      situated := fun _ _ => True
      presents := fun _ _ => True
      admits := fun h _ => h = false }
  conditions := fun _ h => h = true

/--
The exact condition needed on appearing phenomena is strictly weaker than
`ExhaustiveCaptureConditions`, even under `ConditioningIsSituated`.

The witness satisfies
`appears p → Captured p → ¬ Independent p`: capture occurs through `false`,
while conditioning is witnessed by the different horizon `true`.  The stronger
bridge nevertheless fails because the exhaustive `false` horizon is not itself
conditioning.  This proves the strictness that was previously only stated in
prose, without adding a new philosophical primitive.
-/
theorem exact_appearing_condition_is_strictly_weaker_than_exhaustiveCaptureConditions :
    ∃ M : HorizonConditioning,
      M.ConditioningIsSituated ∧
      (∀ p, M.base.appears p → M.base.Captured p → ¬ M.Independent p) ∧
      ¬ M.ExhaustiveCaptureConditions := by
  refine ⟨displacedCaptureConditioning, ?_, ?_, ?_⟩
  · intro _ _ _
    exact True.intro
  · intro p _ _
    cases p
    intro hi
    exact hi true rfl
  · intro hb
    have he : displacedCaptureConditioning.base.Exhausts () false := by
      intro a _
      cases a
      rfl
    have hc := hb () false True.intro he
    cases hc

end FormalPhenomenology
