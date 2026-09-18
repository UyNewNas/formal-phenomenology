import FormalPhenomenology.ConstructiveBridge

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

/--
The constructive boundary behind the conditioning half of the first question.

Producing an actual conditioning-horizon witness for every appearing captured
phenomenon is exactly the conjunction of the already identified conflict
exclusion and double-negation stability of `Conditioned` on that same
appearing/captured domain.  This is a FORMAL proof-theoretic packaging theorem;
it makes no claim that historical phenomenology supplies such stability.
-/
theorem first_question_witness_boundary (M : HorizonConditioning) :
    (∀ p, M.base.appears p → M.base.Captured p → M.Conditioned p) ↔
      ((∀ p, M.base.appears p → M.base.Captured p → ¬ M.Independent p) ∧
       (∀ p, M.base.appears p → M.base.Captured p →
         (¬ ¬ M.Conditioned p → M.Conditioned p))) := by
  exact appearing_witness_bridge_iff_exact_and_captured_stability M

/--
A project-level compatibility witness for the interpretive boundary used by the
first question.

There is a model in which conditioning horizons, when present, are required to
be related horizons, while an actually appearing phenomenon still has a related
horizon, is horizon-independent in the weak `conditions` sense, and is not
exhausted by any related horizon.  This is only a thin re-export of the already
verified finite-model theorem.  It does not identify this profile with Marion's
full saturated phenomenon and makes no historical attribution.
-/
theorem first_question_compatibility_witness :
    ∃ M : HorizonConditioning,
      M.ConditioningIsSituated ∧ M.HasSituatedIndependentExcess := by
  exact related_independent_nonExhaustible_are_jointly_consistent

end FormalPhenomenology
