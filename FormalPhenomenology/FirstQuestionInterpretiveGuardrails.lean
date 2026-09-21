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

end FormalPhenomenology
