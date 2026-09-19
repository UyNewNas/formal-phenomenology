# Marion §21 authorized-preview recheck — 2026-09-19

## Scope and pre-write repository state

This round continued PR #31 (`research/first-question-main-theorem-20260918`) from exact head `dad01ef48b41db284f3ab2804af7365c79454258`; `master` remained `c6f527875c0a905c33dac68176ed01a2c64b97c3`. The existing narrow formal target `first_question_complete_formal_answer` had already passed the branch push and pull-request verification runs on that exact head. The only material stop gate remained lawful direct review of the revised §21 body corresponding to *Being Given* pp. 209–212 / early *Étant donné* pp. 292–297, or a reliably mapped authorized translation/reprint carrying that passage.

No new philosophical primitive or non-trivial logical API was proposed in this round. The purpose was to recheck current authorized preview routes and the same-topic external baseline before deciding whether the already verified Lean interface needed any change.

## External-work / reuse gate

A fresh bounded GitHub code search for `Jean-Luc Marion horizon Lean phenomenology` again returned this repository, generic phenomenology text/data, and non-formal commentary, but no same-shaped Lean/Isabelle/Rocq/Agda implementation of the present `situated / conditions / Exhausts` split or the appearing-domain conflict theorem. This negative search is not an originality claim. The previously pinned engineering baselines therefore remain the relevant ones: `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163` as direct Lean formal-phenomenology precedent and LogiKEy / AFP computational-hermeneutics work as method precedent.

Same-topic web search also surfaced a 2026 MDPI article, “Givenness as the Opening of All Phenomenological Possibility: Marion’s Overcoming of Henry Through Heidegger” (2026, *Philosophies* 11(4):145). Its public full text characterizes Marion’s radicalized phenomenality as not reducible to a subject’s intentional/affective/ontological horizon. This is useful current secondary corroboration for keeping horizon-relatedness distinct from prior conditioning, but it is still secondary interpretation and does not provide the revised §21 body or any formal bridge.

Reuse decision: keep the current Lean-Core relation layer unchanged; do not add another horizon/saturation predicate or duplicate a generic logic framework.

## Authorized English eBook preview routes newly rechecked

The Stanford University Press English eBook (`9780804785723`) currently has several public retail surfaces that explicitly advertise a preview/sample:

- Rakuten Kobo product page: `https://it.kobo.com/us/en/ebook/being-given` — author Jean-Luc Marion, Stanford University Press, 408 pages, EPUB 2, and a public `Preview Now` control.
- Indigo product page: public search surface labels a `Free Preview` for the same English edition (`9780804734110`).
- Barnes & Noble product surface: public search surface labels `Read Sample` for *Being Given*.
- De Gruyter Brill book page: `https://www.degruyterbrill.com/document/doi/10.1515/9780804785723/html` — public metadata and contents place §21 at p. 199, §22 at p. 212, §23 at p. 221; the book-level page also exposes some publicly available front matter.

These routes are legitimate publisher/retailer surfaces, but the current non-interactive web interface exposes the preview controls only as UI buttons, not as a reviewable target-body text stream. Directly opening the De Gruyter §21 chapter endpoint returned HTTP 405 rather than chapter body. No account, purchase, geographic restriction, DRM, or preview boundary was bypassed.

Evidence status:

`AUTHORIZED-ENGLISH-RETAIL-PREVIEW-SURFACES-CONFIRMED / TARGET-BODY-NOT-REVIEWED`.

## French PUF public excerpt route recheck

The previously registered Lavoisier public excerpt endpoint for PUF EAN `9782130807490`, `https://e.lavoisier.fr/extract/523630`, still resolves through the web reader as an `application/epub+zip` payload. The web reader therefore stops with unsupported content type rather than rendering the EPUB body. A normal container/download attempt in this round also failed because the execution environment could not resolve the host; no alternate or privileged transport was used.

This confirms the earlier classification rather than upgrading it:

`PUBLIC-PUBLISHER-RETAIL-EXCERPT / EPUB-CONTENT-TYPE-CONFIRMED / BODY-NOT-INGESTED`.

## Cross-check against the strongest current secondary baseline

A directly indexed author-public PDF by Dermot Moran continues to identify Marion’s `Sketch of the Saturated Phenomenon` in *Being Given* pp. 199–221 and quotes the p. 211 characterization of the saturated phenomenon as unconditioned by a horizon. The same paper records the formal Routledge 2004 reprint in *Phenomenology: Critical Concepts*, vol. 4, pp. 5–28.

This remains strong navigation/crosswalk evidence but, under the project’s source discipline, an exact secondary quotation is not a substitute for direct review of revised §21. It therefore cannot by itself close the stop gate.

## Formalization decision

No source obtained in this round forces a change to the existing three-axis interface:

```text
situated    -- a horizon is related to the appearance
conditions  -- a horizon functions as a prior condition / constraint
Exhausts    -- extensional coverage in the present aspect model
```

In particular, the new secondary and preview-route evidence gives no basis to identify:

```text
Independent = Horizonless
NonExhaustible = Saturated
Captured = “saturates a horizon”
```

and supplies no historical premise for `Captured → Conditioned`, captured-domain stability, or the stronger same-horizon `ExhaustiveCaptureConditions` bridge. The correct formal action is therefore **no theorem-count expansion**: retain `first_question_complete_formal_answer` as the complete narrow kernel target and spend the round’s formal work on exact-head regression verification rather than manufacture an unconstrained predicate or wrapper.

## Verification boundary and next entry

This documentation commit is intentionally source-only, but the branch CI still rebuilds the complete Lean tree, runs `python3 scripts/check.py`, checks root import coverage, and runs the full `Audit.lean` axiom audit. Green status from `dad01ef48b41db284f3ab2804af7365c79454258` must not be inherited by this new commit; the new exact SHA requires its own Actions verdict.

The first research question remains open unless one of the authorized surfaces actually exposes sufficient revised §21 body context. Next source priority is:

1. normal public access to the Kobo / Indigo / Barnes & Noble sample if the preview body becomes ingestible without login or bypass;
2. normal ingestion of the Lavoisier public EPUB excerpt, followed first by manifest/TOC/page-list inspection to see whether §21 is in the sample;
3. official library/publisher access to *Being Given* pp. 209–212 or an authorized revised translation/reprint with a reliable crosswalk;
4. only after direct body review, freeze the historical mapping and rerun the full build/source/root/axiom audit on the same final SHA.

No direct-primary completion claim is made in this round.