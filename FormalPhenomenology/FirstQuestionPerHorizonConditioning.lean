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

/--
A non-vacuity strengthening of the same pressure test.

For the very same actual appearance, every horizon is related and conditioning, every
horizon positively admits at least one presented aspect, and every horizon also misses
at least one presented aspect.  Hence the failure of exhaustive capture in the split
model is not an artefact of empty or wholly uninformative horizons.

This is still only a FORMAL guardrail for the current extensional encoding.  It adds no
semantic operation for combining horizons and makes no historical attribution.
-/
theorem first_question_every_related_conditioning_horizon_is_nontrivially_partial :
    ∃ M : HorizonConditioning, ∃ p : M.base.Phenomenon,
      M.base.appears p ∧
        M.base.Structured p ∧
          ∀ h : M.base.Horizon,
            M.base.situated p h ∧
              M.conditions p h ∧
                (∃ a : M.base.Aspect,
                  M.base.presents p a ∧ M.base.admits h a) ∧
                  (∃ a : M.base.Aspect,
                    M.base.presents p a ∧ ¬ M.base.admits h a) := by
  refine ⟨splitDependentConditioning, (), True.intro,
    splitModel_structure () True.intro, ?_⟩
  intro h
  cases h with
  | false =>
      refine ⟨True.intro, True.intro, ?_, ?_⟩
      · exact ⟨false, True.intro, rfl⟩
      · refine ⟨true, True.intro, ?_⟩
        intro hbad
        cases hbad
  | true =>
      refine ⟨True.intro, True.intro, ?_, ?_⟩
      · exact ⟨true, True.intro, rfl⟩
      · refine ⟨false, True.intro, ?_⟩
        intro hbad
        cases hbad

/--
Package the non-vacuity witness together with the project's actual `NonExhaustible`
predicate.  The same appearing structured phenomenon is non-exhaustible relative to
all situated horizons, while every admitted horizon is itself positively informative
and genuinely partial on the presented-aspect domain.

This is a thin reuse theorem over `splitDependentConditioning`; it adds no new model,
primitive, classical principle, horizon-combination semantics, or historical attribution.
-/
theorem first_question_nontrivially_partial_horizons_support_nonExhaustible :
    ∃ M : HorizonConditioning, ∃ p : M.base.Phenomenon,
      M.base.appears p ∧
        M.base.Structured p ∧
          M.base.NonExhaustible p ∧
            ∀ h : M.base.Horizon,
              M.base.situated p h ∧
                M.conditions p h ∧
                  (∃ a : M.base.Aspect,
                    M.base.presents p a ∧ M.base.admits h a) ∧
                    (∃ a : M.base.Aspect,
                      M.base.presents p a ∧ ¬ M.base.admits h a) := by
  refine ⟨splitDependentConditioning, (), True.intro,
    splitModel_structure () True.intro,
    splitDependentConditioning_nonExhaustible, ?_⟩
  intro h
  cases h with
  | false =>
      refine ⟨True.intro, True.intro, ?_, ?_⟩
      · exact ⟨false, True.intro, rfl⟩
      · refine ⟨true, True.intro, ?_⟩
        intro hbad
        cases hbad
  | true =>
      refine ⟨True.intro, True.intro, ?_, ?_⟩
      · exact ⟨true, True.intro, rfl⟩
      · refine ⟨false, True.intro, ?_⟩
        intro hbad
        cases hbad

/--
A direct non-entailment form of the same pressure test.

Even after restricting to an actually appearing, already structured phenomenon, a
horizon's being both related to the phenomenon and marked as conditioning does not by
itself entail that this very horizon exhausts the phenomenon.  The Boolean split witness
makes the failure local at one concrete horizon rather than only packaging it through
`NonExhaustible` or global `¬ ClosureBridge`.

This is a FORMAL consequence of the existing relation language only.  It does not say
that historical horizon-conditioning is exhausted by `conditions`, and it does not
identify local non-exhaustion with Marion's full saturated-phenomenon notion.
-/
theorem first_question_appearing_structured_related_conditioning_does_not_force_horizon_exhaustion :
    ¬ (∀ (M : HorizonConditioning) (p : M.base.Phenomenon) (h : M.base.Horizon),
      M.base.appears p →
        M.base.Structured p →
          M.base.situated p h →
            M.conditions p h →
              M.base.Exhausts p h) := by
  intro hbridge
  have hexhausts : splitDependentConditioning.base.Exhausts () false :=
    hbridge splitDependentConditioning () false True.intro
      (splitModel_structure () True.intro) True.intro True.intro
  have hnot : ¬ splitDependentConditioning.base.Exhausts () false :=
    splitDependentConditioning_nonExhaustible false True.intro
  exact hnot hexhausts

end FormalPhenomenology