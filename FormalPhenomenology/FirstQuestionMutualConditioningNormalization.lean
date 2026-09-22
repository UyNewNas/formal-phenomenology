import FormalPhenomenology.Horizon.Conditioning
import FormalPhenomenology.Horizon.SituatedExcess

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

/--
Under the same explicit mutual-identification pressure test, an actually
appearing phenomenon that is conditioned yet non-exhaustible exists exactly
when the base presentation has situated excess.

This is only a profile-level normalization of the previous pointwise theorem.
It is useful because it shows that the positive `Conditioned ∧ NonExhaustible`
witness does not obtain extra historical content merely from the auxiliary
conditioning vocabulary once `situated` and `conditions` are assumed to
coincide.
-/
theorem first_question_mutual_conditioning_conditioned_excess_iff_situatedExcess
    (M : HorizonConditioning)
    (hForward : M.SituatedImpliesConditioning)
    (hBackward : M.ConditioningIsSituated) :
    (∃ p,
        M.base.appears p ∧ M.Conditioned p ∧ M.base.NonExhaustible p) ↔
      M.base.HasSituatedExcess := by
  constructor
  · rintro ⟨p, hAppears, hConditioned, hNonExhaustible⟩
    refine ⟨p, hAppears, ?_, hNonExhaustible⟩
    exact
      (first_question_mutual_conditioning_conditioned_iff_structured
        M hForward hBackward p).mp hConditioned
  · rintro ⟨p, hAppears, hStructured, hNonExhaustible⟩
    refine ⟨p, hAppears, ?_, hNonExhaustible⟩
    exact
      (first_question_mutual_conditioning_conditioned_iff_structured
        M hForward hBackward p).mpr hStructured

end FormalPhenomenology
