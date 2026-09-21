# First-question finite-family dominator equivalence audit — 2026-09-21

Branch: `research/first-question-main-theorem-20260918`

## Scope

The previous finite-family checkpoint proved a positive sufficient direction: if a finite list of situated horizons jointly covers every presented aspect and one situated horizon dominates every admission contributed by members of that list, then the phenomenon is `Captured` by that dominating horizon.

This round checks the converse at the correct quantifier level. The purpose is not to introduce a stronger plural-horizon notion, but to prevent an over-reading of the existing sufficient premise when the family itself is existentially chosen.

## External-first check

Before adding the equivalence wrapper, a targeted GitHub code search was rerun across the live formal baselines:

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163`;
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759`;
- `alexoltean61/msphml-lean@9d6559db6502bc9813dcf028d7ea26ae80e9dc93`.

Search concepts included `finite cover`, `dominator`, `horizon`, and `capture`. No same-shaped reusable API was located. This is only a bounded negative search result, not a claim that no related logical lemma exists elsewhere. The proof is elementary Lean-Core reasoning, so importing a modal-logic or computational-metaphysics stack would add irrelevant dependency surface.

The same-topic interpretation baseline was also rechecked. Secondary direct-access work already registered in the repository (including Mason, Leung, Mackinlay and the Spanish-language horizon literature) continues to distinguish one-horizon, several-horizon, and stronger no-combination cases. Nothing found in this pass licenses treating `List Horizon` as Marion's semantic “combination of horizons”.

The official De Gruyter/Stanford record for *Being Given* and chapter DOI `10.1515/9780804785723-024` still exposes §21 metadata and pagination but not the target BG 209–212 body in this runtime. This preserves the existing evidence status recorded in `FIRST_QUESTION_DEGRUYTER_SECTION21_ACCESS_AUDIT_20260921.md`; no direct-primary status is upgraded and no access control was bypassed.

## Formal result

New theorem:

```lean
first_question_captured_iff_exists_finite_family_with_dominator
```

It proves, for any presentation `M` and phenomenon `p`,

```text
Captured p
↔
∃ finite family hs,
  hs jointly covers every presented aspect using situated members
  ∧ ∃ situated hStar dominating every admission supplied by hs.
```

The reverse implication is exactly the already verified
`first_question_finite_family_cover_with_dominator_implies_capture`.

The forward implication uses no new model or choice principle: if `hStar` already witnesses `Captured p`, choose the singleton family `[hStar]`. Its sole member covers every presented aspect, and `hStar` trivially dominates all admissions of that singleton.

## Reverse-reading consequence

This equivalence is an encoding guardrail. Once the family `hs` is existentially quantified together with a dominating situated horizon, the package is not stronger than `Captured`; a singleton witness always collapses it back to the original one-horizon predicate.

Accordingly:

- the theorem does **not** formalize a semantic operation combining horizons;
- it does **not** say every multiple-horizon cover has a dominator;
- it does **not** weaken the open-chain/no-finite-family counterexamples;
- it does **not** identify `Captured` or its negation with Marion's complete saturated-phenomenon taxonomy;
- the historically interesting question about whether several horizons can be articulated without collapse remains source-controlled.

This is therefore a formal clarification of the strongest applicable baseline, not a new philosophical attribution or an originality claim.

## Validation bookkeeping

Initial code commit: `93c17abb0dfd647706563c1c72e74e9358c4dea7`.
Root-import commit: `a4d63fd6270d3e19aa5caf2a19aa2cfd0bfe4fd8`.
Audit-registration commit: `d1669b497b1b766f4b233e4bdf2a220041a8a358`.
Initial documentation head: `3eb020cbf71431a88d89736c5a63a0f7aaef0cf7`.

The first exact-head PR run (`35617850788`) was informative rather than green. Static checks passed with 13 modules / 102 audited theorems and the full 16-job Lean build succeeded, but the zero-axiom audit reported that the new theorem depended on `propext`. The dependency came from using convenience singleton-membership lemmas in the forward witness proof; the theorem statement and model assumptions were not at fault.

The proof was therefore rewritten by direct constructor/case analysis of singleton list membership, without `simp`, without weakening the audit, and without adding any axiom or dependency. Fix commit: `c7c8a42b1b104df52cb1564825e98f9fa22194c8`.

This updated document is the final handoff commit for the round. Its exact SHA must receive its own `Lean verification` verdict; earlier green heads and the successful build portion of the failed run are not inherited. Required checks remain `python3 scripts/check.py`, full Lean build, root/source coverage, forbidden-placeholder scan, and the `Audit.lean` zero-axiom dependency check including the new theorem.

## Stop gate

The first research question is not marked complete by this formal equivalence. The remaining material gate is unchanged: lawful direct-body review of a reliably mapped revised Marion route (BG 209–212 plus the tracked later check, early ED 292–297 plus 314–315, authorized SD mapping, or an equivalent authorized revised reprint/translation). Only a direct-text mismatch should trigger another semantic interface change; otherwise the interpretation can be frozen and the final proof/audit stack rerun on the frozen SHA.
