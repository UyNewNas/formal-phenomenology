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

/--
No fixed pair of finite initial-segment horizons covers all aspects of the open
natural-number model.  The diagonal aspect `h₀ + h₁` lies beyond both named
horizons, even though every individual aspect is admitted by some larger horizon.
-/
theorem expandingModel_no_fixed_pair_cover (h₀ h₁ : Nat) :
    ¬ (∀ a, expandingModel.presents () a →
      (expandingModel.admits h₀ a ∨ expandingModel.admits h₁ a)) := by
  intro hcover
  have hc := hcover (h₀ + h₁) True.intro
  rcases hc with h₀lt | h₁lt
  · exact (Nat.not_lt_of_ge (Nat.le_add_right h₀ h₁)) h₀lt
  · exact (Nat.not_lt_of_ge (Nat.le_add_left h₁ h₀)) h₁lt

/--
No uniformly bounded family of horizons covers every aspect of the open
natural-number model.  If every selected horizon `h` satisfies `h ≤ B`, then the
single diagonal aspect `B` is admitted by none of them.  This strengthens the
fixed-pair guardrail without introducing a horizon-combination operation.
-/
theorem expandingModel_no_bounded_family_cover
    (B : Nat) (selected : Nat → Prop)
    (hBound : ∀ h, selected h → h ≤ B) :
    ¬ (∀ a, expandingModel.presents () a →
      ∃ h, selected h ∧ expandingModel.admits h a) := by
  intro hcover
  rcases hcover B True.intro with ⟨h, hSelected, hAdmits⟩
  exact (Nat.not_lt_of_ge (hBound h hSelected)) hAdmits

/-- Open-ended enlargement does not by itself supply a final exhaustive horizon. -/
theorem open_horizon_compatibility :
    expandingModel.UniversalStructure ∧ expandingModel.HasExcess ∧
    expandingModel.IndividuallyCoverable () := by
  exact ⟨expandingModel_structure, expandingModel_excess, expandingModel_individual⟩

end FormalPhenomenology
