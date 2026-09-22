# Marion revised-text lawful-access recheck — 2026-09-23

Branch: `research/first-question-main-theorem-20260918`.

## Scope

This round keeps the first-question source gate narrow: obtain lawful direct body text for the tracked revised Marion passages (BG 209–212 and 225–226, the established early-ED counterparts 292–297 and 314–315, or an authorized reprint/collected-edition body that can be textually mapped). Publisher metadata, secondary exact quotations, preview-button existence, and unauthorized mirrors do not satisfy the gate.

The formal answer is not expanded merely to keep the branch active. The current relation language already separates `situated`, `conditions`, and `Exhausts`, and the verified first-question theorems already isolate the logical non-entailment and the exact extra premises. A new semantic primitive is justified only if revised primary text requires it.

## External-reuse gate

Before considering any new formal object, a bounded code search was repeated over the three registered formal baselines:

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163`;
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759`;
- `alexoltean61/msphml-lean@9d6559db6502bc9813dcf028d7ea26ae80e9dc93`.

Query family: `horizon exhaustibility capture conditioning` and the already registered domain/closure variants. No same-shaped reusable horizon/exhaustibility API was located in the indexed default branches. This is a bounded reuse search, not a novelty claim and not build evidence for those external repositories. Because this round adds no theorem/API, no dependency or port is started.

## Lawful primary-route recheck

### PUF / Lavoisier 2025 `Étant donné`

The current Lavoisier product page directly identifies Jean-Luc Marion, PUF / Quadrige, publication 27 February 2025, `2e édition`, 540-page ePub, EAN13 eBook `9782130807490`, paper `9782130624813`, and exposes a public `Télécharger un extrait` control.

Following that public control resolves to the already registered endpoint:

`https://e.lavoisier.fr/extract/523630`

The research web client receives the endpoint as `application/epub+zip` and cannot ingest that binary representation (`Unsupported content-type`). No reader API was reverse-engineered, no authenticated purchase/loan state was assumed, and no access control was bypassed. Therefore this remains an authorized excerpt route whose body has **not** been reviewed in this environment; it is not upgraded to `PRIMARY-DIRECT-PAGE`.

### PUF 2025 collected edition `Le phénomène et le donné`

A fresh lawful retailer check again identifies Jean-Luc Marion, PUF, Quadrige Grands Classiques, publication 29 October 2025, EAN `9782130886686`, 1212 pages, and describes the volume as collecting *Étant donné* together with the other phenomenology-of-givenness books. The page visibly offers `Feuilleter`, but the textual retrieval available to this run exposes product metadata rather than the preview body or target §21/§23 passages.

Accordingly the existing status is preserved:

`PRIMARY-AUTHOR-COLLECTED-EDITION / PUBLISHER-METADATA / ALTERNATE-AUTHORIZED-ROUTE / BODY-NOT-REVIEWED`.

The presence of a preview control is not counted as having read the text, and no pagination identity with the 1997/2013 tracks is inferred.

### Stanford / De Gruyter revised §21

The official chapter object remains the exact publisher-level target:

- `§21 Sketch of the Saturated Phenomenon: The Horizon`;
- BG pp. 199–212;
- DOI `10.1515/9780804785723-024`.

This round recovered only the already established chapter/provenance layer, not the target revised body. The route therefore remains `PRIMARY-PUBLISHER-CHAPTER-METADATA / BODY-NOT-REVIEWED`.

### Excluded routes

General web search continues to surface unofficial full-book copies. They were not used as textual evidence and cannot close the source gate. This preserves the project’s distinction between lawful access failure and a philosophical or textual inference.

## Formal / interpretive decision

No new Lean definition, theorem, model, or axiom is added in this round. That is a deliberate source-first decision, not inactivity:

1. the pure formal question is already answered by a finite countermodel (`UniversalStructure ↛ ClosureBridge`);
2. the conditioning variant already has exact pointwise and appearance-domain premises, constructive stability refinements, and robustness checks against mutual `situated ↔ conditions` identification;
3. the latest domain-extension guardrails already prevent finite named-horizon failure from being misread as a modal claim about every possible/ideal horizon;
4. no newly read revised primary body forces a semantic change.

Adding another free predicate or theorem wrapper before the primary-text gate moves would increase theorem count without increasing faithfulness, contrary to `AGENTS.md` and the prior-art policy.

## Validation / handoff

Pre-round branch head was `0d5baa643c1f14767b614afb11926563fd509bf3`; its exact-head `Lean verification` run `35747229291` completed successfully.

This source-audit commit must trigger the same repository workflow. Its post-commit result, not the pre-round run, determines whether the final branch SHA for this round is build/audit verified. The first-question stop condition remains open until the revised Marion body is lawfully reviewed and mapped; no historical attribution is upgraded here.
