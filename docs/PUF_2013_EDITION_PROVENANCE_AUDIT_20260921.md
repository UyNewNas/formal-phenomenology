# PUF 2013 edition/provenance audit — 2026-09-21

This checkpoint advances only the remaining primary-source gate for the first horizon/exhaustibility question. It does **not** add a philosophical primitive, alter the current `Captured` / `Independent` / `NonExhaustible` mappings, or claim that a storefront preview is equivalent to direct page review.

## 1. External-first gate

The directly relevant formal baselines were rechecked before changing any project logic.

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163` remains the current `main` head (2026-05-20). A targeted GitHub search for `Marion horizon saturation conditioning exhaust` again returned no same-shaped Marion horizon/exhaustibility API replacing this project's narrow relation layer.
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759` remains the current `master` head (2026-09-13). The same targeted search returned no same-topic theorem/API. LogiKEy remains a methodological baseline for semantic embeddings/computational philosophy rather than a dependency needed for this elementary model.

Reuse decision: no new logic dependency and no new generic API.

## 2. Edition identities must be kept distinct

The lawful PUF route now has a sharper bibliographic split than the previous source ledger recorded.

### Early Épiméthée edition

Google Books identifies the 1997 PUF *Étant donné: essai d'une phénoménologie de la donation* as ISBN `2130486770` / `9782130486770`, 452 pages. FNAC's older PUF/Épiméthée listing uses the same EAN `9782130486770` but labels the issue November 1998 and 456 pages. This is a bibliographic warning by itself: public retail/catalog page counts are not sufficient to transfer an exact printed-page crosswalk without checking the edition actually being cited.

### 2013 Quadrige print edition

FNAC's current public product page identifies the September 2013 PUF Quadrige paperback as:

- EAN `9782130624813`;
- ISBN `2130624812`;
- 540 pages;
- format 12.60 × 19.10 cm.

The page visibly offers a `Feuilleter` control, but the ordinary rendered HTTP surface available in this run exposes only the product metadata and publisher summary, not the target internal body pages. No hidden reader endpoint, account state, DRM, or access-control mechanism was reverse engineered.

### 2013 PUF ebook route

The already-audited Kobo licensed EPUB route uses a **different** ebook identifier, EAN `9782130807490`, while likewise reporting a 2013 release and print-equivalent page navigation. Therefore the shared `540 pages` value cannot be used to infer that the EPUB's page labels are automatically identical to the FNAC-listed Quadrige print pagination, and neither can be assumed to inherit the early 1997/1998 ED `292–297 / 314–315` mapping without body-level anchors.

The previously noted Lavoisier storefront using ebook EAN `9782130807490` and a later `2e édition` label should therefore remain a provenance warning, not a page-map shortcut.

## 3. English revised-book route rechecked

Google Books' authorized limited-preview metadata for Stanford's 2002 *Being Given* (ISBN `0804785724` / `9780804785723`) again fixes the relevant table-of-contents boundary:

- section XXI begins at p. 199;
- section XXII begins at p. 212;
- section XXIII begins at p. 221.

This corroborates the existing `BG 209–212` target window but the currently exposed Google Books surface does not provide the target body text itself. Secondary exact-page quotations, including the already registered Leung reconstruction of BG 211–212, remain interpretation constraints rather than substitutes for direct revised-book body review.

## 4. Formal consequence

No primary-text constraint changed, so adding a new horizon-combination, intention/intuition, modal, or saturation primitive would increase unconstrained model freedom rather than answer the first question more faithfully.

The formal answer therefore remains exactly the existing package around `first_question_complete_formal_answer`:

- bare horizon structure does not entail single-horizon exhaustive capture;
- `Independent → NonExhaustible` on actual appearances requires the explicit exclusion of an appearing `Captured ∧ Independent` witness;
- witness-producing conditioning additionally needs captured-domain double-negation stability;
- `Captured` remains only the project's single-horizon extensional surrogate and is not identified with Marion's full one/multiple/combined-horizon saturation taxonomy.

This round intentionally adds **no Lean declaration**. The correct formal action is regression verification of the unchanged first-question theorem graph on the exact source-audit SHA rather than theorem-count growth.

## 5. Stop-gate and next exact entry

The first research question remains open. The direct-primary stop gate still requires lawful body review of one of the already tracked revised routes:

1. BG pp. 209–212 plus the pp. 225–226 interpretation check;
2. early ED pp. 292–297 plus pp. 314–315;
3. the mapped authorized Spanish route around SD pp. 341–342;
4. or an authorized revised reprint/translation whose body can be anchored to the same §21 sequence.

For the PUF 2013 route, the next valid move is to use an authorized preview surface that actually exposes body text and records enough edition/page provenance to distinguish `9782130624813` print from `9782130807490` ebook. A visible preview button or matching page count alone is not sufficient.

## 6. Validation requirement

Because this commit is source-ledger only, validation means rerunning the existing repository workflow on the exact resulting SHA. Success must still cover the pinned Lean build, root-module/source coverage, forbidden-placeholder scan, and kernel axiom audit. A green run is regression evidence for the unchanged first-question formal package, not evidence of a new theorem.
