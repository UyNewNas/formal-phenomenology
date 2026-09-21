import FormalPhenomenology.Models.Conditioning

set_option autoImplicit false

namespace FormalPhenomenology
open Presentation HorizonConditioning

/--
The weak project predicate `Independent` does not decide exhaustibility.

One already-verified finite model has an actually appearing, structured,
`Independent` phenomenon that is nevertheless `Captured`; another already-
verified finite model has an actually appearing, structured, `Independent`
phenomenon that is `NonExhaustible`.  Packaging both witnesses at one entry
point makes the interpretation boundary explicit: absence of a project-level
`conditions` witness is not by itself either exhaustive capture or failure of
exhaustive capture.

This theorem introduces no model, primitive, logical principle, or historical
attribution.  In particular it does not identify the repository's weak
`Independent` predicate with Marion's complete saturated-phenomenon account.
-/
theorem first_question_weak_independence_underdetermines_exhaustibility :
    (∃ M : HorizonConditioning, ∃ p : M.base.Phenomenon,
      M.base.appears p ∧ M.base.Structured p ∧
        M.Independent p ∧ M.base.Captured p) ∧
      (∃ M : HorizonConditioning, ∃ p : M.base.Phenomenon,
        M.base.appears p ∧ M.base.Structured p ∧
          M.Independent p ∧ M.base.NonExhaustible p) := by
  constructor
  · exact related_independent_captured_are_jointly_consistent
  · rcases related_independent_nonExhaustible_are_jointly_consistent with
      ⟨M, _, hexcess⟩
    rcases hexcess with ⟨p, hp, hs, hi, hn⟩
    exact ⟨M, p, hp, hs, hi, hn⟩

/--
In the current relation language, the *polarity* of the separate conditioning
relation does not determine single-horizon exhaustibility, even after requiring
conditioning horizons to be related horizons.

The four witnesses are all actually appearing and structured.  Two are
positively `Conditioned`, one `Captured` and one `NonExhaustible`; two are
`Independent`, again one on each side of the same exhaustibility boundary.
Every witness also satisfies `ConditioningIsSituated`.

This is an interpretation guardrail, not a new philosophical primitive and not
a historical attribution.  It reuses the existing finite models to make the
model freedom explicit: without an additional bridge tying `conditions` to
exhaustive capture, neither presence nor absence of a conditioning witness can
by itself settle the first question.
-/
theorem first_question_conditioning_polarity_underdetermines_exhaustibility :
    (∃ M : HorizonConditioning, ∃ p : M.base.Phenomenon,
      M.ConditioningIsSituated ∧ M.base.appears p ∧ M.base.Structured p ∧
        M.Conditioned p ∧ M.base.Captured p) ∧
      (∃ M : HorizonConditioning, ∃ p : M.base.Phenomenon,
        M.ConditioningIsSituated ∧ M.base.appears p ∧ M.base.Structured p ∧
          M.Conditioned p ∧ M.base.NonExhaustible p) ∧
      (∃ M : HorizonConditioning, ∃ p : M.base.Phenomenon,
        M.ConditioningIsSituated ∧ M.base.appears p ∧ M.base.Structured p ∧
          M.Independent p ∧ M.base.Captured p) ∧
      (∃ M : HorizonConditioning, ∃ p : M.base.Phenomenon,
        M.ConditioningIsSituated ∧ M.base.appears p ∧ M.base.Structured p ∧
          M.Independent p ∧ M.base.NonExhaustible p) := by
  constructor
  · refine ⟨displacedCaptureConditioning, (), ?_, True.intro, ?_, ?_, ?_⟩
    · intro _ _ _
      exact True.intro
    · exact ⟨false, True.intro⟩
    · exact ⟨true, rfl⟩
    · refine ⟨false, True.intro, ?_⟩
      intro a _
      cases a
      rfl
  constructor
  · refine ⟨splitDependentConditioning, (), ?_, True.intro, ?_, ?_,
      splitDependentConditioning_nonExhaustible⟩
    · intro _ _ _
      exact True.intro
    · exact splitModel_structure () True.intro
    · exact ⟨false, True.intro⟩
  constructor
  · refine ⟨closedIndependentConditioning, (), ?_, True.intro, ?_,
      closedIndependentConditioning_independent,
      closedIndependentConditioning_capture⟩
    · intro _ _ hf
      exact False.elim hf
    · exact ⟨(), True.intro⟩
  · rcases related_independent_nonExhaustible_are_jointly_consistent with
      ⟨M, hcoherent, p, hp, hs, hi, hn⟩
    exact ⟨M, p, hcoherent, hp, hs, hi, hn⟩

/--
Positive horizon-conditioning still does not determine exhaustibility even after
removing the simplest free-relation objection: in both witnesses the project
relations `situated` and `conditions` coincide extensionally in both directions.

The captured witness uses the already-verified `closedModel` and marks its sole
horizon as conditioning; the non-exhaustible witness reuses
`splitDependentConditioning`, where every horizon is both situated and
conditioning.  No new primitive or historical attribution is introduced.

This is a model-theoretic pressure test only.  It does not identify either
witness with a Marionian saturated phenomenon, nor does it assert that any
historical account equates horizon relatedness with horizon conditioning.
-/
theorem first_question_mutual_conditioning_positive_polarity_underdetermines_exhaustibility :
    (∃ M : HorizonConditioning, ∃ p : M.base.Phenomenon,
      M.base.UniversalStructure ∧ M.ConditioningIsSituated ∧
        M.SituatedImpliesConditioning ∧ M.base.appears p ∧
          M.base.Structured p ∧ M.Conditioned p ∧ M.base.Captured p) ∧
      (∃ M : HorizonConditioning, ∃ p : M.base.Phenomenon,
        M.base.UniversalStructure ∧ M.ConditioningIsSituated ∧
          M.SituatedImpliesConditioning ∧ M.base.appears p ∧
            M.base.Structured p ∧ M.Conditioned p ∧
              M.base.NonExhaustible p) := by
  constructor
  · let M : HorizonConditioning :=
      { base := closedModel
        conditions := fun _ _ => True }
    refine ⟨M, (), ?_, ?_, ?_, True.intro, ?_, ?_, ?_⟩
    · intro _ _
      exact ⟨(), True.intro⟩
    · intro _ _ _
      exact True.intro
    · intro _ _ _
      exact True.intro
    · exact ⟨(), True.intro⟩
    · exact ⟨(), True.intro⟩
    · exact closedModel_capture () True.intro
  · refine ⟨splitDependentConditioning, (), splitModel_structure, ?_, ?_,
      True.intro, ?_, ?_, splitDependentConditioning_nonExhaustible⟩
    · intro _ _ _
      exact True.intro
    · intro _ _ _
      exact True.intro
    · exact splitModel_structure () True.intro
    · exact ⟨false, True.intro⟩

end FormalPhenomenology
