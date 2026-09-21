import FormalPhenomenology.FirstQuestionRobustness

set_option autoImplicit false

namespace FormalPhenomenology
open Presentation

/--
The existential finite-family + dominator package is exactly as strong as the existing
single-horizon `Captured` predicate.

The forward direction uses a singleton family containing the capturing horizon itself;
the reverse direction is the already verified finite-family dominator theorem.  Thus,
when the finite family is existentially chosen, the dominator package should not be
read as a new plural-horizon notion: its extra structure collapses extensionally back
to single-horizon capture.

This is a FORMAL quantifier/encoding guardrail only.  In particular, a `List Horizon`
is not identified with Marion's historical "combination of horizons", and the theorem
adds no philosophical attribution or horizon-combination primitive.
-/
theorem first_question_captured_iff_exists_finite_family_with_dominator
    (M : Presentation) (p : M.Phenomenon) :
    M.Captured p ↔
      ∃ hs : List M.Horizon,
        (∀ a, M.presents p a →
          ∃ h, h ∈ hs ∧ M.situated p h ∧ M.admits h a) ∧
        ∃ hStar, M.situated p hStar ∧
          ∀ h, h ∈ hs → ∀ a, M.admits h a → M.admits hStar a := by
  constructor
  · rintro ⟨hStar, hsituated, hexhausts⟩
    refine ⟨[hStar], ?_, ⟨hStar, hsituated, ?_⟩⟩
    · intro a ha
      exact ⟨hStar, Or.inl rfl, hsituated, hexhausts a ha⟩
    · intro h hh a hadmits
      rcases hh with hEq | hNil
      · cases hEq
        exact hadmits
      · exact False.elim hNil
  · rintro ⟨hs, hcover, hdom⟩
    exact first_question_finite_family_cover_with_dominator_implies_capture
      M p hs hcover hdom

end FormalPhenomenology
