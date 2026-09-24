# First-question relatedness/conditioning separation audit — 2026-09-24

Branch: `research/first-question-main-theorem-20260918`.
Pre-round head: `a176c996b09c456e56674dd4e9b65d83894349b0`.

## Scope

This round kept the first question source-first and used the current formal boundary only where the source distinction actually motivates a guardrail. The concrete object was the one-way interpretation gap between

- `base.situated p h`: `h` is a horizon related to the appearance of `p`; and
- `conditions p h`: `h` is counted as a prior condition/constraint on the phenomenality of `p`.

The new theorem does **not** identify either predicate with a historical doctrine. It records only that the already-existing model language does not collapse them merely from universal horizon structure plus the coherence direction `conditions -> situated`.

## External duplicate gate

Fresh 2026-09-24 GitHub checks searched the proposed relation-separation object with terms including `horizon`, `conditioning`, `relatedness`, `situated`, `conditions`, and `exhaustibility`.

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163`: no same-shaped reusable API was returned by the scoped code search.
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759`: no same-shaped horizon/conditioning relation theorem was returned; LogiKEy remains a methodological precedent for computational-hermeneutic model comparison rather than a dependency for this elementary relation witness.
- `alexoltean61/msphml-lean@9d6559db6502bc9813dcf028d7ea26ae80e9dc93`: no same-shaped reusable horizon/conditioning theorem was returned.

These are bounded reuse searches, not novelty claims. No external repository was rebuilt in this runtime. Lean Core and the already-imported project model are sufficient; adding a modal-logic, semantic-embedding, or Mathlib dependency would be disproportionate.

## Same-topic/source recheck

Two revised/reprint routes were rechecked without bypassing access controls.

1. De Gruyter Brill continues to expose the revised *Being Given* book/section metadata for §21, `Sketch of the Saturated Phenomenon: The Horizon`, pp. 199–212, but the public HTML route used here still did not expose the chapter body. This remains publisher metadata, not direct revised-page review.
2. Google Books exposes a lawful preview record for Moran/Embree, *Phenomenology: Critical Concepts in Philosophy*, vol. 4 (Routledge/Taylor & Francis, 2004), and its contents explicitly list Marion, `Sketch of the saturated phenomenon: the horizon`, beginning at p. 5. The preview endpoint available to this runtime exposed the bibliographic/contents page and a `Preview this book` route, but the retrievable preview frame yielded only the front cover rather than the Marion chapter body. It therefore strengthens the already-recorded formal-reprint provenance but still does not satisfy the direct revised-primary stop gate.

The direct gate remains BG pp. 209–212 plus 225–226, early ED pp. 292–297 plus 314–315, a reliably mapped revised translation/reprint with accessible body, or an equivalent authorized route.

## Formal increment

`FormalPhenomenology/FirstQuestionInterpretiveGuardrails.lean` now adds

`first_question_related_horizon_need_not_condition`.

The witness reuses `splitIndependentConditioning` and asserts that there exist a model, actually appearing phenomenon, and concrete horizon such that:

- `UniversalStructure` holds;
- `ConditioningIsSituated` holds;
- the phenomenon appears;
- the chosen horizon is `situated` for it;
- that same horizon is **not** a `conditions` witness.

The proof uses the already-verified split model and adds no primitive, axiom, model family, decidability principle, or classical assumption. This is intentionally weaker than the competing assumption `SituatedImpliesConditioning`; it shows why that converse direction must remain an explicit hypothesis rather than being silently inferred from horizon structure or from `ConditioningIsSituated`.

## Reverse check

This result is a thin packaging of information already latent in `splitIndependentConditioning_hasStructuredIndependentAppearance`; it is not advertised as a new logical discovery. Its value is interpretive precision: the source-controlled distinction between “a horizon is related to manifestation” and “a horizon is a prior delimiting condition” now has a direct same-witness project entry point.

It does not affect the stronger existing facts that:

- mutual `situated <-> conditions` still does not force `ClosureBridge`;
- positive `Conditioned` can coexist with `NonExhaustible`;
- finite/multiple horizon cover does not by itself imply single-horizon capture.

No historical attribution is upgraded from the theorem.

## Exact-head verification

The theorem is root-reachable because `FormalPhenomenology.lean` already imports `FirstQuestionInterpretiveGuardrails`. `Audit.lean` contains a dedicated `#print axioms FormalPhenomenology.first_question_related_horizon_need_not_condition` line.

The code+audit head `033977ab6a516792ae773f241968bf1fc169e7c7` was checked by GitHub Actions run `35952909267` and completed `success`. The job checked out that exact SHA, ran `python3 scripts/check.py`, and reported **27 modules / 168 audited theorems**; `lake build` completed successfully with **30 jobs**. The kernel audit reported **168/168 theorems without axiom dependencies**, including the new `first_question_related_horizon_need_not_condition` declaration.

This documentation follow-up records that verdict. Its own final SHA must also retain the existing exact-head workflow before the round is considered fully handed off; no earlier green SHA is silently substituted for the final branch head.

## Remaining stop condition

The narrow formal answer remains closed at the current encoding level, but the first research question is **not** marked complete. The material stop gate is still direct review of a revised Marion body (or an authorized reliably mapped revised reprint/translation) sufficient to freeze the historical interpretation of `situated` versus prior-condition `conditions`, while keeping `NonExhaustible` distinct from Marion's full saturated-phenomenon account.
