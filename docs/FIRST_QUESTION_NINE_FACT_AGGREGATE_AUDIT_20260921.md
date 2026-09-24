# First-question nine-fact aggregate audit

Date: 2026-09-21
Branch: `research/first-question-main-theorem-20260918`

## Scope

This round does not add a new philosophical primitive, model family, or historical attribution. It aligns the project-level aggregate theorem with an already verified formal guardrail that was added immediately before this round:

`first_question_fixed_pair_cover_is_strictly_weaker_than_capture`.

The aggregate now records nine narrow facts rather than eight. The added conjunct says only that, in the repository's current aspect language, single-horizon capture implies coverage by a fixed pair (using the same horizon twice), while the converse fails in the existing split model where two distinct situated horizons jointly cover every encoded aspect and no single situated horizon exhausts the appearing phenomenon.

This is a finitary quantifier guardrail. It is **not** identified with Marion's stronger one / several / combined-horizon taxonomy.

## External-first recheck

Before changing the aggregate, the following targeted checks were performed.

### Formal work

- `novaspivack/phenomenology-lean`: GitHub code search for `horizon exhaust captured capture saturation` returned no matching API on the indexed default branch. The repository remains direct Lean formal-phenomenology prior art, but no same-shaped fixed-pair/capture theorem was located.
- `cbenzmueller/LogiKEy`: GitHub code search for `horizon exhaust capture finite cover saturation` returned no matching API on the indexed default branch. LogiKEy remains methodological prior art rather than a dependency for this elementary conjunction packaging.
- No generic finite-cover library is imported: the new aggregate conjunct is a direct reuse of an already proved project theorem, so adding Mathlib / Isabelle / modal-logic infrastructure would be disproportionate.

These bounded searches are not nonexistence claims and no external repository was rebuilt in this round.

### Same-topic interpretation and primary-route check

A fresh source search rechecked Marion's revised-book §21 route and its authorized reprint provenance.

- De Gruyter Brill continues to expose official metadata for *Being Given* §21, `Sketch of the Saturated Phenomenon: The Horizon`, pp. 199–212, DOI `10.1515/9780804785723-024`, but the current runtime did not expose the chapter body.
- Google Books currently exposes a limited preview for Moran / Embree, *Phenomenology: Critical Concepts in Philosophy*, vol. 4 (Taylor & Francis, 2004), ISBN `9780415310420`. Its table of contents places Marion's `Sketch of the saturated phenomenon: the horizon` at pp. 5–28 and exposes `horizon` among indexed common terms. This independently confirms the authorized revised-text reprint route already recorded in the repository, but the runtime still did not expose the target body pages or a stable page-text view.
- Secondary literature continues to reconstruct the BG 210–211 sequence as one horizon / additional horizons / a stronger combined case, but that evidence remains secondary and therefore does not close the direct revised-primary stop gate.

No unauthorized full-book mirror was used, and no access control or reader API was bypassed.

## Formal change

Commit `7f6d9f2e3be198a3d6ffa480e25014830a3afb1b` changes only `first_question_complete_formal_answer` and its documentation. It inserts the already named theorem `first_question_fixed_pair_cover_is_strictly_weaker_than_capture` as the fifth conjunct and updates the aggregate proof by direct reuse.

There is no new theorem name, no new axiom, no new classical principle, and no change to the interpretation of `Captured`, `NonExhaustible`, `Independent`, `Conditioned`, or `situated`.

## Verification rule

The existing `Audit.lean` already audits both `first_question_fixed_pair_cover_is_strictly_weaker_than_capture` and `first_question_complete_formal_answer`; therefore no audit-list weakening or count-only edit is needed. The final branch SHA must independently pass the repository workflow running `python3 scripts/check.py`, including `lake build`, root/source coverage, placeholder checks, and the kernel axiom audit.

Until that exact-SHA run succeeds, this aggregate alignment is committed but not claimed kernel-verified.

## Remaining stop gate

The first research question is not completed by this packaging change. The remaining material gate is still lawful direct review of the revised §21 body (BG pp. 209–212 / early ED pp. 292–297, or a reliably mapped authorized revised reprint/translation) together with the tracked later intention/intuition passage. Only source evidence that forces a mismatch should trigger a further semantic interface change.
