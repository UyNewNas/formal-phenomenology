import FormalPhenomenology.Models.OpenHorizon

set_option autoImplicit false

namespace FormalPhenomenology
open Presentation

/-- `none` is an added ideal horizon; `some n` retains the original finite horizon. -/
def completedModel : Presentation where
  Phenomenon := Unit
  Horizon := Option Nat
  Aspect := Nat
  appears := fun _ => True
  situated := fun _ _ => True
  presents := fun _ _ => True
  admits := fun h a => match h with
    | none => True
    | some n => a < n

theorem finite_horizon_agrees (n a : Nat) :
    completedModel.admits (some n) a ↔ expandingModel.admits n a := by
  exact Iff.rfl

theorem completedModel_capture : completedModel.UniversalCapture := by
  intro _ _
  exact ⟨none, True.intro, fun _ _ => True.intro⟩

theorem completedModel_no_excess : ¬ completedModel.HasExcess := by
  exact universalCapture_excludes_excess completedModel completedModel_capture

/-- Non-exhaustibility depends on which horizons the model admits. -/
theorem horizon_domain_changes_exhaustibility :
    expandingModel.HasExcess ∧ ¬ completedModel.HasExcess := by
  exact ⟨expandingModel_excess, completedModel_no_excess⟩

end FormalPhenomenology
