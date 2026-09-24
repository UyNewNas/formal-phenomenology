# First-question 2025 ePub version-mapping audit — 2026-09-24

Branch: `research/first-question-main-theorem-20260918`.

Pre-round exact head: `63fd403677f1cca1cefd363bc1bfa71259251796`.

## Why this round is source-first

The narrow relation-level answer to the first question is already formalized: `UniversalStructure` does not entail `ClosureBridge`, and the branch already isolates the exact finite-cover/common-dominator and conditioning boundaries. The remaining stop condition is evidential: a lawful direct reading of the revised Marion body, with a reliable edition/page mapping. A new Lean theorem is therefore justified only if fresh source evidence changes the object to be formalized.

## Mandatory external-work gate

A fresh bounded GitHub code search on 2026-09-24 used `horizon exhaustive exhaustible conditioning capture` against the registered live baselines:

- `novaspivack/phenomenology-lean`;
- `cbenzmueller/LogiKEy`;
- `alexoltean61/msphml-lean`.

The scoped search returned no same-shaped reusable horizon/exhaustibility/conditioning API. This is a reuse decision only, not a novelty or nonexistence claim. LogiKEy/AFP and computational-hermeneutic work remain methodological prior art; no new generic logic dependency is warranted for this round.

## Publisher ePub route: confirmed public sample, but body still unread here

The current Lavoisier/PUF product page was re-opened directly:

- <https://e.lavoisier.fr/produit/72567/9782130807490/etant-donne>

It identifies Jean-Luc Marion, PUF/Quadrige, publication `27 février 2025`, `2e édition`, 540-page ePub, eBook EAN `9782130807490`, paper EAN `9782130624813`, and exposes an ordinary public `Télécharger un extrait` link.

Following that public link resolves to:

- <https://e.lavoisier.fr/extract/523630>

The research browser receives the response as `application/epub+zip`, which this runtime cannot ingest; an ordinary container download also failed. No login, purchase, DRM, anti-bot mechanism, or preview restriction was bypassed. Evidence status is therefore still:

`PRIMARY-PUBLISHER-METADATA + PUBLIC-SAMPLE-ROUTE / BODY-NOT-READ`.

The existence of a public sample is not itself direct review of §21.

## New provenance caution: the same digital EAN is also catalogued as a 2013 release

A fresh distributor cross-check found a nontrivial version-mapping issue that matters before the public ePub route can be used to close the primary gate.

The current PUF/Lavoisier page above labels EAN `9782130807490` as a 2025 publication / `2e édition`. By contrast, Rakuten Kobo France currently lists the same title and **the same book ID `9782130807490`** with:

- publisher/imprint `PUF`;
- `540 Pages`;
- publication date `18 septembre 2013`;
- EPUB 2 distribution;
- a public `Extrait` UI.

Current Kobo record:

- <https://www.kobo.com/fr/fr/ebook/etant-donne-essai-d-une-phenomenologie-de-la-donation>

Other current French eBook storefronts (including Vivlio / E-librairie Leclerc) list EAN `9782130807490` with the 27 February 2025 date and expose a `Lire un extrait` surface, but their preview body was not retrievable in this runtime.

### Consequence

Do **not** infer from EAN `9782130807490` alone that an accessible sample is textually a newly paginated 2025 revision rather than the 2013 Quadrige digital lineage or a metadata refresh/reissue. Before using any such sample as `PRIMARY-DIRECT-BODY`, the project must establish at least:

1. which edition/text state the sample actually serves;
2. whether its internal print-equivalent pagination or textual anchors map to the tracked revised §21 passage;
3. that the relevant body, rather than only front matter/sample metadata, was directly read.

This is a provenance/version-control precaution, not a claim that either catalog is wrong. The repository already keeps the 2013 pagination track separate from the 1997/early-pagination track, so this new distributor discrepancy reinforces that discipline.

## Revised-primary / same-topic recheck

A fresh search for the horizon passage again recovered the already-known authorized/indexed and secondary evidence rather than a directly reviewable mapped revised-book body:

- Cairn indexes the 2013 PUF book page containing the `antériorité délimitatrice` / horizon discussion, but ordinary page/PDF retrieval is access-restricted in this runtime; the repository therefore keeps that route as direct indexed evidence, not target-page body review.
- King-Ho Leung's published secondary text still gives exact *Being Given* 211–212 / 225–226 quotations and interprets horizon as `condition of possibility`; it remains `SECONDARY-EXACT`, not a substitute for direct author-page review.
- Pommier 2020 and the already registered Murga/Djian literature remain prior art for distinguishing horizon involvement from horizon as a prior delimiting condition.

No fresh evidence licenses identifying `Captured`, `NonExhaustible`, `Independent`, or a finite `List Horizon` with Marion's complete saturated-phenomenon vocabulary.

## Reverse check against the strongest formal baseline

No new Lean theorem is warranted. The branch already proves, more strongly than any new source fact obtained here requires:

- `UniversalStructure ↛ ClosureBridge`;
- explicit mutual `situated ↔ conditions` still does not force closure;
- positive `Conditioned` can coexist with `NonExhaustible`;
- finite family coverage alone does not force a single capturing horizon;
- a common situated dominator / suitable upper-bound mechanism is already isolated as the positive finite-cover route;
- finite lists remain only named-horizon covers, not a semantic horizon-combination operator.

Adding another wrapper would duplicate the verified graph. Lean work for this round is therefore exact-head regression verification of the unchanged, root-reachable theorem graph after this provenance audit, not theorem-count padding.

## Remaining stop condition

The first question remains open only at the revised-primary interpretation gate. A completion route still requires lawful direct body review of one of:

- *Being Given* pp. 209–212 plus the tracked pp. 225–226 passage;
- early *Étant donné* pp. 292–297 plus 314–315;
- a mapped authorized Spanish revised passage;
- an authorized reprint/revision/ePub whose textual identity and relevant body can both be verified.

If the direct revised body preserves the current separation between related horizon, prior conditioning, and exhaustive capture, freeze the interpretation and rerun the final proof/audit stack. If it forces a mismatch, add only the smallest source-required interface.

## Verification requirement

This commit changes documentation only. It is not a Lean verdict by itself. The exact resulting SHA must pass the repository workflow (`python3 scripts/check.py`, full `lake build`, root/source coverage, forbidden-placeholder scan, and kernel axiom dependency audit) before being used as a verified checkpoint.
