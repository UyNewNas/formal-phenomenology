import FormalPhenomenology.Models.HorizonExtension

set_option autoImplicit false

namespace FormalPhenomenology
open Presentation

/--
A domain-extension guardrail for the first horizon question.

The open natural-number model defeats every finite list of its currently available
horizons.  The completed model preserves the admission behaviour of every one of
those old finite horizons exactly, yet adding one new ideal horizon (`none`) makes
universal capture possible.

So failure of every *finite named family* in the present horizon domain is not by
itself invariant under enlargement of that domain.  This is the precise formal
reason not to identify `expandingModel_no_finite_list_cover` with a historical
claim that no possible/ideal horizon or horizon-combination could ever exhaust a
phenomenon.

This theorem introduces no new primitive or model and makes no attribution to
Merleau-Ponty or Marion.  It packages three already verified results so the
quantifier/domain boundary is explicit at the project-level first-question API.
-/
theorem first_question_finite_named_horizon_failure_is_domain_relative :
    (∀ n a : Nat,
      completedModel.admits (some n) a ↔ expandingModel.admits n a) ∧
      (∀ hs : List Nat,
        ¬ (∀ a, expandingModel.presents () a →
          ∃ h, h ∈ hs ∧ expandingModel.admits h a)) ∧
      completedModel.UniversalCapture := by
  constructor
  · intro n a
    exact finite_horizon_agrees n a
  constructor
  · intro hs
    exact expandingModel_no_finite_list_cover hs
  · exact completedModel_capture

end FormalPhenomenology
