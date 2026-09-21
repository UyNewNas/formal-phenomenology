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

/--
A direct quantifier guardrail for the "several horizons" side of the first question.

Even an actually appearing phenomenon whose encoded aspects are all covered by one
fixed pair of distinct related horizons need not be `Captured` by a single related
horizon.  This is only a non-implication in the current aspect language: the pair is
represented by disjunctive coverage and there is no horizon-combination operator.

The theorem is a thin consequence of the already verified split-model witness.  It is
kept separate from historical attribution because secondary reconstructions of
`Being Given` distinguish a multiple-horizon case from the stronger claim that no
combination of horizons can receive an absolutely saturated phenomenon; the present
`NonExhaustible` predicate encodes only failure of single-horizon exhaustion.
-/
theorem first_question_fixed_pair_cover_does_not_force_capture :
    ¬ (∀ (M : Presentation) (p : M.Phenomenon),
      M.appears p →
        (∃ h₀ h₁ : M.Horizon,
          h₀ ≠ h₁ ∧ M.situated p h₀ ∧ M.situated p h₁ ∧
            ∀ a, M.presents p a → (M.admits h₀ a ∨ M.admits h₁ a)) →
          M.Captured p) := by
  intro h
  rcases first_question_two_horizons_can_cover_without_single_horizon_capture with
    ⟨M, p, h₀, h₁, hne, hp, hs₀, hs₁, hn, hcover⟩
  have hc := h M p hp ⟨h₀, h₁, hne, hs₀, hs₁, hcover⟩
  exact ((nonExhaustible_iff_not_captured M p).mp hn) hc

end FormalPhenomenology
