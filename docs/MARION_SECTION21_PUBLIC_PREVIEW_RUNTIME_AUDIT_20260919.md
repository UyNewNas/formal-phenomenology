# Marion §21 public-preview/runtime recheck — 2026-09-19

## Scope and repository checkpoint

This pass continues PR #31 (`research/first-question-main-theorem-20260918`) from exact head `5d987e19f356c9875f7746a38876da21d5c9b670`, with `master` still at `c6f527875c0a905c33dac68176ed01a2c64b97c3`. Before writing, the current `AGENTS.md`, `README.md`, `docs/ROADMAP.md`, `docs/RESULTS.md`, `docs/INTERPRETATION.md`, `docs/SOURCES.md`, `docs/PRIOR_ART.md`, PR #31 metadata/comments/reviews, `FormalPhenomenology/FirstQuestion.lean`, and the latest source-route audits were reread.

At the pre-write head, PR #31 is open, non-draft and mergeable, with no submitted reviews. Both exact-head `verify` checks are `completed/success` (runs `35444419902` and `35444416704`). Those results are only the baseline for this pass and are not inherited by the documentation commit below.

The narrow formal target remains `first_question_complete_formal_answer`. It already packages the six facts required by the current relation language, including the explicit negative fact that weak `Independent` does not by itself entail `NonExhaustible`. This pass therefore asks whether new source evidence forces a semantic or Lean change before adding any theorem or primitive.

## External-work / reuse gate

A bounded fresh GitHub search was repeated for the present object rather than for generic formal philosophy:

- `novaspivack/phenomenology-lean`: search for `horizon Marion saturated conditioning exhaust` returned no matching code result;
- `cbenzmueller/LogiKEy`: search for `phenomenology horizon Marion saturated` returned no matching code result.

These negative searches are only a reuse decision, not an originality claim. The previously audited Isabelle/AFP computational-metaphysics and computational-hermeneutics work remains methodological prior art, and the same-topic Merleau-Ponty/Marion literature already recorded in `docs/PRIOR_ART.md` continues to constrain historical interpretation.

No new logical object is proposed in this pass. Therefore the correct engineering decision remains thin reuse of the existing Lean-Core `situated / conditions / Exhausts` layer rather than importing or rebuilding a generic semantic framework.

## Official/public route recheck

### Google Books — Stanford English edition

The ordinary public Google Books page for *Being Given* was reopened through the official book record:

`https://books.google.com/books/about/Being_Given.html?id=gsGEIubkXecC`

The public surface continues to expose edition metadata, a `Preview this book` control, selected front-matter/index pages, and the table-of-contents boundaries placing §21 at p. 199, §22 at p. 212 and §23 at p. 221. It did **not** expose reviewable body text for pp. 209–212 in this pass.

Following the public common-term navigation for `horizon` did not yield target-page text; the request was diverted to Google's anti-automation interstitial. This is recorded as a runtime access boundary, not as textual evidence and not as a reason to weaken the direct-primary gate.

Status:

`PRIMARY-PUBLISHER/GOOGLE-BOOKS-LIMITED-PREVIEW / TARGET-BODY-NOT-REVIEWED`.

### Formal Spanish translation

The public Google Books record for Jean-Luc Marion, *Siendo dado: ensayo para una fenomenología de la donación* (Javier Bassas Vila trans., Editorial Síntesis, 2008) was rechecked. It confirms the already registered formal translation metadata but does not expose the mapped §21 target body at SD pp. 341–342 in the current public surface.

This does not change the existing crosswalk status: SD pp. 341–342 remains a lawful target route, but exact secondary page anchors are not a substitute for direct review of the formal translation body.

Status:

`PRIMARY-FORMAL-TRANSLATION-METADATA / TARGET-BODY-NOT-REVIEWED`.

### Lavoisier public PUF excerpt

The registered public excerpt endpoint

`https://e.lavoisier.fr/extract/523630`

was retried through ordinary public access. The web reader again identified the resource as `application/epub+zip`, which it cannot render as page text. A normal runtime download/request attempt then failed at DNS resolution for `e.lavoisier.fr`. No login, DRM removal, geographic-control bypass, hidden preview API, or alternative privileged transport was attempted.

This is a transient/runtime ingestion limitation, not evidence that the public excerpt lacks §21 and not a permission blocker requiring user action.

Status:

`PUBLIC-PUBLISHER-RETAIL-EXCERPT / EPUB-CONTENT-TYPE-CONFIRMED / BODY-NOT-INGESTED`.

### Search-result hygiene

Fresh exact-title/page searches also surfaced non-publisher full-book mirrors and secondary reconstructions of the one-horizon / several-horizon / no-combination sequence. They were deliberately excluded from the direct-primary evidence chain. Existing scholarly secondary crosswalks already provide the navigation function without treating an unauthorized copy as source proof.

Exact official-domain searches for the already registered De Gruyter/Fordham/Routledge/Síntesis routes did not reveal a new publicly reviewable revised §21 body in this pass. This is an access result only; it is not evidence that no such text or external scholarship exists.

## Formalization/reverse-check decision

The source recheck yields no new author-body constraint that changes the current formal semantics. The relevant scope checks remain:

```text
situated    -- a horizon is related to an appearance
conditions  -- a horizon functions as a prior condition / constraint
Exhausts    -- extensional coverage in the current aspect language
```

and the repository must continue not to identify:

```text
Independent = Horizonless
NonExhaustible = Marion's saturated phenomenon
Captured = Marion's technical “saturates a horizon”
```

The strongest current formal baseline is already explicit in `first_question_complete_formal_answer`: bare horizon structure does not entail closure; weak `Independent` alone does not entail `NonExhaustible`; on actual appearances the exact implication condition is absence of an appearing `Captured ∧ Independent` witness; and producing a `Conditioned` witness additionally requires captured-domain double-negation stability. The split-model guardrail also records that `NonExhaustible` only forbids one situated horizon from exhausting all encoded aspects and is compatible with aspectwise coverage by different horizons.

Because no newly reviewed primary body changes those premises, adding a new primitive or theorem in this pass would only increase unconstrained modelling freedom or duplicate an already audited fact. The Lean action is therefore **source-triggered regression of the existing complete narrow target**, not theorem-count expansion. The branch CI on the new documentation SHA must still rebuild the Lean tree, run `python3 scripts/check.py`, verify root/source coverage, and execute the listed `#print axioms` audit before this pass is considered validated.

## Stop gate and next entry

The first research question is **not complete**. The remaining material gate is still lawful direct body review of one reliably mapped revised §21 route:

- *Being Given* pp. 209–212; or
- early *Étant donné* pp. 292–297; or
- *Siendo dado* pp. 341–342; or
- an authorized revised reprint/translation carrying the same passage with a reliable textual crosswalk.

Once such body text is directly reviewable, compare the context and ordering of (i) horizon in general, (ii) horizon as prior/delimiting condition, and (iii) one / several / combined horizons against the deliberately weak `Independent` interface. If the mapping survives, freeze the interpretation without expanding into full saturation; if the text forces a different first-question distinction, add only the smallest interface required and rerun the prior-art gate.

This pass does not use access failure as novelty evidence, does not replace primary review with exact secondary quotation, and does not weaken the existing stop condition.