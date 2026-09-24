# First-question finite-family dominator bridge audit

Date: 2026-09-21

Branch: `research/first-question-main-theorem-20260918`

## Why this round exists

The previous reverse audit established a stronger negative guardrail: an actually appearing phenomenon may be `NonExhaustible` and `IndividuallyCoverable` while no finite list of situated horizons jointly covers every presented aspect. That result cleanly separates aspectwise coverage, finite-family coverage, and single-horizon `Captured`, but it left the positive direction implicit: what extra premise is sufficient to turn a finite jointly covering family into one exhaustive situated horizon?

This round isolates one deliberately minimal **formal** answer without adding a horizon-combination primitive.

## External-first check

### Proof/code search

Targeted GitHub code search on 2026-09-21 covered:

- `novaspivack/phenomenology-lean`;
- `cbenzmueller/LogiKEy`;
- `alexoltean61/msphml-lean`.

Search concepts included `horizon`, `finite cover`, `combine`, `exhaust`, and `capture`. No same-shaped API for “finite jointly covering horizons + one horizon dominating the family’s admissions -> single-horizon capture” was located. This is only a targeted negative search result, not a claim that no related result exists anywhere.

The implementation therefore remains a Lean-Core-level local lemma; no Mathlib, LogiKEy, Isabelle/HOL, Rocq, or Agda dependency is justified for this elementary implication.

### Same-topic interpretation check

Fresh literature/web checks used the combinations:

- `"no combination of horizons" Marion saturated phenomenon`;
- `"combination of horizons" Marion "Being Given"`;
- `"horizon" "finite cover" phenomenology formal logic`.

The relevant interpretive baseline remains the already registered one: secondary sources such as Shane Mackinlay’s *Interpreting Excess* and Brock Mason’s discussion of *Being Given* pp. 210–211 explicitly distinguish a multiple-horizon case from the stronger claim that no combination of horizons can tolerate the absolutely saturated phenomenon. These sources constrain interpretation but do **not** supply the present extensional dominator premise, and they do not license identifying a Lean `List Horizon` with Marion’s semantic “combination of horizons.”

A fresh lawful Google Books check of Jean-Luc Marion, *Being Given: Toward a Phenomenology of Givenness* (Stanford UP, 2002) reconfirmed the section pagination (§21 starts p.199, §22 p.212, §23 p.221) and limited-preview metadata, but did not expose the target BG pp.209–212 or 225–226 body. Therefore the direct revised-primary stop gate remains open.

## New formal statement

`FormalPhenomenology.FirstQuestionRobustness` now contains:

```lean
first_question_finite_family_cover_with_dominator_implies_capture
```

For a presentation `M`, phenomenon `p`, and finite list `hs`, assume:

1. every presented aspect of `p` is admitted by some situated member of `hs`;
2. there exists a situated horizon `h⋆` such that every aspect admitted by any member of `hs` is also admitted by `h⋆`.

Then `M.Captured p`.

The proof is direct: for each presented aspect choose its covering family member, then transport that admission along the domination hypothesis to `h⋆`; together with `situated p h⋆`, this is exactly the existing definition of `Captured`.

## Interpretation boundary

This is a **FORMAL sufficient premise**, not an attributed thesis of Merleau-Ponty or Marion. In particular:

- it does not define a semantic horizon-combination operator;
- it does not say a finite family itself is a horizon;
- it does not collapse Marion’s one-horizon / several-horizon / no-combination distinctions;
- it does not identify `Captured` or `NonExhaustible` with the full saturated phenomenon;
- it does not weaken the existing negative results, because the open-chain and split witnesses fail the new domination premise exactly where expected.

The theorem is useful as an exact positive companion to the non-implication results: plural coverage becomes single-horizon capture only after an explicit collapse/dominance premise is supplied.

## Validation bookkeeping

The theorem was added after confirming the branch still pointed at `8b5fa5a485cffa7e2e485c41faf089fae66e99ba`. Code commit: `091fff5db63eedc0f80c50d6cfe3f49f54e5e263`. Audit registration commit: `83ad495f5653b15886238f10018ffd709c1216bd`.

This document commit is intentionally not pre-labelled green. The exact final head must complete the repository `Lean verification` workflow before this round may claim `lake build`, `scripts/check.py`, root coverage, or axiom-audit success.

## Remaining stop gate

The first research question is still not complete. The remaining material requirement is lawful direct-body review of one revised-text route (BG 209–212 plus 225–226; early ED 292–297 plus 314–315; or a reliably mapped authorized revised reprint/translation), followed by the final same-SHA proof/audit run and interpretation freeze.
