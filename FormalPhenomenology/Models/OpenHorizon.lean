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

/-- A Lean-Core upper bound for a finite list of natural-number horizons. -/
def expandingModelListBound : List Nat → Nat
  | [] => 0
  | h :: hs => h + expandingModelListBound hs

/-- Every horizon named by a finite list lies below its recursive sum bound. -/
theorem expandingModel_mem_le_listBound {h : Nat} {hs : List Nat}
    (hh : h ∈ hs) : h ≤ expandingModelListBound hs := by
  induction hs with
  | nil =>
      cases hh
  | cons x xs ih =>
      cases hh with
      | head =>
          exact Nat.le_add_right x (expandingModelListBound xs)
      | tail hmem =>
          exact Nat.le_trans (ih hmem)
            (Nat.le_add_left (expandingModelListBound xs) x)

/--
No finite list of horizons covers every presented aspect of the open natural-number
model.  This closes the finite-family quantifier gap left by the more general bounded-
family theorem: the list itself supplies a concrete bound, so no separate boundedness
hypothesis is required.

The theorem still speaks only about disjunctive coverage by named horizons.  It does
not define a horizon-combination operation or identify such a finite family with
Marion's stronger no-combination claim.
-/
theorem expandingModel_no_finite_list_cover (hs : List Nat) :
    ¬ (∀ a, expandingModel.presents () a →
      ∃ h, h ∈ hs ∧ expandingModel.admits h a) := by
  exact expandingModel_no_bounded_family_cover
    (expandingModelListBound hs) (fun h => h ∈ hs)
    (fun h hh => expandingModel_mem_le_listBound hh)

/-- Open-ended enlargement does not by itself supply a final exhaustive horizon. -/
theorem open_horizon_compatibility :
    expandingModel.UniversalStructure ∧ expandingModel.HasExcess ∧
    expandingModel.IndividuallyCoverable () := by
  exact ⟨expandingModel_structure, expandingModel_excess, expandingModel_individual⟩

end FormalPhenomenology
