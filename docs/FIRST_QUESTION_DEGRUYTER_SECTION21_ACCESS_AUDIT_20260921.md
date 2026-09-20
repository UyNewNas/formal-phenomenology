# First-question De Gruyter §21 access audit — 2026-09-21

This checkpoint advances only the remaining source gate for the first horizon/exhaustibility question. It does not change a Lean definition, theorem, historical attribution, or the existing weak mapping of `Independent` / `Captured` / `NonExhaustible`.

## 1. External-first reuse gate

Before treating the source gap as a reason to enlarge the formal language, the two currently relevant formal-work baselines were rechecked at their live default-branch heads:

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163` (2026-05-20): unchanged; no newer Marion/horizon/exhaustibility API is available to replace this project's narrow `situated / conditions / Exhausts` layer.
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759` (2026-09-13): unchanged; it remains methodological prior art for semantic embeddings / computational philosophy, not a same-topic theorem or a dependency required for this first-question package.

No new general relation, modal, stability, countermodel, or hermeneutics API is therefore justified in this round.

## 2. Official revised-book route rechecked

The official De Gruyter Brill / Stanford University Press book surface for Jean-Luc Marion, *Being Given: Toward a Phenomenology of Givenness* (Jeffrey L. Kosky trans., Stanford University Press, 2002; ebook DOI `10.1515/9780804785723`) was rechecked directly through the publisher-indexed web surface.

The current publisher record independently confirms:

- the English book identity and translator;
- §21 `Sketch of the Saturated Phenomenon: The Horizon` begins at p. 199;
- §22 begins at p. 212;
- §23 begins at p. 221;
- the chapter-level DOI for §21 is `10.1515/9780804785723-024` and the chapter range is pp. 199–212.

The publisher page also exposes book-level search/navigation controls and marks only selected front-matter items as openly downloadable. The target §21 record is indexed as a chapter, but the current runtime did **not** obtain the chapter body. Direct retrieval of the chapter HTML returned a method/access error in the web runtime, and the direct publisher PDF route was not exposed as an accessible document. No login, institutional proxy, reader API, access control, or DRM was bypassed.

Evidence state for this route is therefore:

`PRIMARY-PUBLISHER-BOOK/CHAPTER-METADATA + AUTHORIZED-NAVIGATION-SURFACE`

and **not** `PRIMARY-DIRECT-BODY` or `PRIMARY-PAGE-IMAGE`.

## 3. Exact-page search result and interpretation consequence

A fresh targeted search around BG 209–212 / the one-horizon / multiple-horizon / combined-horizon sequence again recovered secondary exact-page reconstructions, but no lawfully retrievable revised-book body. The strongest useful secondary hit remains the already registered reconstruction of BG 210–211 distinguishing a phenomenon saturating one horizon, spilling into multiple horizons, and the strongest case in which no combination of horizons tolerates the phenomenon's absoluteness.

That evidence constrains interpretation but does not change the current source hierarchy:

- `Captured` stays only the current `∃ h, ∀ a` single-horizon extensional surrogate;
- `IndividuallyCoverable` stays the weaker `∀ a, ∃ h` aspectwise-cover notion;
- `NonExhaustible` means failure of a single situated horizon to exhaust all encoded aspects, not Marion's full one/multiple/combined-horizon taxonomy;
- `Independent` remains absence of a witness in the project's separate `conditions` relation, not a definition of saturated phenomenality.

The search therefore gives no textual warrant for adding a horizon-combination primitive or identifying the existing finite countermodels with Marion's full saturated phenomenon.

## 4. Provenance consistency after the 2007 correction

This audit preserves the correction recorded in `MARION_2007_TRANSLATION_PROVENANCE_20260921.md`: the 1996 Carlson publication and the 2007 Fulka publication are translation/publication witnesses of the same 1992 `Le phénomène saturé` essay lineage. The 2007 item must not be counted as an independent later Marion author-text argument against the still-source-gated 1997/2002 revised book version.

Consequently, the official De Gruyter/Stanford §21 route remains the cleanest English publisher route for closing the historical stop gate if the body becomes directly available.

## 5. Lean consequence

No new Lean declaration is warranted. The logical target already exists in `first_question_complete_formal_answer` and its component witness/boundary theorems. The remaining gap is source provenance and interpretation freeze, not a missing proof object.

The correct formal action for this checkpoint is therefore regression verification of the existing package on the exact documentation SHA:

- `lake build` through the repository workflow;
- `python3 scripts/check.py`;
- root-module coverage;
- forbidden-placeholder scan;
- full `Audit.lean` kernel axiom dependency check.

A green run validates that the source-ledger update did not disturb the zero-`sorry` formal package; it is not evidence of a new mathematical or philosophical theorem.

## 6. Stop-gate status and next entry

The first research question remains open. The material stop gate is still lawful direct body-text review of at least one reliably mapped revised-text route:

- BG pp. 209–212, with the tracked pp. 225–226 interpretation check;
- early ED pp. 292–297, with pp. 314–315;
- authorized SD pp. 341–342 where the crosswalk is reliable;
- or an authorized revised reprint/translation whose body can be anchored to the same §21 sequence.

Next source-first entry: continue only lawful publisher/library preview routes for the revised text. If direct body text becomes available, compare its one/multiple/combined-horizon ordering and horizon-as-condition language against the current weak `Independent` mapping before changing any interface. If the mapping survives, freeze interpretation and run final same-SHA Lean/build/axiom verification; if it does not, add only the smallest interface forced by the text.
