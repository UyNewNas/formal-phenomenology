import FormalPhenomenology.FirstQuestionClosureBoundary

set_option autoImplicit false

namespace FormalPhenomenology
open Presentation

/--
Under `UniversalStructure`, the repository's technical `ClosureBridge` predicate is exactly the
question-shaped statement that every actually appearing phenomenon is positively `Captured`.

The forward direction uses `UniversalStructure` only to discharge the `Structured p` premise
required by `ClosureBridge`.  The reverse direction is immediate because a positive capture
statement on all appearances is stronger than the bridge's appearance-plus-structure domain.

This is a FORMAL normalization theorem for the current encoding.  It introduces no new
philosophical primitive, classical principle, or historical attribution, and it must not be read
as identifying `Captured` with Marion's saturated phenomenon.
-/
theorem first_question_universalStructure_closureBridge_iff_appearance_capture
    (M : Presentation) (hStructure : M.UniversalStructure) :
    M.ClosureBridge ↔ ∀ p, M.appears p → M.Captured p := by
  constructor
  · intro hClosure p hp
    exact hClosure p hp (hStructure p hp)
  · intro hCapture p hp _
    exact hCapture p hp

/--
Exact constructive boundary for the question-shaped closure claim once `UniversalStructure`
is fixed.

Combining the normalization above with the existing constructive closure audit shows that the
positive bridge is equivalent to precisely two ingredients on the actual-appearance domain:
there is no situated non-exhaustible counterexample, and `Captured` is double-negation stable.
No stronger global stability or decidability premise is required.

This theorem is only a composition of already audited FORMAL results.  It introduces no new
philosophical primitive or historical attribution.  In particular, the stability conjunct is a
proof-theoretic premise of this constructive encoding, not a claim about Merleau-Ponty or Marion.
-/
theorem first_question_universalStructure_closureBridge_iff_no_situatedExcess_and_stability
    (M : Presentation) (hStructure : M.UniversalStructure) :
    M.ClosureBridge ↔
      (¬ M.HasSituatedExcess) ∧
        (∀ p, M.appears p → (¬ ¬ M.Captured p → M.Captured p)) := by
  exact
    (first_question_universalStructure_closureBridge_iff_appearance_capture M hStructure).trans
      (first_question_universalStructure_appearance_capture_iff_no_situatedExcess_and_stability
        M hStructure)

end FormalPhenomenology
