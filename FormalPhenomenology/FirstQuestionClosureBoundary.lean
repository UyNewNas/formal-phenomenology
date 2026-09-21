import FormalPhenomenology.FirstQuestion

set_option autoImplicit false

namespace FormalPhenomenology
open Presentation

/--
Constructive normal form for the *absence* of a situated-excess counterexample.

`¬ HasSituatedExcess` does not by itself construct a capturing horizon.  What it gives,
exactly, is double-negated capture for every actually appearing, structured phenomenon.
The proof uses only the existing equivalence `NonExhaustible p ↔ ¬ Captured p` and does
not introduce a new model, primitive, classical principle, or historical attribution.

This theorem is an encoding/proof-theoretic guardrail for the first question.  In
particular, it prevents the meta-level phrase “no counterexample exists” from being read
constructively as the positive bridge `ClosureBridge` without an additional stability
principle for `Captured`.
-/
theorem first_question_no_situatedExcess_iff_double_negated_capture
    (M : Presentation) :
    (¬ M.HasSituatedExcess) ↔
      ∀ p, M.appears p → M.Structured p → ¬ ¬ M.Captured p := by
  constructor
  · intro hNoExcess p hp hStructured hNotCaptured
    apply hNoExcess
    refine ⟨p, hp, hStructured, ?_⟩
    exact (nonExhaustible_iff_not_captured M p).2 hNotCaptured
  · intro hDouble hExcess
    rcases hExcess with ⟨p, hp, hStructured, hNonExhaustible⟩
    exact (hDouble p hp hStructured)
      ((nonExhaustible_iff_not_captured M p).1 hNonExhaustible)

/--
Exact constructive decomposition of the positive closure bridge.

For the current relation language, `ClosureBridge` is equivalent to two ingredients:

1. there is no actually appearing, structured, non-exhaustible witness; and
2. `Captured` is double-negation stable on the very same appearing/structured domain.

The forward direction makes stability trivial because closure already supplies capture.
The reverse direction first obtains `¬¬ Captured p` from the absence of situated excess,
then uses the localized stability premise to construct the capture witness.

This is a FORMAL theorem about the repository encoding only.  It is not attributed to
Merleau-Ponty or Marion, and it does not identify `Captured` with Marion's saturated
phenomenon or claim that the historical texts provide the required stability principle.
-/
theorem first_question_closureBridge_iff_no_situatedExcess_and_captured_stability
    (M : Presentation) :
    M.ClosureBridge ↔
      (¬ M.HasSituatedExcess) ∧
        (∀ p, M.appears p → M.Structured p →
          (¬ ¬ M.Captured p → M.Captured p)) := by
  constructor
  · intro hClosure
    constructor
    · intro hExcess
      exact (situatedExcess_refutes_closureBridge M hExcess) hClosure
    · intro p hp hStructured _
      exact hClosure p hp hStructured
  · rintro ⟨hNoExcess, hStable⟩ p hp hStructured
    exact hStable p hp hStructured
      ((first_question_no_situatedExcess_iff_double_negated_capture M).1
        hNoExcess p hp hStructured)

end FormalPhenomenology
