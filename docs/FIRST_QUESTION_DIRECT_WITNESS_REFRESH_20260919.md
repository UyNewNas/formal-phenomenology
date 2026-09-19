# First-question direct witness and source refresh — 2026-09-19

## Scope

This checkpoint continues PR #31 (`research/first-question-main-theorem-20260918`) from repository head `edb95bf888a86eaa3703dde17f667b67f4d823fe`.  It does not change any philosophical primitive or historical attribution.  The purpose is twofold:

1. expose, at the project entry-point level, the already existing finite countermodel in the most literal existential form matching the natural-language question; and
2. rerun the external-work / source gate before doing so.

## External-work gate

### Lean / formal-phenomenology overlap

A targeted GitHub code search of `novaspivack/phenomenology-lean` for horizon / exhaustibility / Marion / saturation terminology returned no matching horizon API that could replace the present thin wrapper.  The repository remains prior art for Lean formal phenomenology and countermodel work, not a source for the theorem added here.

The existing LogiKEy / AFP records remain methodological prior art for semantic embeddings, computational metaphysics, computational hermeneutics, and countermodel-assisted reconstruction.  No new general logical infrastructure is introduced in this round, so no large dependency or port is justified.

The new declaration is therefore classified as **thin local reuse**, not new logic: it merely packages the already audited theorem `splitModel_situatedExcess`.

### Same-topic interpretation refresh

Fresh searches were run around *Being Given* pp. 209–212 / §21 and the formal Spanish translation *Siendo dado* pp. 341–342.

- King-Ho Leung's peer-reviewed open full text continues to quote *Being Given* pp. 211–12 for the claim that the saturated phenomenon does not depend on a horizon understood as a condition of possibility.  This remains secondary evidence and does not replace the target primary book body.
- Brock Mason's open Aporia paper again supplies a page-specific secondary reconstruction of the one-horizon / multiple-horizon / no-combination sequence at *Being Given* 210–11.  It is useful for cross-checking order, not for closing the primary gate.
- Searches also surfaced unauthorised full-book mirrors of *Siendo dado*.  They were deliberately excluded from the stop condition and were not used as primary evidence.
- The already registered Lavoisier public excerpt endpoint for PUF EAN `9782130807490` was retried.  The web fetch still identifies the response as `application/epub+zip`; the current binary-ingestion path still cannot ingest the body.  A direct container download attempt also failed before content retrieval because the runtime could not resolve the host.  No login, DRM, preview, borrowing, or access restriction was bypassed.

Conclusion: the historical stop gate remains open.  This round found no lawful direct body text for revised §21 and therefore makes no change to the `situated / conditions / Exhausts` interpretation ledger.

## Formal change

`FormalPhenomenology/FirstQuestion.lean` now exposes:

```lean
theorem first_question_situated_nonExhaustible_witness :
    ∃ M : Presentation, M.HasSituatedExcess := by
  exact ⟨splitModel, splitModel_situatedExcess⟩
```

This is intentionally only a project-level witness.  `HasSituatedExcess` already means that some actually appearing phenomenon is both `Structured` and `NonExhaustible`; `splitModel_situatedExcess` had already verified such a finite model.  The wrapper makes the countermodel corresponding to

```text
"appears in / has a horizon"  ↛  "is exhaustible by some related horizon"
```

explicitly available without asking a reader to reconstruct the existential witness from the negated universal implication.

No new model, definition, classical principle, axiom, or historical attribution was added.  The existing `first_question_complete_formal_answer` remains unchanged in logical strength; its documentation now points to the separate witness.

`Audit.lean` includes the new declaration in the repository axiom audit.

## Verification status

Code commits in this checkpoint:

- `75b6e5c68344e1c89415114a4794b67c219b92d3` — expose the direct witness;
- `6bc586685638aef7b2e830a0333458a6e1166e83` — add the declaration to `Audit.lean`.

This document is a follow-up commit on the same branch.  The exact final SHA must pass the repository `Lean verification` workflow before any kernel/build claim is made.  Prior green runs from earlier PR heads are not reused as evidence for this checkpoint.

## Remaining stop gate

The first research question is still not complete.  The remaining material gap is lawful direct review of revised §21 body text: BG pp. 209–212, early ED pp. 292–297, SD pp. 341–342, or a reliably mapped formal reprint/translation carrying the revised passage.  Once that body is directly reviewable, the interpretation can be frozen or minimally corrected, followed by final build/root-coverage/axiom/CI verification on one exact SHA.
