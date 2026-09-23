import FormalPhenomenology.FirstQuestionFiniteUpperBounds
import FormalPhenomenology.Horizon.Conditioning

set_option autoImplicit false

namespace FormalPhenomenology
open Presentation HorizonConditioning

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

/--
Without any global pairwise-upper-bound hypothesis, the project-level `ClosureBridge`
is exactly the requirement that every appearing structured phenomenon admit some
finite situated cover together with a single situated horizon dominating that chosen
family.

This is the direct lifting of
`first_question_captured_iff_exists_finite_family_with_dominator` to the quantifier
domain used by `ClosureBridge`.  It keeps the strongest baseline visible: existentially
choosing a finite family *with* a common dominator adds no content beyond ordinary
single-horizon capture.  Pairwise upper bounds are only one sufficient mechanism for
producing such a dominator when it is not already supplied.

This is a FORMAL quantifier-normalization result.  The finite family and dominator are
not identified with Marion's historical language of one, several, or a combination of
horizons, and no new philosophical primitive or attribution is introduced.
-/
theorem first_question_closureBridge_iff_exists_finite_family_with_dominator
    (M : Presentation) :
    M.ClosureBridge ↔
      ∀ p, M.appears p → M.Structured p →
        ∃ hs : List M.Horizon,
          (∀ a, M.presents p a →
            ∃ h, h ∈ hs ∧ M.situated p h ∧ M.admits h a) ∧
          ∃ hStar, M.situated p hStar ∧
            ∀ h, h ∈ hs → ∀ a, M.admits h a → M.admits hStar a := by
  constructor
  · intro hBridge p happ hstructured
    exact (first_question_captured_iff_exists_finite_family_with_dominator M p).1
      (hBridge p happ hstructured)
  · intro hpack p happ hstructured
    exact (first_question_captured_iff_exists_finite_family_with_dominator M p).2
      (hpack p happ hstructured)

/--
Under the explicit competing reading where `situated` and `conditions` coincide in
both directions, the same pairwise-upper-bound hypothesis turns finite conditioning
coverage into an exact characterization of single-horizon capture.

The forward direction starts from the existing situated-cover normal form and uses
`SituatedImpliesConditioning` to relabel every member of the singleton/finite cover as
conditioning.  The reverse direction uses `ConditioningIsSituated` to forget the extra
conditioning label and then applies the situated finite-cover theorem above.

This theorem is only a thin FORMAL adapter over the already verified finite-cover
baseline.  It does not identify a finite list with Marion's stronger semantic language
of a combination of horizons, and it does not attribute pairwise upper bounds to any
historical author.
-/
theorem first_question_mutual_conditioning_captured_iff_nonempty_finite_conditioning_cover_of_pairwise_upper_bounds
    (M : HorizonConditioning) (p : M.base.Phenomenon)
    (hForward : M.SituatedImpliesConditioning)
    (hBackward : M.ConditioningIsSituated)
    (hupper : ∀ h₀ h₁,
      M.base.situated p h₀ → M.base.situated p h₁ →
        ∃ hStar, M.base.situated p hStar ∧
          (∀ a, M.base.admits h₀ a → M.base.admits hStar a) ∧
          (∀ a, M.base.admits h₁ a → M.base.admits hStar a)) :
    M.base.Captured p ↔
      ∃ hs : List M.base.Horizon,
        hs ≠ [] ∧
        (∀ h, h ∈ hs → M.conditions p h) ∧
        (∀ a, M.base.presents p a →
          ∃ h, h ∈ hs ∧ M.base.admits h a) := by
  constructor
  · intro hCaptured
    rcases
      (first_question_captured_iff_nonempty_finite_situated_cover_of_pairwise_upper_bounds
        M.base p hupper).1 hCaptured with ⟨hs, hne, hsituated, hcover⟩
    exact ⟨hs, hne, fun h hh => hForward p h (hsituated h hh), hcover⟩
  · rintro ⟨hs, hne, hconditioned, hcover⟩
    apply
      (first_question_captured_iff_nonempty_finite_situated_cover_of_pairwise_upper_bounds
        M.base p hupper).2
    exact ⟨hs, hne, fun h hh => hBackward p h (hconditioned h hh), hcover⟩

end FormalPhenomenology
