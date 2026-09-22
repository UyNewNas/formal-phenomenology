import FormalPhenomenology.FirstQuestionFiniteUpperBounds
import FormalPhenomenology.Models.OpenHorizon

set_option autoImplicit false

namespace FormalPhenomenology
open Presentation

/--
Finite directedness of the situated-horizon domain, even together with universal
horizon structure, does not imply the first question's `ClosureBridge`.

The witness is the already verified open natural-number model.  Every finite list of
its horizons has a situated common `admits`-dominator, yet the unique appearing
phenomenon remains non-exhaustible.  Thus the missing ingredient in the positive
finite-upper-bound route is not finite directedness itself, but a finite family that
already covers the whole presented aspect-domain (or some genuinely global
completion witness).

This theorem is a FORMAL reverse-check only.  It introduces no horizon-combination
primitive and does not identify finite directedness with Marion's historical language
of a "combination of horizons".
-/
theorem first_question_finite_directedness_does_not_imply_closureBridge :
    ∃ M : Presentation,
      M.UniversalStructure ∧
      (∀ p, M.appears p →
        ∀ hs : List M.Horizon,
          ∃ k, M.situated p k ∧
            ∀ h, h ∈ hs → ∀ a,
              M.admits h a → M.admits k a) ∧
      ¬ M.ClosureBridge := by
  refine ⟨expandingModel, expandingModel_structure, ?_, ?_⟩
  · intro p _ hs
    cases p
    exact expandingModel_finite_list_has_dominator hs
  · intro hBridge
    exact structure_bridge_excess_inconsistent
      expandingModel expandingModel_structure hBridge expandingModel_excess

end FormalPhenomenology
