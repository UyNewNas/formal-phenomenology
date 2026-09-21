# First-question positive-conditioning robustness review

Date: 2026-09-21

Branch: `research/first-question-main-theorem-20260918`

Scope: follow-up review of the previous mutual-conditioning result.  The target is the stronger objection that the separation might survive only because the witness is described negatively as `Independent`.  This round asks whether the same relation language contains an **actually conditioned** appearing phenomenon that is still non-exhaustible when `situated` and `conditions` coincide extensionally.

## External-work gate

A targeted GitHub code search on 2026-09-21 for `horizon conditioned exhaustible capture` across the three live formal baselines returned no same-shaped reusable API:

- `novaspivack/phenomenology-lean` remains direct Lean formal-phenomenology prior art, but the targeted search exposed no Marion/horizon conditioning/exhaustibility theorem matching this pressure test;
- `cbenzmueller/LogiKEy` remains methodological prior art for explicit semantic embeddings, model comparison, and countermodel analysis rather than a dependency for this elementary relation theorem;
- `alexoltean61/msphml-lean` likewise exposed no same-shaped theorem in the targeted search.

This is a bounded search result, not a claim that no related work exists elsewhere.  No new generic logic or model infrastructure is introduced.

Same-topic literature continues to constrain interpretation rather than supply this exact Lean statement.  Mackinlay's reconstruction of *Being Given* 209–211 distinguishes one-horizon filling, overflow into additional horizons, and the strongest case in which no combination of horizons tolerates the phenomenon; the revised-book body remains unavailable through an authorised direct-text route in this runtime.  The result below therefore remains a formal guardrail only and does not identify `Conditioned` or `NonExhaustible` with Marion's full saturated-phenomenon vocabulary.

## Formal reuse and result

No new model is added.  The proof reuses the already-audited `splitDependentConditioning` finite model through:

- `mutualSituatedConditioning_allows_conditioned_situatedExcess`;
- `mutualSituatedConditioning_conditioned_does_not_force_capture`.

`first_question_positive_conditioning_robustness` packages two facts on the same strengthened profile:

1. there exists `M : HorizonConditioning` with `UniversalStructure`, `ConditioningIsSituated`, and `SituatedImpliesConditioning`, together with an actually appearing structured `p` such that `Conditioned p` and `NonExhaustible p`;
2. under those same structural assumptions, the universal implication `appears p -> Conditioned p -> Captured p` is false.

The first conjunct uses a positive conditioning witness rather than deriving anything from `¬ Independent`.  The second is the implication-level form of the same counterexample.

## Reverse review / strongest simple baseline

This result does not depend on an unconstrained negative predicate:

- the witness explicitly satisfies `Conditioned p`;
- `situated` and `conditions` are constrained in both directions;
- `UniversalStructure` holds, so the witness is not horizonless or vacuous;
- `NonExhaustible` is discharged through the existing finite split model and the already-audited `nonExhaustible_iff_not_captured` boundary.

The quantifiers remain the important point.  Mutual extensional identification of the two relation predicates says which horizons count as related/conditioning; it does **not** exchange `forall aspect, exists horizon` for `exists horizon, forall aspect`.  Hence positive conditioning still does not supply a single exhaustive horizon.

This is stronger than the previous project-level `first_question_mutual_conditioning_robustness`, which only stated that mutual conditioning does not force the global `ClosureBridge`.  It does not claim that every conditioned phenomenon is non-exhaustible; only the universal implication from positive conditioning to capture is refuted by an actual appearing witness.

## Source / stop gate

The source gate is unchanged.  Direct lawful review of revised §21 body remains required before the historical interpretation is frozen: BG 209–212 / 225–226, early ED 292–297 / 314–315, or an authorised reliably mapped revised reprint/translation.  Secondary crosswalks and quotations continue to be supporting evidence only.

The new theorem therefore changes the **formal robustness** of the narrow answer, not the historical attribution or completion status.

## Verification

The theorem is included in `Audit.lean`; repository CI must verify the exact final branch SHA with the normal `Build, source coverage, and kernel axiom audit` step.  Until that exact-head run succeeds, this review records the implementation and reverse-check result but does not claim kernel acceptance.
