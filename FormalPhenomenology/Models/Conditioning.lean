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

end FormalPhenomenology
