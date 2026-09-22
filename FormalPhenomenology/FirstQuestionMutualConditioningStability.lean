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

/--
Question-shaped specialization of the mutual-conditioning stability boundary.

If every actually appearing phenomenon is already in the encoded horizon
structure (`UniversalStructure`) and `situated` is explicitly identified with
`conditions` in both directions, then the positive `Conditioned` premise in the
stability conjunct becomes redundant.  Under those explicit assumptions,
`ClosureBridge` is equivalent to:

1. no actually appearing `Conditioned ∧ NonExhaustible` witness; and
2. double-negation stability of `Captured` on the actual-appearance domain.

This theorem is a FORMAL normalization only.  `UniversalStructure`, the mutual
identification of the two relations, and capture stability remain separately
visible assumptions; none is attributed here to Merleau-Ponty or Marion.  The
result therefore strengthens the quantifier audit without turning the current
encoding into a historical claim about saturated phenomena.
-/
theorem first_question_mutual_conditioning_universalStructure_closureBridge_iff_no_conditioned_excess_and_stability
    (M : HorizonConditioning)
    (hForward : M.SituatedImpliesConditioning)
    (hBackward : M.ConditioningIsSituated)
    (hStructure : M.base.UniversalStructure) :
    M.base.ClosureBridge ↔
      (¬ ∃ p,
        M.base.appears p ∧ M.Conditioned p ∧ M.base.NonExhaustible p) ∧
      (∀ p, M.base.appears p →
        (¬ ¬ M.base.Captured p → M.base.Captured p)) := by
  constructor
  · intro hClosure
    have hExact :=
      (first_question_mutual_conditioning_closureBridge_iff_no_conditioned_excess_and_captured_stability
        M hForward hBackward).mp hClosure
    refine ⟨hExact.1, ?_⟩
    intro p hAppears hDoubleCaptured
    have hStructured : M.base.Structured p := hStructure p hAppears
    have hConditioned : M.Conditioned p :=
      (first_question_mutual_conditioning_conditioned_iff_structured
        M hForward hBackward p).mpr hStructured
    exact hExact.2 p hAppears hConditioned hDoubleCaptured
  · rintro ⟨hNoConditionedExcess, hStable⟩
    apply
      (first_question_mutual_conditioning_closureBridge_iff_no_conditioned_excess_and_captured_stability
        M hForward hBackward).mpr
    refine ⟨hNoConditionedExcess, ?_⟩
    intro p hAppears _ hDoubleCaptured
    exact hStable p hAppears hDoubleCaptured

end FormalPhenomenology
