import FormalPhenomenology.FirstQuestionFiniteFamily

set_option autoImplicit false

namespace FormalPhenomenology
open Presentation

/--
A finite related-horizon cover collapses to the existing single-horizon `Captured`
notion when the situated horizons are pairwise closed upward with respect to the
`admits` relation.

The pairwise premise is deliberately written as an explicit relation-level assumption
rather than a new philosophical primitive.  It says that for any two situated
horizons there is another situated horizon admitting every aspect admitted by either
one.  Finite induction then produces one situated dominator for the whole named
family, after which `first_question_finite_family_cover_with_dominator_implies_capture`
applies.

This is a FORMAL guardrail only.  The upper-bound property is not attributed to
Merleau-Ponty or Marion, and it is not identified with Marion's historical language
of a "combination of horizons".  It records one precise extra structural premise
under which plural finite coverage becomes single-horizon exhaustive capture.
-/
theorem first_question_finite_family_pairwise_upper_bounds_imply_capture
    (M : Presentation) (p : M.Phenomenon) (hs : List M.Horizon)
    (hne : hs ≠ [])
    (hsituated : ∀ h, h ∈ hs → M.situated p h)
    (hupper : ∀ h₀ h₁,
      M.situated p h₀ → M.situated p h₁ →
        ∃ hStar, M.situated p hStar ∧
          (∀ a, M.admits h₀ a → M.admits hStar a) ∧
          (∀ a, M.admits h₁ a → M.admits hStar a))
    (hcover : ∀ a, M.presents p a →
      ∃ h, h ∈ hs ∧ M.admits h a) :
    M.Captured p := by
  have hdom :
      ∀ xs : List M.Horizon,
        xs ≠ [] →
          (∀ h, h ∈ xs → M.situated p h) →
            ∃ hStar, M.situated p hStar ∧
              ∀ h, h ∈ xs → ∀ a, M.admits h a → M.admits hStar a := by
    intro xs
    induction xs with
    | nil =>
        intro hne' _
        exact (hne' rfl).elim
    | cons h t ih =>
        intro _ hst
        have hh : M.situated p h := hst h (List.Mem.head t)
        cases t with
        | nil =>
            refine ⟨h, hh, ?_⟩
            intro h' hm a ha
            cases hm with
            | head => exact ha
            | tail _ hNil => cases hNil
        | cons h₂ t₂ =>
            have htail : ∀ h', h' ∈ h₂ :: t₂ → M.situated p h' := by
              intro h' hm
              exact hst h' (List.Mem.tail h hm)
            have htailNonempty : h₂ :: t₂ ≠ [] := by
              intro hEq
              cases hEq
            rcases ih htailNonempty htail with ⟨hTail, hTailSit, hTailDom⟩
            rcases hupper h hTail hh hTailSit with
              ⟨hStar, hStarSit, hHead, hTailUp⟩
            refine ⟨hStar, hStarSit, ?_⟩
            intro h' hm a ha
            cases hm with
            | head => exact hHead a ha
            | tail _ hmTail => exact hTailUp a (hTailDom h' hmTail a ha)
  apply first_question_finite_family_cover_with_dominator_implies_capture M p hs
  · intro a ha
    rcases hcover a ha with ⟨h, hm, hadmits⟩
    exact ⟨h, hm, hsituated h hm, hadmits⟩
  · exact hdom hs hne hsituated

/--
Consequently, if a non-exhaustible phenomenon is nevertheless covered by a nonempty
finite family of situated horizons, then the situated-horizon domain cannot satisfy
the pairwise upper-bound property above.

This is the contrapositive obstruction corresponding to
`first_question_finite_family_pairwise_upper_bounds_imply_capture`.  It sharpens the
finite-family boundary without introducing a semantic horizon-combination operator:
the failure is located in an explicit closure property of the current `admits`
relation.
-/
theorem first_question_nonExhaustible_finite_cover_refutes_pairwise_upper_bounds
    (M : Presentation) (p : M.Phenomenon) (hs : List M.Horizon)
    (hne : hs ≠ [])
    (hsituated : ∀ h, h ∈ hs → M.situated p h)
    (hn : M.NonExhaustible p)
    (hcover : ∀ a, M.presents p a →
      ∃ h, h ∈ hs ∧ M.admits h a) :
    ¬ (∀ h₀ h₁,
      M.situated p h₀ → M.situated p h₁ →
        ∃ hStar, M.situated p hStar ∧
          (∀ a, M.admits h₀ a → M.admits hStar a) ∧
          (∀ a, M.admits h₁ a → M.admits hStar a)) := by
  intro hupper
  have hc := first_question_finite_family_pairwise_upper_bounds_imply_capture
    M p hs hne hsituated hupper hcover
  exact ((nonExhaustible_iff_not_captured M p).mp hn) hc

end FormalPhenomenology
