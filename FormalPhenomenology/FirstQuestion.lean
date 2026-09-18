import FormalPhenomenology.Models.Conditioning

set_option autoImplicit false

namespace FormalPhenomenology
open Presentation HorizonConditioning

/--
A single formal entry point for the first research question.

The first conjunct records the negative answer to the bare horizon question:
having a horizon structure for every appearing phenomenon does not, by itself,
entail an exhaustive-capture bridge.

The second conjunct records the exact condition for the conditioning variant on
the domain actually mentioned by the question: horizon-independence entails
non-exhaustibility for every appearing phenomenon exactly when there is no
appearing phenomenon that is both captured and horizon-independent.

This theorem introduces no new philosophical primitive and makes no historical
attribution.  It only packages two already verified FORMAL results so the first
question has one kernel-checked main statement while the remaining primary-text
gate stays separate.
-/
theorem first_question_formal_answer :
    (¬ (∀ M : Presentation, M.UniversalStructure → M.ClosureBridge)) ∧
      (∀ M : HorizonConditioning,
        (∀ p, M.base.appears p → M.Independent p → M.base.NonExhaustible p) ↔
          ¬ ∃ p, M.base.appears p ∧ M.base.Captured p ∧ M.Independent p) := by
  constructor
  · exact horizon_structure_does_not_entail_closure
  · intro M
    exact appearing_independence_implies_nonExhaustible_iff_no_captured_independent_witness M

end FormalPhenomenology
