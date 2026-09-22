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

end FormalPhenomenology
