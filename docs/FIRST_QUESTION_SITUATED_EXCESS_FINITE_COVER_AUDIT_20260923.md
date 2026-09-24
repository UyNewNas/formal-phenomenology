# First-question situated-excess / finite-cover obstruction audit

Date: 2026-09-23

Branch: `research/first-question-main-theorem-20260918`

## Object reviewed

This round asks for the project-level meaning of the finite-family polarity proved in the immediately preceding checkpoint.  The pointwise result

`first_question_nonExhaustible_iff_every_finite_cover_has_no_dominator`

already says that `NonExhaustible p` is equivalent to: every finite family that jointly covers the encoded aspects of `p` lacks a single situated horizon that dominates every member of that family.  The bounded question here is whether the existing project witness predicate `HasSituatedExcess` can be exposed in exactly that same finite-cover language without adding a new semantic primitive.

## External-first / reuse check

The addition is a direct lifting of an already-audited project theorem, but the current object was still checked against the registered external baselines before writing code.

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163`: a fresh GitHub code search for `horizon cover dominator exhaust captured` returned no same-shaped horizon/exhaustibility API to reuse.
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759`: a fresh code search for `finite cover upper bound relation` returned no matching object.  LogiKEy remains methodological prior art for semantic embeddings, model comparison, and computational hermeneutics rather than a dependency for this elementary quantifier rearrangement.
- `alexoltean61/msphml-lean@9d6559db6502bc9813dcf028d7ea26ae80e9dc93`: the scoped `horizon exhaust cover` search returned no matching API.  Its modal-logic infrastructure is not needed by the current relation-language theorem.
- Lean Core already supplies every logical operation used by the proof.  No Mathlib or other dependency is introduced merely to restate an existing equivalence under an existential witness.

These searches are bounded reuse checks, not novelty claims.  The formal content remains elementary and is not presented as a new logical result.

## Same-topic interpretation / source boundary

A fresh same-topic source check does not change the historical mapping.  The Stanford Encyclopedia of Philosophy entry on Merleau-Ponty describes the world as the ultimate horizon and explicitly ties perspectival limitation to the world's depth and inexhaustibility; this is secondary overview evidence consistent with the project's already direct-checked Merleau-Ponty passages, not a replacement for them.

The Marion revised-book stop gate remains unchanged.  The lawful publisher / Google Books / formal-reprint routes still establish chapter provenance and pagination, but this round did not directly review the target revised body (BG 209–212 and 225–226, early ED 292–297 and 314–315, or a reliably mapped authorized equivalent).  No access control or unauthorized full-book mirror was used.

Accordingly the finite-family vocabulary stays explicitly formal: a `List Horizon` is only a finite family of named horizons and a common `admits`-dominator is an extensional model condition.  Neither is identified with Marion's stronger historical language about one, several, or a combination of horizons.

## Formal increment

`FormalPhenomenology/FirstQuestionFiniteFamily.lean` now adds:

`first_question_hasSituatedExcess_iff_exists_finite_cover_obstruction`.

It states constructively:

```text
HasSituatedExcess M
↔
∃ p,
  appears p ∧ Structured p ∧
  ∀ finite family hs,
    hs jointly covers every encoded aspect of p
    → no situated horizon dominates every member of hs.
```

The proof is a thin project-level lifting of
`first_question_nonExhaustible_iff_every_finite_cover_has_no_dominator` through the existing definition of `HasSituatedExcess`.  It adds no model family, philosophical predicate, classical principle, custom axiom, or semantic horizon-combination operation.

The value of the wrapper is scope discipline: the repository's explicit counterexample notion can now be read either as an appearing structured `NonExhaustible` witness or, equivalently, as an appearing structured witness with a finite-cover/common-dominator obstruction.  This does not strengthen `NonExhaustible` to “no semantic combination of horizons can suffice.”

## Verification status

The theorem is registered in `Audit.lean` so the normal workflow will include its `#print axioms` report.  The code was committed before this note.  Exact kernel/build/source-coverage status must be taken only from GitHub Actions on the final branch SHA after this documentation commit; an earlier green head is not counted as validation of this round.

## Stop-gate effect

None.  The formal answer is slightly better normalized, but the first research question remains open until the revised Marion body is lawfully and directly checked, the interpretation is frozen against that text, and the resulting final SHA passes the full build/source-coverage/kernel-axiom audit.
