import FormalPhenomenology.ConditioningBoundary
import FormalPhenomenology.FirstQuestion
import FormalPhenomenology.Models.OpenHorizon

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

/--
Aspectwise horizon coverage is strictly weaker than coverage by one fixed pair of
related horizons in the current aspect language.

The witness is the already-existing open natural-number chain `expandingModel`:
every aspect is admitted by some larger horizon, but for any two named horizons the
diagonal aspect `max h₀ h₁` is admitted by neither.  This theorem therefore separates
"the horizon may vary with the aspect" from "two fixed horizons suffice" without
introducing a horizon-combination operation or another model family.

This is a FORMAL quantifier guardrail only.  It does not identify the open chain with
Marion's several-horizon or no-combination figures; those historical mappings remain
source-controlled.
-/
theorem first_question_aspectwise_cover_need_not_have_fixed_pair :
    ∃ M : Presentation, ∃ p : M.Phenomenon,
      M.appears p ∧ M.IndividuallyCoverable p ∧
        ¬ ∃ h₀ h₁ : M.Horizon,
          M.situated p h₀ ∧ M.situated p h₁ ∧
            ∀ a, M.presents p a → (M.admits h₀ a ∨ M.admits h₁ a) := by
  refine ⟨expandingModel, (), True.intro, expandingModel_individual, ?_⟩
  rintro ⟨h₀, h₁, _, _, hcover⟩
  exact expandingModel_no_fixed_pair_cover h₀ h₁ hcover

/--
Aspectwise horizon coverage can hold even though no finite list of related horizons
covers every presented aspect.

This strengthens the fixed-pair guardrail to an arbitrary finite list by reusing the
open natural-number chain.  It closes a pure quantifier gap in the current relation
language; list membership is only a finite-family encoding and is not a horizon-
combination operation.  In particular, this theorem is not identified with Marion's
stronger historical claim about combinations of horizons.
-/
theorem first_question_aspectwise_cover_need_not_have_finite_family :
    ∃ M : Presentation, ∃ p : M.Phenomenon,
      M.appears p ∧ M.IndividuallyCoverable p ∧
        ∀ hs : List M.Horizon,
          ¬ (∀ a, M.presents p a →
            ∃ h, h ∈ hs ∧ M.situated p h ∧ M.admits h a) := by
  refine ⟨expandingModel, (), True.intro, expandingModel_individual, ?_⟩
  intro hs hcover
  apply expandingModel_no_finite_list_cover hs
  intro a ha
  rcases hcover a ha with ⟨h, hh, _, hadmits⟩
  exact ⟨h, hh, hadmits⟩

/--
The open-chain witness simultaneously realizes the three notions that matter for the
first question's quantifier boundary: it actually appears, it is non-exhaustible by
any single situated horizon, and every individual aspect is nevertheless covered by
some situated horizon; moreover no finite list of situated horizons covers all of its
presented aspects.

This packages already verified facts about `expandingModel` into one project-facing
witness.  It does not treat a finite list as a semantic horizon combination, and it
therefore remains weaker than Marion's strongest historical no-combination figure.
-/
theorem first_question_nonExhaustible_aspectwise_cover_has_no_finite_family :
    ∃ M : Presentation, ∃ p : M.Phenomenon,
      M.appears p ∧ M.NonExhaustible p ∧ M.IndividuallyCoverable p ∧
        ∀ hs : List M.Horizon,
          ¬ (∀ a, M.presents p a →
            ∃ h, h ∈ hs ∧ M.situated p h ∧ M.admits h a) := by
  refine ⟨expandingModel, (), True.intro, ?_, expandingModel_individual, ?_⟩
  · intro h _
    exact expandingModel_no_horizon_exhausts h
  · intro hs hcover
    apply expandingModel_no_finite_list_cover hs
    intro a ha
    rcases hcover a ha with ⟨h, hh, _, hadmits⟩
    exact ⟨h, hh, hadmits⟩

/--
A finite family of related horizons jointly covering all presented aspects does become
sufficient for single-horizon `Captured` once one adds an explicit *dominating situated
horizon*: a situated horizon that admits every aspect admitted by any member of the
family.

This is the positive companion to the finite-family non-implication above.  It isolates
a concrete extra premise under which plural horizon coverage can be collapsed to the
existing single-horizon capture notion, without introducing a new combination
operator.  The premise is purely FORMAL and is not attributed to Merleau-Ponty or
Marion; in particular, it must not be read as a formalization of Marion's historical
"combination of horizons" phrase without further source work.
-/
theorem first_question_finite_family_cover_with_dominator_implies_capture
    (M : Presentation) (p : M.Phenomenon) (hs : List M.Horizon)
    (hcover : ∀ a, M.presents p a →
      ∃ h, h ∈ hs ∧ M.situated p h ∧ M.admits h a)
    (hdom : ∃ hStar, M.situated p hStar ∧
      ∀ h, h ∈ hs → ∀ a, M.admits h a → M.admits hStar a) :
    M.Captured p := by
  rcases hdom with ⟨hStar, hsituated, hdominates⟩
  refine ⟨hStar, hsituated, ?_⟩
  intro a ha
  rcases hcover a ha with ⟨h, hh, _, hadmits⟩
  exact hdominates h hh a hadmits

end FormalPhenomenology
