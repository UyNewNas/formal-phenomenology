import FormalPhenomenology.ConditioningBoundary
import FormalPhenomenology.FirstQuestion

set_option autoImplicit false

namespace FormalPhenomenology
open Presentation HorizonConditioning

/--
A project-level robustness entry point for the first horizon/exhaustibility question.

The first conjunct is the existing bare result: universal horizon structure does not
entail exhaustive closure.  The second conjunct is a stronger pressure-test in the
conditioning language: even when `situated` and `conditions` coincide extensionally
in both directions, universal horizon structure still does not entail the closure
bridge.

This theorem adds no new model or philosophical primitive.  It only packages two
already verified finite-model separations, so the result cannot be dismissed as an
artifact of leaving the conditioning predicate unconstrained.  It makes no historical
claim that Merleau-Ponty or Marion identifies horizonal relatedness with conditioning.
-/
theorem first_question_mutual_conditioning_robustness :
    (¬ (∀ M : Presentation, M.UniversalStructure → M.ClosureBridge)) ∧
      (¬ (∀ M : HorizonConditioning,
        M.base.UniversalStructure →
          M.ConditioningIsSituated →
            M.SituatedImpliesConditioning →
              M.base.ClosureBridge)) := by
  constructor
  · exact first_question_formal_answer.1
  · exact mutualSituatedConditioning_does_not_force_closure

end FormalPhenomenology
