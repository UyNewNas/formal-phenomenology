import FormalPhenomenology.FirstQuestionMutualConditioningNormalization

set_option autoImplicit false

namespace FormalPhenomenology
open Presentation HorizonConditioning

/--
Exact constructive decomposition of the mutual-conditioning closure claim.

When `situated` and `conditions` are explicitly identified in both directions,
`ClosureBridge` is equivalent to two ingredients on the same appearing and
positively conditioned domain:

1. there is no appearing `Conditioned ∧ NonExhaustible` witness; and
2. `Captured` is double-negation stable exactly where the conditioned-capture
   bridge is queried.

This sharpens the earlier decidability corollary by isolating the minimal
proof-theoretic premise actually used.  It adds no new philosophical primitive,
model, classical principle, or historical attribution.  In particular, neither
the mutual identification nor capture stability is attributed to Merleau-Ponty
or Marion.
-/
theorem first_question_mutual_conditioning_closureBridge_iff_no_conditioned_excess_and_captured_stability
    (M : HorizonConditioning)
    (hForward : M.SituatedImpliesConditioning)
    (hBackward : M.ConditioningIsSituated) :
    M.base.ClosureBridge ↔
      (¬ ∃ p,
        M.base.appears p ∧ M.Conditioned p ∧ M.base.NonExhaustible p) ∧
      (∀ p, M.base.appears p → M.Conditioned p →
        (¬ ¬ M.base.Captured p → M.base.Captured p)) := by
  constructor
  · intro hClosure
    constructor
    · intro hConditionedExcess
      have hSituatedExcess : M.base.HasSituatedExcess :=
        (first_question_mutual_conditioning_conditioned_excess_iff_situatedExcess
          M hForward hBackward).mp hConditionedExcess
      exact (situatedExcess_refutes_closureBridge M.base hSituatedExcess) hClosure
    · intro p hAppears hConditioned _
      apply hClosure p hAppears
      exact
        (first_question_mutual_conditioning_conditioned_iff_structured
          M hForward hBackward p).mp hConditioned
  · rintro ⟨hNoConditionedExcess, hStable⟩ p hAppears hStructured
    have hConditioned : M.Conditioned p :=
      (first_question_mutual_conditioning_conditioned_iff_structured
        M hForward hBackward p).mpr hStructured
    have hNoSituatedExcess : ¬ M.base.HasSituatedExcess := by
      intro hSituatedExcess
      apply hNoConditionedExcess
      exact
        (first_question_mutual_conditioning_conditioned_excess_iff_situatedExcess
          M hForward hBackward).mpr hSituatedExcess
    have hDoubleCaptured : ¬ ¬ M.base.Captured p :=
      (first_question_no_situatedExcess_iff_double_negated_capture M.base).mp
        hNoSituatedExcess p hAppears hStructured
    exact hStable p hAppears hConditioned hDoubleCaptured

end FormalPhenomenology
