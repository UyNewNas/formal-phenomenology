# Marion §21 Eden/Cultura public-preview route audit — 2026-09-19

## Scope and repository state

This round continued PR #31 (`research/first-question-main-theorem-20260918`) from exact head `265be6341b48311b7b60676034808d4cb6db5ed0`; `master` remained `c6f527875c0a905c33dac68176ed01a2c64b97c3` before this write. The first-question narrow formal target was unchanged. The only material stop gate remained lawful direct review of the revised §21 body corresponding to *Being Given* pp. 209–212 / early *Étant donné* pp. 292–297, or a reliably mapped authorized translation/reprint carrying that passage.

Before writing, Issue #1 and its current checkpoint, open Issues #2/#3, PR #31, PR comments/reviews/threads, `AGENTS.md`, the first-question result/roadmap material, and the current branch head were re-read. PR #31 had no submitted reviews, review threads, or conversation comments.

## Prior-art / reuse gate

A fresh bounded GitHub repository/code search for Jean-Luc Marion + horizon + Lean/formal phenomenology again found no same-shaped external Lean/Isabelle/Rocq/Agda implementation that would replace the present narrow `situated / conditions / Exhausts` relation layer. This is a bounded negative search, not an originality claim. The already pinned engineering baselines remain the relevant ones: `novaspivack/phenomenology-lean` as direct Lean formal-phenomenology precedent and LogiKEy / AFP computational-metaphysics / computational-hermeneutics work as method precedent.

Fresh web checking also re-confirmed current secondary interpretation around Marion's horizon as a limiting/possibility-condition and the saturated phenomenon's excess over such conditioning. Those materials remain secondary prior art and do not supply the revised §21 primary body or an extensional `Captured -> Conditioned` theorem.

Reuse decision: **no new logic framework, philosophical primitive, or theorem wrapper is justified by this round's evidence.** Keep the already kernel-checked first-question target unchanged and spend the formal-validation part of the round on exact-head regression verification.

## New authorized preview-route result

Cultura's public product page for the exact PUF eBook was directly inspected:

- title: *Étant donné - Essai d'une phénoménologie de la donation*;
- author: Jean-Luc Marion;
- publisher: PUF;
- EAN: `9782130807490`;
- EPUB, 540 pages;
- public product URL: `https://www.cultura.com/p-etant-donneessai-d-une-phenomenologie-de-la-donation-3618528.html`.

The page exposes a public `feuilleter` link whose destination is on the publisher/distributor asset host `assets.edenlivres.fr`. Following that public link through the normal web interface resolved the exact target URL:

`https://assets.edenlivres.fr/medias/c9/df343fcd743828ca0a15ea8253c96b9e65a642.epub`

This is a materially stronger access-route result than merely knowing that a retailer has a preview button: the exact public preview asset URL is now identified from the retailer's own public product page.

However, the current execution environment could not ingest the asset body. The normal web fetch returned a cache-miss failure, and a normal download attempt also failed. No login, purchase flow, DRM/LCP bypass, alternate credential, or access-control circumvention was attempted.

Evidence status:

`AUTHORIZED-PUBLIC-RETAIL-PREVIEW-LINK / EXACT-EDEN-ASSET-URL-RESOLVED / BODY-NOT-INGESTED`.

This **does not** count as direct-primary page review and therefore does not close the §21 stop gate.

## Parallel public-preview recheck

The current PUF eBook also remains publicly listed on Vivlio / E.Leclerc under the same EAN with a `Lire un extrait` control. The indexed product metadata confirms the PUF edition and public excerpt affordance, but direct opening of the Vivlio product surface returned HTTP 403 in this environment, so no target-body text was reviewed there either.

The previously registered Lavoisier public excerpt route also remains source-route evidence only: its response is an EPUB payload that the web reader cannot render here. The project continues to distinguish public-preview provenance from successfully reviewed primary body text.

## Formalization decision

No new source from this round changes the current three-axis distinction:

```text
situated    -- a horizon is related to the appearance
conditions  -- a horizon functions as a prior condition / constraint
Exhausts    -- extensional coverage in the current aspect model
```

In particular, this round gives no evidence for identifying `Independent` with `Horizonless`, `NonExhaustible` with Marion's full saturated phenomenon, or the project's `Captured` with Marion's phrase "saturates a horizon". It also supplies no historical premise for `Captured -> Conditioned`, captured-domain double-negation stability, or the stronger same-horizon `ExhaustiveCaptureConditions` bridge.

Accordingly the correct Lean action is **no theorem-count expansion**. `first_question_complete_formal_answer` remains the complete narrow formal target; changing the language here would be source-unforced model growth.

## Validation boundary

The pre-write exact head `265be6341b48311b7b60676034808d4cb6db5ed0` had a real successful Actions run `35418628847`; its `verify` job completed the `Build, source coverage, and kernel axiom audit` step successfully. That status is not inherited by this new documentation commit. The new exact SHA must receive its own workflow verdict before any new-head validation claim is made.

## Remaining gate and next entry

The first research question remains open. The next source entry is now narrower and concrete:

1. retry the exact public Eden preview asset through ordinary supported fetch paths if the environment can ingest it;
2. if it is a genuine preview EPUB, inspect only its lawful manifest/TOC/body to determine whether revised §21 is included and, if so, review the relevant horizon / possibility-condition sequence;
3. otherwise continue official publisher/library/authorized-translation routes for BG pp. 209–212 / early ED pp. 292–297;
4. only after direct body review, freeze the historical mapping and rerun build, `scripts/check.py`, root coverage, full axiom audit, and Actions on the same final SHA.

No direct-primary completion claim is made in this round.