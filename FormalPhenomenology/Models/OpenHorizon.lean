import FormalPhenomenology.Horizon.Separation

set_option autoImplicit false

namespace FormalPhenomenology
open Presentation

/-- Each natural-number horizon admits a finite initial segment of aspects. -/
def expandingModel : Presentation where
  Phenomenon := Unit
  Horizon := Nat
  Aspect := Nat
  appears := fun _ => True
  situated := fun _ _ => True
  presents := fun _ _ => True
  admits := fun h a => a < h

theorem expandingModel_structure : expandingModel.UniversalStructure := by
  intro _ _
  exact ⟨Nat.zero, True.intro⟩

theorem expandingModel_no_horizon_exhausts (h : Nat) :
    ¬ expandingModel.Exhausts () h := by
  intro he
  exact Nat.lt_irrefl h (he h True.intro)

theorem expandingModel_excess : expandingModel.HasExcess := by
  exact ⟨(), True.intro, fun h _ => expandingModel_no_horizon_exhausts h⟩

theorem expandingModel_individual : expandingModel.IndividuallyCoverable () := by
  intro a _
  exact ⟨Nat.succ a, True.intro, Nat.lt_succ_self a⟩

theorem expandingModel_monotone (h k a : Nat) (hk : h ≤ k) :
    expandingModel.admits h a → expandingModel.admits k a := by
  intro ha
  exact Nat.lt_of_lt_of_le ha hk

/-- Open-ended enlargement does not by itself supply a final exhaustive horizon. -/
theorem open_horizon_compatibility :
    expandingModel.UniversalStructure ∧ expandingModel.HasExcess ∧
    expandingModel.IndividuallyCoverable () := by
  exact ⟨expandingModel_structure, expandingModel_excess, expandingModel_individual⟩

end FormalPhenomenology
