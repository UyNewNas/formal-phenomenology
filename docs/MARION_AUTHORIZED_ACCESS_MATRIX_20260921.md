# Marion revised-text authorised access matrix — 2026-09-21

Branch: `research/first-question-main-theorem-20260918`
Parent head inspected before this write: `234b2080e7095a333598b767d4e7b2c6988c14a9`.

## Purpose

The narrow first-question Lean package is already formally closed at the current interpretation level.  The remaining stop gate is textual: lawful direct review of the revised §21 argument (plus the tracked later intention/intuition passage) without silently identifying related horizon, conditioning horizon, or single-horizon capture with Marion's full saturated-phenomenon taxonomy.

This round therefore consolidates the authorised/public access routes into one matrix so later runs do not mechanically repeat the same retailer and catalogue searches.  No login, purchase, borrow-session manipulation, reader-internal API, hidden endpoint construction, DRM removal, or access-control bypass was attempted.

## External-first formal recheck

Before changing any formal surface, targeted default-branch code searches were rerun on:

- `novaspivack/phenomenology-lean`;
- `cbenzmueller/LogiKEy`;
- `alexoltean61/msphml-lean`.

The query family `horizon exhaust saturation Marion conditioning captured` returned no indexed same-shaped API.  This is only a bounded reuse check, not a claim that no related work exists.  The reuse decision remains unchanged: direct Lean formal-phenomenology prior art plus computational-hermeneutic/modal-logic method precedents, but no replacement for the small project-local `situated / conditions / Exhausts` interface.

## Access matrix

| Route | Edition / identity | Public state checked this round | Evidence status for stop gate |
| --- | --- | --- | --- |
| De Gruyter / Stanford §21 DOI `10.1515/9780804785723-024` | *Being Given* §21, pp. 199–212 | chapter metadata / pagination; target body not exposed in this runtime | publisher metadata only |
| Google Books, *Being Given* | Stanford 2002 English translation | limited preview record confirms chapter starts (§21 p.199, §22 p.212, §23 p.221) and indexed terms; pp. 209–212 / 225–226 not exposed | metadata / index only |
| VitalSource | Stanford eText ISBN `9780804785723` | lawful purchasable eText exists; no purchased/authenticated body available to this automation | authorised route, body not reviewed |
| Perlego | Stanford eText / PDF-or-ePUB catalogue entry | lawful subscription route exists; catalogue / TOC only without authenticated entitlement | authorised route, body not reviewed |
| Open Library / Internet Archive | 1997 PUF *Étant donné*, ISBN `2130486770`, IA id `etantdonneessaid0000mari_w5n7` | catalogue confirms the exact early edition; IA marks `Access-restricted-item: true`, `printdisabled`, and exposes no suitable download file to the unauthenticated runtime | exact early-edition route, body not reviewed |
| Google Books, 1997 PUF *Étant donné* | early French pagination track, 452 pp. | bibliographic / inside-book index terms only; ED 292–297 / 314–315 still not exposed | metadata / index only |
| PUF revised e-book distributor routes (Lavoisier / Kobo / Casa del Libro / Vivlio) | EAN `9782130807490` | public sample affordances and product metadata exist; target body was not exposed; retailer-facing edition/date labels remain inconsistent enough that page arithmetic is unsafe | authorised revised route, unmapped body |
| Editorial Síntesis / Spanish book trade | *Siendo dado*, Javier Bassas Vila trans., 2008, ISBN `9788497565561` | Casa del Libro / Fnac / Google Books confirm edition metadata; Google Books is metadata-only in this runtime | formal translation metadata only |
| Buscalibre Spanish route | same ISBN `9788497565561` | public page still advertises `Empezar a Leer`, but no stable ordinary-body link is exposed to this runtime; no dynamic/private preview API was guessed | public preview surface, body not reviewed |
| Javier Bassas Vila, translator presentation / review, DOI `10.5944/rif.6.2008.5524` | author of the Spanish translation discussing the 2008 edition | lawful open article confirms that the Spanish edition translates the 1997 *Étant donné* and records translator/editorial provenance; it is not Marion's §21 body | provenance corroboration, not direct primary |

A useful negative clarification follows from the matrix: **availability of a lawful commercial or library route is not the same thing as this runtime having lawful body access**.  Conversely, lack of unauthenticated body access is not evidence that the text is unavailable to a reader with a valid subscription, purchase, or library borrow entitlement.

## Source / interpretation consequence

Nothing newly readable at author-body level changes the current mapping:

- `situated` remains the weak related-horizon relation;
- `conditions` remains the weak project-facing relation for horizon as prior conditioning / possibility-condition;
- `Captured` remains existential exhaustive coverage by one related horizon in the encoded aspect language;
- `NonExhaustible` remains failure of that single-horizon capture;
- none of these is promoted to a definition of Marion's complete saturated phenomenon.

The current formal answer therefore should **not** be enlarged simply because more authorised access routes were catalogued.  In particular, no new horizon-combination primitive or free predicate is justified by this round.

## Lean decision and validation

No Lean declaration is changed in this source-only round.  This is deliberate: the unresolved item is direct revised-primary access / interpretation, not a missing logical implication.  The Lean task for this SHA is regression verification of the existing root-reachable first-question package rather than theorem-count growth.

The parent SHA's green workflow is not inherited.  The new exact SHA must independently pass the repository `Lean verification` workflow, including `python3 scripts/check.py`, full `lake build`, root/source coverage, forbidden-placeholder scan, and the zero-axiom audit before this checkpoint is considered verified.

## Remaining gate / next efficient entry

Completion still requires lawful direct body review of one of the already mapped routes:

1. BG pp. 209–212 plus pp. 225–226;
2. early ED pp. 292–297 plus pp. 314–315;
3. the mapped Spanish revised target (currently SD pp. 341–342 plus the later mapped intention/intuition passage); or
4. an authorised revised reprint/translation whose textual identity and corresponding body are both directly checkable.

Future public-only runs should avoid re-enumerating the routes above unless their access state changes.  Prefer genuinely new publisher/library preview exposure, a legally accessible body in an authorised repository, or a verified user-supplied copy.  If direct revised text preserves the current related-horizon / conditioning distinction, freeze interpretation and run the final full proof/audit stack; if it does not, make only the smallest text-forced interface change.
