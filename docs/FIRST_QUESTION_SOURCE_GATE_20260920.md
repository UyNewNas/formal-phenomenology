# First-question source-gate audit — 2026-09-20

This checkpoint advances only the remaining source gate for the first horizon/exhaustibility question.  It does not add a new philosophical primitive, alter the formal answer, or upgrade secondary evidence into a primary-text reading.

## 1. External-work / reuse gate refreshed

Before touching the first-question package, the run rechecked the current external baselines actually relevant to the existing model.

- `novaspivack/phenomenology-lean` remains at commit `75230e4eab333ad0fc47573747521ccc1a31a163` (2026-05-20).  No newer upstream commit is available to re-audit, so the previous result stands: it is direct Lean formal-phenomenology prior art, but it does not provide a Marion horizon/exhaustibility API replacing this repository's narrow `situated / conditions / Exhausts` layer.
- `cbenzmueller/LogiKEy` remains at commit `b29954b0876d7991baf12f17378f31700f9de759` (2026-09-13).  Its current work continues to supply a computational-philosophy / semantic-embedding methodology baseline, not a same-topic theorem or importable horizon model for the present elementary relation language.
- Targeted web searches were repeated around `Being Given`, `Étant donné`, `Sketch of the Saturated Phenomenon`, one/several/combined horizons, `condition of possibility`, and the formal Routledge 2004 reprint.  The strongest retrievable body quotations in this pass were still secondary exact-page reconstructions (notably the already known Leung/Mason/Moran lines).  They constrain interpretation but do not satisfy the direct-primary stop gate.

Reuse decision: **no new dependency and no new generic logic API**.  The existing first-question Lean layer remains the minimal implementation.

## 2. Authorized Routledge / Google Books reprint route rechecked

The formal reprint route was tested again through Google Books' page for:

- Dermot Moran / Lester Embree (eds.), *Phenomenology: Critical Concepts in Philosophy*, vol. 4, Taylor & Francis / Routledge, 2004, ISBN `0415310423` / `9780415310420`;
- Google Books volume id `a_a5bp4BlRYC`.

The current Google Books surface directly confirms:

1. the volume is Taylor & Francis, 2004;
2. `Sketch of the saturated phenomenon: the horizon` begins at volume p. 5;
3. the next listed contribution begins at p. 29, so the reprinted `Sketch` occupies the expected p. 5–28 range already established by Moran's bibliography;
4. Google Books labels the volume as previewable and exposes only selected pages / common-term indexing in this runtime.

A click-through to the preview returned only the front-cover surface; the word-cloud / within-volume `horizon` route was redirected to Google's automated-traffic interstitial and did not expose the chapter body.  Exact-phrase searches for the BG 210–212 horizon sequence likewise surfaced secondary quotations rather than the reprint's primary body.

Evidence status therefore remains:

`SECONDARY-EXACT-REPRINT-PROVENANCE + PUBLISHER/GOOGLE-BOOKS METADATA + AUTHORIZED-PREVIEW-SURFACE`

and **not** `PRIMARY-DIRECT-PAGE`.

This is still useful source engineering: the authorized reprint route is live and independently confirms the exact chapter slot, but the current runtime cannot lawfully inspect the target internal pages.  No access control was bypassed, and no unauthorized full-book mirror was used.

## 3. Same-topic interpretation cross-check

The fresh search again recovered the already registered secondary reconstruction of BG 210–211: one-horizon saturation, spillover into multiple horizons, and the strongest case where no combination of horizons can tolerate the phenomenon's absoluteness.  It also recovered the already registered BG 211–212 wording that the saturated phenomenon is freed because it does not depend on horizon as a condition of possibility.

These points continue to support the repository's current semantic guardrails:

- `NonExhaustible` is only a no-single-related-horizon exhaustion predicate;
- `IndividuallyCoverable` shows that no-single-horizon exhaustion does not rule out aspectwise coverage by horizons chosen per aspect;
- `Independent` is a deliberately weak absence-of-`conditions` witness, not a definition of Marion's complete saturated phenomenon;
- the current model must not identify `Captured` with Marion's full one/several/combined-horizon taxonomy.

Because this pass produced no new direct-primary body evidence and no changed interpretation constraint, adding a new horizon-combination primitive would increase unconstrained model freedom rather than answer the first question more faithfully.

## 4. Formalization consequence

No Lean theorem is added in this checkpoint.  The project-level target already packages the required narrow formal answer in `first_question_complete_formal_answer`, and the current remaining gap is evidential rather than logical.

The correct Lean action for this round is therefore **regression verification on the new source-audit SHA**, not theorem-count growth.  A green build must still confirm:

- root import coverage through `FormalPhenomenology.lean`;
- zero forbidden placeholders;
- all named results in `Audit.lean` retain the repository's zero-axiom audit status;
- `first_question_complete_formal_answer` and its component witnesses still elaborate under the pinned toolchain.

## 5. Stop-gate status

The first research question remains open.  The only material gate is still lawful direct body-text review of one of:

- BG pp. 209–212 (plus the already tracked pp. 225–226 check),
- early ED pp. 292–297 (plus pp. 314–315),
- SD pp. 341–342 where reliably mapped,
- or an authorized revised reprint / translation carrying the same §21 body and permitting direct textual comparison.

Once such body text is directly reviewable, the next action is not to broaden the model by default: first compare the one/multiple/combined-horizon sequence and the horizon-as-condition language against the current weak `Independent` mapping.  Only a mismatch forced by the primary text warrants a minimal interface change.
