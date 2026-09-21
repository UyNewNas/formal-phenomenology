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

/--
A stronger project-level pressure test for the conditioning reading of the first
question.

The first conjunct exhibits an actually appearing, structured phenomenon that is
*positively* conditioned by a horizon and nevertheless remains non-exhaustible, even
when `situated` and `conditions` coincide extensionally in both directions and
universal horizon structure holds.  The second conjunct records the corresponding
implication-level counterexample: under those same assumptions, actual conditioning
does not force `Captured`.

This rules out the simple objection that the horizon/exhaustibility separation is an
artifact of leaving the conditioning predicate free or using only the negative
`Independent` predicate.  It is still a theorem about the current relation language,
not an identification of `Conditioned`, `Captured`, or `NonExhaustible` with Marion's
full saturated-phenomenon vocabulary.
-/
theorem first_question_positive_conditioning_robustness :
    (∃ M : HorizonConditioning,
      M.base.UniversalStructure ∧
        M.ConditioningIsSituated ∧
          M.SituatedImpliesConditioning ∧
            ∃ p, M.base.appears p ∧
              M.base.Structured p ∧
                M.Conditioned p ∧
                  M.base.NonExhaustible p) ∧
      (¬ (∀ M : HorizonConditioning,
        M.base.UniversalStructure →
          M.ConditioningIsSituated →
            M.SituatedImpliesConditioning →
              ∀ p, M.base.appears p →
                M.Conditioned p →
                  M.base.Captured p)) := by
  constructor
  · exact mutualSituatedConditioning_allows_conditioned_situatedExcess
  · exact mutualSituatedConditioning_conditioned_does_not_force_capture

end FormalPhenomenology
