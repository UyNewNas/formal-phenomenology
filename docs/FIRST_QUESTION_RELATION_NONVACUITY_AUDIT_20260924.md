# First-question relation/nonvacuity audit — 2026-09-24

Branch: `research/first-question-main-theorem-20260918`.
Pre-round head: `3726c492fe39b5db694234de2ef6c9e71c0580be`.

## Why this round

The immediately preceding source-controlled guardrail `first_question_related_horizon_need_not_condition` correctly showed that universal horizon structure plus `ConditioningIsSituated` does not collapse `situated` into `conditions`.  Its witness, however, used `splitIndependentConditioning`, where the conditioning relation is globally empty.  That leaves an obvious model-level objection: perhaps the separation disappears once conditioning is genuinely used.

This round tests exactly that objection without adding a new primitive or model family.

## External duplicate / reuse gate

Fresh 2026-09-24 scoped GitHub searches checked the proposed relation-separation object against:

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163`;
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759`;
- `alexoltean61/msphml-lean@9d6559db6502bc9813dcf028d7ea26ae80e9dc93`.

Search terms combined `horizon`, `conditioning`, `situated`, `related`, and `exhaustibility`; no same-shaped reusable API was returned.  This is a bounded reuse search, not a novelty claim.  The theorem below is intentionally a thin package of already-verified local finite-model facts, so importing a modal-logic or semantic-embedding framework would be disproportionate.

The same-topic primary-source gate was also rechecked through the already registered lawful routes.  Public De Gruyter/Stanford and Google Books access still exposes revised `Being Given` metadata/chapter boundaries, not the target revised body; the authorized reprint routes likewise did not expose the needed chapter text in this runtime.  A further French search for the mapped early-ED ranges returned the 1997 Google Books bibliographic/index record and secondary discussion, but not target author-body pages.  No access restriction was bypassed.  Therefore the historical stop gate remains unchanged.

## Formal increment

New module: `FormalPhenomenology/FirstQuestionRelationNonvacuity.lean`.

New entry point:

`first_question_total_relatedness_nonvacuous_conditioning_still_separates_relations`.

It reuses `mixedConditioningWitness` and proves existence of one model satisfying all of the following simultaneously:

1. `UniversalStructure`;
2. `ConditioningIsSituated`;
3. every horizon is related to every actually appearing phenomenon;
4. every horizon genuinely conditions some actually appearing phenomenon;
5. nevertheless, there is an actual appearance and a concrete horizon that is related to it but does **not** condition it.

The witness is the existing mixed Boolean model.  The `true` phenomenon makes conditioning genuinely inhabited for every horizon; the `false` phenomenon supplies the related-but-not-conditioning pair.  Hence the new result removes both the globally-empty-conditioning and sparse-relatedness loopholes from the latest relation-separation guardrail.

## Reverse check and scope

This is not a new logical discovery.  It packages information already distributed across `mixedConditioningWitness_total_relatedness`, `mixedConditioningWitness_every_horizon_conditions_appearing`, and `mixedConditioningWitness_hasSituatedIndependentExcess`.  Its purpose is interpretive discipline: a source reading that wants every related horizon to count as a prior condition must still state `SituatedImpliesConditioning` (or an equivalent bridge) explicitly; that converse does not follow merely because horizon relatedness is total and conditioning is nonvacuously used elsewhere.

The theorem does not establish historical independence of Merleau-Ponty's and Marion's concepts, does not identify `conditions` with Marion's complete notion of delimiting anteriority, and does not identify `NonExhaustible` with the saturated phenomenon.

## Exact-head verification

Code/audit commit `b24fb3b3cd71362bf36fa20e6a666e79db0af0b6` was checked by GitHub Actions run `35959028803` and completed `success`.  The workflow checked the PR merge ref containing that exact head, then:

- `python3 scripts/check.py`: **28 modules / 169 audited theorems**;
- full `lake build`: **31 jobs**, successful;
- kernel axiom audit: **169/169 theorems without axiom dependencies**, including `first_question_total_relatedness_nonvacuous_conditioning_still_separates_relations`.

The module is root-reachable through `FormalPhenomenology.lean` and the new theorem has its dedicated `#print axioms` entry in `Audit.lean`.  No local build is claimed for this automation runtime; the above is the actual GitHub-hosted verification record.

This documentation follow-up itself must retain the ordinary exact-head workflow verdict before being treated as the final handoff SHA; an earlier green code SHA is not silently substituted for the final branch head.

## Remaining stop condition

The narrow formal answer remains complete at the current relation-language level, but the first research question is not yet marked historically complete.  The remaining material gate is still direct review of a revised Marion body (BG pp. 209–212 and 225–226, the mapped early-ED ranges, or an authorized reliably mapped revised reprint/translation body) sufficient to freeze the `situated` versus prior-condition `conditions` interpretation.
