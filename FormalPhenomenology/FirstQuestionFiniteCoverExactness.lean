import FormalPhenomenology.FirstQuestionFiniteUpperBounds

set_option autoImplicit false

namespace FormalPhenomenology
open Presentation

/--
Under the pairwise situated upper-bound assumption, single-horizon capture is
exactly equivalent to the existence of a nonempty finite situated family that jointly
covers all presented aspects.

The forward direction uses the capturing horizon as a singleton family; the reverse
direction is `first_question_finite_family_pairwise_upper_bounds_imply_capture`.
Thus, once pairwise upper bounds are supplied, the remaining content needed for
capture is finite coverage of the presented aspect-domain rather than directedness by
itself.

This is a FORMAL encoding guardrail only.  The finite family and the pairwise
`admits` upper-bound relation are not identified with Marion's historical language of
a "combination of horizons".
-/
theorem first_question_captured_iff_nonempty_finite_situated_cover_of_pairwise_upper_bounds
    (M : Presentation) (p : M.Phenomenon)
    (hupper : ∀ h₀ h₁,
      M.situated p h₀ → M.situated p h₁ →
        ∃ hStar, M.situated p hStar ∧
          (∀ a, M.admits h₀ a → M.admits hStar a) ∧
          (∀ a, M.admits h₁ a → M.admits hStar a)) :
    M.Captured p ↔
      ∃ hs : List M.Horizon,
        hs ≠ [] ∧
        (∀ h, h ∈ hs → M.situated p h) ∧
        (∀ a, M.presents p a →
          ∃ h, h ∈ hs ∧ M.admits h a) := by
  constructor
  · rintro ⟨hStar, hsituated, hexhausts⟩
    refine ⟨[hStar], ?_, ?_, ?_⟩
    · intro hNil
      cases hNil
    · intro h hh
      cases hh with
      | head => exact hsituated
      | tail _ hNil => cases hNil
    · intro a ha
      exact ⟨hStar, List.Mem.head _, hexhausts a ha⟩
  · rintro ⟨hs, hne, hsituated, hcover⟩
    exact first_question_finite_family_pairwise_upper_bounds_imply_capture
      M p hs hne hsituated hupper hcover

/--
With pairwise situated upper bounds available on every appearing structured
phenomenon, the project-level `ClosureBridge` is exactly finite coverability by
situated horizons.

The reverse implication is the existing finite-cover upper-bound theorem.  The
forward implication normalizes each capture witness to a singleton cover.  This
sharpens the finite-directedness reverse check: under the explicit upper-bound
premise, finite coverage--not finite directedness by itself--is precisely the remaining
B-level content.

No historical claim is attached to this premise.  In particular, neither a finite
`List Horizon` nor an `admits` upper bound is identified with Marion's semantic notion
of a horizon combination.
-/
theorem first_question_closureBridge_iff_finite_cover_of_pairwise_upper_bounds
    (M : Presentation)
    (hupper : ∀ p, M.appears p → M.Structured p →
      ∀ h₀ h₁,
        M.situated p h₀ → M.situated p h₁ →
          ∃ hStar, M.situated p hStar ∧
            (∀ a, M.admits h₀ a → M.admits hStar a) ∧
            (∀ a, M.admits h₁ a → M.admits hStar a)) :
    M.ClosureBridge ↔
      ∀ p, M.appears p → M.Structured p →
        ∃ hs : List M.Horizon,
          hs ≠ [] ∧
          (∀ h, h ∈ hs → M.situated p h) ∧
          (∀ a, M.presents p a →
            ∃ h, h ∈ hs ∧ M.admits h a) := by
  constructor
  · intro hBridge p happ hstructured
    have hCaptured : M.Captured p := hBridge p happ hstructured
    exact
      (first_question_captured_iff_nonempty_finite_situated_cover_of_pairwise_upper_bounds
        M p (hupper p happ hstructured)).1 hCaptured
  · intro hcover
    exact first_question_finite_cover_pairwise_upper_bounds_imply_closureBridge
      M hcover hupper

end FormalPhenomenology
