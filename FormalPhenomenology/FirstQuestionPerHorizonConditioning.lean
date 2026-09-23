import FormalPhenomenology.FirstQuestionNonvacuousConditioning

set_option autoImplicit false

namespace FormalPhenomenology
open Presentation HorizonConditioning

/--
A direct horizon-by-horizon pressure test for the first question.

The existing `splitDependentConditioning` model has one actual appearance and two
partial horizons.  Every horizon is related to that appearance and every horizon
conditions it, yet no horizon exhausts it.  Thus even the strongest simple reading
available in the current relation language -- `situated` and `conditions` both holding
for every admitted horizon -- does not by itself manufacture an exhaustive horizon.

This theorem is only a FORMAL model-theoretic guardrail.  It does not identify
`conditions` with a historical philosopher's full notion of horizon and it does not
identify `NonExhaustible` with Marion's saturated phenomenon.
-/
theorem first_question_every_related_conditioning_horizon_still_nonexhaustive :
    ∃ M : HorizonConditioning, ∃ p : M.base.Phenomenon,
      M.base.appears p ∧
        M.base.Structured p ∧
          ∀ h : M.base.Horizon,
            M.base.situated p h ∧ M.conditions p h ∧ ¬ M.base.Exhausts p h := by
  refine ⟨splitDependentConditioning, (), True.intro,
    splitModel_structure () True.intro, ?_⟩
  intro h
  refine ⟨True.intro, True.intro, ?_⟩
  exact splitDependentConditioning_nonExhaustible h True.intro

end FormalPhenomenology
