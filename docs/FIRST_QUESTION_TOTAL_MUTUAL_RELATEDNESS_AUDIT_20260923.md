# First-question total-relatedness / mutual-conditioning reverse audit

Date: 2026-09-23

Branch: `research/first-question-main-theorem-20260918`

## Object reviewed

The previous checkpoint proved that `ClosureBridge` can fail even when every actual appearance is related to every horizon, every horizon conditions some actual appearance, and `ConditioningIsSituated` holds.  A remaining simple objection was that the counterexample still allowed one-way freedom between `situated` and `conditions`.

This round therefore reverse-checks the stronger baseline in which the two relations coincide in both directions and are maximal on actual appearances.

## External-first reuse check

The search was deliberately bounded to the object being added; it is a reuse decision, not a novelty claim.

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163` was rechecked on 2026-09-23.  Targeted repository search for `horizon` and the combined `horizon / conditioning / exhaustive / captured / closure / situated` shape returned no same-shaped reusable API.
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759` was rechecked on 2026-09-23.  It remains methodological prior art for semantic embeddings, competing interpretations, theorem proving and countermodels; the scoped search did not locate a horizon/exhaustibility API matching the present relation-level statement.
- `alexoltean61/msphml-lean` remains a modal-proof-engineering baseline rather than a dependency for this elementary finite relation witness.  The scoped combined search located no same-shaped reusable API.
- No generic order/directedness infrastructure is needed for this theorem; it reuses only existing project definitions and the already-verified `splitDependentConditioning` finite model.

The same-topic source gate was also refreshed rather than inferred from code search.  The official De Gruyter/Fordham record and PhilPapers continue to identify the authorized `Sketch of the Saturated Phenomenon` reprint, while the current public retrieval path exposes metadata rather than the revised target body.  Leung 2022 remains a secondary exact-page route quoting *Being Given* 211–12 / 225–27; it constrains interpretation but does not satisfy the direct revised-primary stop gate.  Search also surfaced unauthorised full-book mirrors; they were excluded and were not used as evidence.

## Formal increment

The new theorem is:

`first_question_total_relatedness_mutual_conditioning_does_not_force_closure`.

It reuses `splitDependentConditioning`, whose base is `splitModel` and whose `conditions` relation is constantly true.  Consequently, on its actual appearance:

1. every horizon is `situated`;
2. every horizon `conditions` the phenomenon;
3. `ConditioningIsSituated` holds;
4. `SituatedImpliesConditioning` holds;
5. nevertheless the phenomenon is `NonExhaustible`, so `ClosureBridge` fails.

This is strictly a FORMAL pressure test.  It does not attribute total relatedness or `situated ↔ conditions` to Merleau-Ponty or Marion, and it does not identify `NonExhaustible` with a saturated phenomenon.  Its value is only to close the simple model-freedom objection left by the previous total-relatedness checkpoint: the failure now survives even after the two horizon relations are maximally populated and extensionally identified.

Code commit: `c8f806240744b18c203524f3ab812c233576a8e4`.

Audit-registration commit: `e21d4b9a1de7b105abcab287f00c5141d3c05f00`.

## Strongest internal baseline / reverse review

This theorem is not presented as a new logical discovery.  Its strongest internal baselines are already present:

- `first_question_mutual_conditioning_robustness`: mutual `situated ↔ conditions` does not force closure, without total-relatedness;
- `first_question_total_relatedness_horizonwise_conditioning_does_not_force_closure`: total relatedness and horizonwise non-vacuous conditioning do not force closure, but only one relation direction is required.

The new theorem is the conjunction-strengthening of those two robustness axes in one existing model.  It adds no primitive, model family, classical principle, dependency, or historical claim.

## Validation status

The new declaration is registered in `Audit.lean`; the audit policy is unchanged.  Exact-head GitHub Actions must run `python3 scripts/check.py`, the root/source coverage check, the Lean build, and the kernel axiom audit before this checkpoint is called verified.  Static source inspection is not a substitute for that run.

## Stop-gate status

The first research question is not complete from this formal strengthening alone.  The remaining stop gate is still lawful direct review of the mapped revised Marion body: BG 209–212 plus the tracked later passage, early ED 292–297 plus 314–315, or a reliably mapped authorized revised reprint/translation.  Only that source check can freeze or revise the interpretation layer before final exact-SHA verification.
