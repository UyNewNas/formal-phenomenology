import FormalPhenomenology.Models.Conditioning
import FormalPhenomenology.Models.OpenHorizon

set_option autoImplicit false

namespace FormalPhenomenology
open Presentation HorizonConditioning

/--
An open-ended conditioning model used only as a pressure test for the first
question. Every natural-number horizon is related to the sole appearance and
also conditions it, while the base presentation is the existing
`expandingModel` of finite initial segments.

The definition deliberately reuses the existing open-horizon presentation and
adds no horizon-combination operation. It is not a model of Marion's saturated
phenomenon and carries no historical attribution.
-/
def expandingDependentConditioning : HorizonConditioning where
  base := expandingModel
  conditions := fun _ _ => True

/-- Relatedness and conditioning coincide in both directions in the open model. -/
theorem expandingDependentConditioning_mutual :
    expandingDependentConditioning.ConditioningIsSituated ∧
      expandingDependentConditioning.SituatedImpliesConditioning := by
  constructor
  · intro p h _
    cases p
    exact True.intro
  · intro p h _
    cases p
    exact True.intro

/--
Even when every named horizon conditions the appearance, no finite list of such
horizons covers every presented aspect in the open model.

This is only disjunctive finite-family coverage in the repository's extensional
`admits` language. It is strictly weaker than adding a semantic operation that
combines horizons and therefore must not be read as Marion's stronger
"no combination of horizons" claim.
-/
theorem expandingDependentConditioning_no_finite_conditioning_cover
    (hs : List Nat) :
    ¬ (∀ a, expandingDependentConditioning.base.presents () a →
      ∃ h, h ∈ hs ∧ expandingDependentConditioning.conditions () h ∧
        expandingDependentConditioning.base.admits h a) := by
  intro hcover
  apply expandingModel_no_finite_list_cover hs
  intro a ha
  rcases hcover a ha with ⟨h, hh, _, hadmits⟩
  exact ⟨h, hh, hadmits⟩

/--
Project-level open-horizon guardrail for the first question.

There is an actual structured appearance for which `situated` and `conditions`
coincide, every horizon is positively both related and conditioning, the
appearance is nevertheless `NonExhaustible`, and every finite list of
conditioning horizons still fails to cover all encoded aspects.

This reverse-checks the strongest simple conditioning reading against the
finite-family baseline. It does **not** formalize a semantic combination of
horizons, and therefore does not identify the witness with Marion's strongest
saturation case.
-/
theorem first_question_open_mutual_conditioning_no_finite_cover :
    ∃ M : HorizonConditioning, ∃ p : M.base.Phenomenon,
      M.base.appears p ∧
        M.base.Structured p ∧
          M.ConditioningIsSituated ∧
            M.SituatedImpliesConditioning ∧
              M.base.NonExhaustible p ∧
                (∀ h : M.base.Horizon,
                  M.base.situated p h ∧ M.conditions p h) ∧
                  ∀ hs : List M.base.Horizon,
                    ¬ (∀ a, M.base.presents p a →
                      ∃ h, h ∈ hs ∧ M.conditions p h ∧ M.base.admits h a) := by
  refine ⟨expandingDependentConditioning, (), True.intro, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · exact expandingModel_structure () True.intro
  · exact expandingDependentConditioning_mutual.1
  · exact expandingDependentConditioning_mutual.2
  · intro h _
    exact expandingModel_no_horizon_exhausts h
  · intro h
    exact ⟨True.intro, True.intro⟩
  · intro hs
    exact expandingDependentConditioning_no_finite_conditioning_cover hs

end FormalPhenomenology
