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

/--
The added ideal horizon `none` really does exhaust the unique appearing phenomenon
of `completedModel`.  This is stated separately so the later uniqueness theorem
does not hide the positive witness inside `UniversalCapture`.
-/
theorem completedModel_none_horizon_exhaustive :
    completedModel.Exhausts () none := by
  intro a _
  exact True.intro

/--
No embedded old horizon `some n` exhausts the phenomenon after the domain
extension.  The proof transports any hypothetical exhaustion back through the
exact old-horizon agreement and contradicts the already verified open-model result.
-/
theorem completedModel_some_horizon_not_exhaustive (n : Nat) :
    ¬ completedModel.Exhausts () (some n) := by
  intro hex
  apply expandingModel_no_horizon_exhausts n
  intro a _
  exact (finite_horizon_agrees n a).mp (hex a True.intro)

/--
Exact source of exhaustive capture in the concrete completion: a horizon exhausts
the phenomenon iff it is the newly added ideal horizon `none`.

This strengthens the same-model guardrail without adding any modal claim: it is a
fact only about this explicit `Option Nat` horizon extension.
-/
theorem completedModel_exhaustive_horizon_iff_new (h : Option Nat) :
    completedModel.Exhausts () h ↔ h = none := by
  cases h with
  | none =>
      constructor
      · intro _
        rfl
      · intro _
        exact completedModel_none_horizon_exhaustive
  | some n =>
      constructor
      · intro hex
        exact False.elim (completedModel_some_horizon_not_exhaustive n hex)
      · intro hnone
        cases hnone

/--
Project-level exact-domain-extension guardrail: in the fixed completed presentation,
`none` is not merely one convenient capture witness but the unique exhaustive
horizon, while the model has universal capture.

Hence the change in exhaustibility is localized to the genuinely new horizon in
this witness model.  This remains an encoding pressure test, not an attribution to
Marion's notion of a horizon-combination or an ideal horizon.
-/
theorem first_question_domain_extension_exact_new_horizon_guardrail :
    (∀ h : Option Nat, completedModel.Exhausts () h ↔ h = none) ∧
      completedModel.UniversalCapture := by
  constructor
  · intro h
    exact completedModel_exhaustive_horizon_iff_new h
  · exact completedModel_capture

end FormalPhenomenology
