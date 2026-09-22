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

/--
Even after passing to the completed model, no finite list consisting only of the
embedded *old* horizons `some n` covers every presented aspect.

This is the same-object reverse check missing from the cross-model packaging above:
the failure is witnessed inside `completedModel` itself, so it does not rely on
comparing `presents` across two presentations.  The only way the displayed
completion changes capture is by admitting the additional ideal horizon `none`.
-/
theorem completedModel_no_finite_old_horizon_list_cover (hs : List Nat) :
    ¬ (∀ a, completedModel.presents () a →
      ∃ n, n ∈ hs ∧ completedModel.admits (some n) a) := by
  intro hcover
  apply expandingModel_no_finite_list_cover hs
  intro a _
  rcases hcover a True.intro with ⟨n, hn, hadmits⟩
  exact ⟨n, hn, (finite_horizon_agrees n a).mp hadmits⟩

/--
Same-model form of the domain-extension guardrail.

Every finite family drawn from the embedded old horizon domain still fails inside
`completedModel`, while `completedModel` as a whole has universal capture because
it contains the new ideal horizon.  This keeps the relevant phenomenon/aspect model
fixed and isolates the changed quantifier domain as the operative difference.
-/
theorem first_question_domain_extension_same_model_guardrail :
    (∀ hs : List Nat,
      ¬ (∀ a, completedModel.presents () a →
        ∃ n, n ∈ hs ∧ completedModel.admits (some n) a)) ∧
      completedModel.UniversalCapture := by
  constructor
  · intro hs
    exact completedModel_no_finite_old_horizon_list_cover hs
  · exact completedModel_capture

end FormalPhenomenology
