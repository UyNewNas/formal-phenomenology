# Marion revised-Étant donné e-book preview route audit — 2026-09-21

Branch: `research/first-question-main-theorem-20260918`

Base head inspected before this write: `121c32dcb673a0aa4cc94326d829afd38046f18a`.

## Purpose

The first-question formal package is already much stronger than the historical attribution gate requires.  This round therefore does **not** add another horizon primitive or proof family.  It instead rechecks lawful direct-body routes for the revised French *Étant donné* and records the exact edition/access ambiguity that must be resolved before the interpretation can be frozen.

The target stop condition remains lawful direct review of either BG pp. 209–212 plus 225–226, early ED pp. 292–297 plus 314–315, or a reliably mapped authorised revised reprint/translation containing the same argument.  Metadata, secondary quotation, search snippets, and a preview button without accessible body text do not count as direct-primary review.

## Authorised retail / distributor records rechecked

All checks below were performed on 2026-09-21 through ordinary public product/search routes; no login, DRM, reader-internal API, or access-control bypass was used.

### Lavoisier / PUF route

Public product record:

- <https://e.lavoisier.fr/produit/72567/9782130807490/etant-donne>
- author: Jean-Luc Marion;
- publisher: PUF;
- collection: Quadrige;
- EAN13: `9782130807490`;
- product page currently labels the item `2e édition`, publication `27 février 2025`;
- 540-page EPUB, protected by social watermarking;
- public `Télécharger un extrait` endpoint: <https://e.lavoisier.fr/extract/523630>.

The excerpt endpoint again resolved as `application/epub+zip`.  The web reader could not ingest that media type and a direct public-container download attempt also failed.  No attempt was made to reverse-engineer a reader, strip protection, or substitute a purchased copy.  Status remains `AUTHORIZED-PREVIEW-ENDPOINT / BODY-NOT-REVIEWED`.

### Kobo route

Public product records:

- <https://www.kobo.com/fr/fr/ebook/etant-donne-2>
- <https://www.kobo.com/pt/pt/ebook/etant-donne-essai-d-une-phenomenologie-de-la-donation>

They identify the same PUF e-book by `9782130807490`, with release date `18 septembre 2013`, 540 pages and EPUB2/Adobe-DRM delivery.  Kobo also advertises preview/sample affordances and states that the navigation metadata includes pagination equivalent to print.  The current research web path did not expose the preview body itself, so this is useful route metadata, not target-text evidence.

### Casa del Libro route

Public product record:

- <https://www.casadellibro.com/ebook-etant-donne--essai-dune-phenomenologie-de-la-donation-ebook/9782130807490/15198112>

The page identifies PUF, ISBN `9782130807490`, French e-book release `18/09/2013` and displays a `Leer primeras páginas` preview affordance.  The ordinary fetched HTML exposed product metadata and reader information but not a public preview-body URL or the target text.  The body therefore remains unreviewed.

### Vivlio / other distributor records

Public search/indexed product metadata for Vivlio exposes the same PUF EAN and a `Lire un extrait` affordance, while the ordinary open route returned HTTP 403 in the current web environment:

- <https://shop.vivlio.com/product/9782130807490_9782130807490_2/etant-donne-essai-dune-phenomenologie-de-la-donation>

Decitre provides an especially important bibliographic warning:

- <https://www.decitre.fr/ebooks/etant-donne-9782130807490_9782130807490_2.html>

For the same EAN `9782130807490`, Decitre currently labels the item `4e édition revue et augmentée`, gives the e-book date `18/09/2013`, 540 pages, and digital watermarking.  This conflicts at the retailer-metadata level with Lavoisier's current `2e édition` / 2025 label.

## Provenance consequence

The retail records converge on the same PUF/Quadrige e-book identifier but **do not converge on a simple edition-number/date label**.  Therefore:

1. `9782130807490` is a useful authorised-route identifier, but the retailer-facing strings `2e édition`, `4e édition revue et augmentée`, `2013`, or `2025` must not by themselves be used to infer textual identity or a constant page offset to the 1997 first edition.
2. Kobo's print-equivalent pagination metadata is promising for a future lawful preview/read route, but it does not itself establish which print revision is being paginated or that the target body was reviewed.
3. The next direct-primary attempt should use textual anchors (`horizon`, `condition de possibilité`, the one/several/exceeds-horizon sequence, and the later intention/intuition passage) **inside an authorised preview or purchased/research-library copy**, then cross-check the surrounding section identity against the already established BG/ED map.  Page arithmetic alone is insufficient.

Evidence status after this round:

`AUTHORIZED-REVISED-EBOOK-ROUTES / EDITION-METADATA-CONFLICT-RECORDED / TARGET-BODY-NOT-REVIEWED`.

## External-work / interpretation check

No new philosophical or formal claim was introduced, so the existing `docs/PRIOR_ART.md` methodological ledger remains controlling.  The targeted same-topic recheck this round used the direct revised-book route plus current secondary quotations only to locate anchors; secondary quotations (for example, the well-known BG 211–212 sentence that the saturated phenomenon does not depend on a horizon) were **not** promoted to direct-primary evidence.

The formal interpretation remains unchanged:

- `situated` records related horizon structure;
- `conditions` records the weaker project-facing notion of horizon as prior conditioning relation;
- `NonExhaustible` records failure of a single related horizon to cover every encoded aspect;
- none of these is identified with Marion's complete saturated-phenomenon taxonomy.

## Lean / validation decision

Because the unresolved item is textual identity/access rather than a missing logical implication, adding another theorem in this round would enlarge the formal surface without helping the stop condition.  The correct Lean action is therefore **regression verification of the existing first-question proof graph on this exact documentation SHA**, including the root import, `scripts/check.py`, and the zero-axiom audit through the repository's existing `Lean verification` workflow.  A prior green SHA is not inherited.

If exact-SHA CI is green, this round counts as a source/provenance advance with the formal package revalidated, not as completion.  The task must continue until the revised-primary body gate is actually closed or a genuine access/permission blocker requiring user action appears.
