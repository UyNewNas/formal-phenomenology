import FormalPhenomenology.Horizon.Conditioning

set_option autoImplicit false

namespace FormalPhenomenology
open Presentation HorizonConditioning

/--
If the current `situated` and `conditions` relations are explicitly assumed to
coincide in both directions, then positive existential conditioning is exactly
encoded horizon structure.

This is the positive companion to
`mutualSituatedConditioning_independent_iff_notStructured`.  It closes the
simple polarity check for the mutual-identification pressure test without
adding a model, primitive, classical principle, or historical attribution.
In particular, it does not say that Merleau-Ponty or Marion identifies
horizonal relatedness with conditioning; the two implications remain explicit
hypotheses.
-/
theorem first_question_mutual_conditioning_conditioned_iff_structured
    (M : HorizonConditioning)
    (hForward : M.SituatedImpliesConditioning)
    (hBackward : M.ConditioningIsSituated)
    (p : M.base.Phenomenon) :
    M.Conditioned p ↔ M.base.Structured p := by
  constructor
  · intro hConditioned
    exact conditioningIsSituated_conditioned_implies_structured
      M hBackward p hConditioned
  · rintro ⟨h, hSituated⟩
    exact ⟨h, hForward p h hSituated⟩

end FormalPhenomenology
