import FormalPhenomenology.Horizon.SituatedExcess

set_option autoImplicit false

namespace FormalPhenomenology
open Presentation

/--
A second layer for asking whether a horizon *conditions* a phenomenon.

`base.situated p h` says only that `h` is a horizon relevant to the appearing
of `p` in the base presentation.  `conditions p h` is deliberately distinct:
it marks a horizon as a prior condition or constraint on the phenomenality of
`p`.  The distinction is interpretive infrastructure, not a definition of
Marion's saturated phenomenon.
-/
structure HorizonConditioning where
  base : Presentation
  conditions : (p : base.Phenomenon) → base.Horizon → Prop

namespace HorizonConditioning

/-- Some admitted horizon conditions the phenomenon. -/
def Conditioned (M : HorizonConditioning) (p : M.base.Phenomenon) : Prop :=
  ∃ h, M.conditions p h

/-- No admitted horizon conditions the phenomenon. -/
def Independent (M : HorizonConditioning) (p : M.base.Phenomenon) : Prop :=
  ∀ h, ¬ M.conditions p h

/--
A coherence condition for readings where only horizons already related to the
phenomenon are eligible to condition it.
-/
def ConditioningIsSituated (M : HorizonConditioning) : Prop :=
  ∀ p h, M.conditions p h → M.base.situated p h

/--
There is an appearing phenomenon which has a related horizon but is independent
of every horizon admitted as a conditioning relation.
-/
def HasStructuredIndependentAppearance (M : HorizonConditioning) : Prop :=
  ∃ p, M.base.appears p ∧ M.base.Structured p ∧ M.Independent p

end HorizonConditioning

/-- Horizon independence is exactly the negation of existential conditioning. -/
theorem horizonIndependent_iff_not_conditioned
    (M : HorizonConditioning) (p : M.base.Phenomenon) :
    M.Independent p ↔ ¬ M.Conditioned p := by
  constructor
  · intro hi hc
    obtain ⟨h, hh⟩ := hc
    exact hi h hh
  · intro hn h hh
    exact hn ⟨h, hh⟩

/-- Under the coherence condition, being conditioned entails having a related horizon. -/
theorem conditioningIsSituated_conditioned_implies_structured
    (M : HorizonConditioning) (hc : M.ConditioningIsSituated)
    (p : M.base.Phenomenon) (hp : M.Conditioned p) : M.base.Structured p := by
  obtain ⟨h, hh⟩ := hp
  exact ⟨h, hc p h hh⟩

/-- Under the same coherence condition, a horizonless phenomenon is independent. -/
theorem conditioningIsSituated_notStructured_implies_independent
    (M : HorizonConditioning) (hc : M.ConditioningIsSituated)
    (p : M.base.Phenomenon) (hn : ¬ M.base.Structured p) : M.Independent p := by
  intro h hh
  exact hn ⟨h, hc p h hh⟩

end FormalPhenomenology
