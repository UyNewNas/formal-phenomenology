# First-question finite upper-bound audit — 2026-09-22

## Object of this round

This round asks a deliberately narrow formal question left open by the existing finite-family guardrails:

> If finitely many situated horizons jointly cover all encoded aspects, what additional relation-level premise is sufficient to collapse that plural cover to one situated exhaustive horizon?

The answer below does **not** add a horizon-combination primitive and does not identify a finite list, an upper bound, or `Captured` with Marion's historical saturation vocabulary.

## External-work gate

### Proof infrastructure

A fresh GitHub code search checked the current indexed `leanprover-community/mathlib4` tree and the existing formal-philosophy comparison repositories before adding code.

- `leanprover-community/mathlib4@cbceb349108564dac18fca83cac4a0978cf3896b`, `Mathlib/Order/Directed.lean`, packages the standard generic notion of a directed indexed family/set: pairwise elements admit a common upper bound.
- The same tree's `Mathlib/Data/Finset/Order.lean::Finset.exists_le` proves that a finite set in a directed preorder has an upper bound.
- Those are the correct generic order-theoretic baseline, but they are not a drop-in dependency for the present object.  This repository currently stays on Lean Core, while the relevant comparison here is phenomenon-relative inclusion of admitted aspects rather than an installed global `Preorder` on horizons.  Importing Mathlib and constructing an order instance only to recover a finite induction would be a larger dependency than the consumer needs.

Reuse decision: **method/API precedent; local thin induction**.  No claim is made that finite directedness or finite upper-bound induction is novel mathematics.

Targeted repository searches also checked:

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163`;
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759`;
- `alexoltean61/msphml-lean`.

Queries around `horizon combination finite cover upper bound saturation` and the current `Captured`/closure shape did not locate a same-shaped reusable horizon/exhaustibility theorem.  This is a bounded reuse search, **not** a novelty claim and not a build verdict for those external repositories.

### Same-topic philosophy / interpretation

The existing source ledger remains controlling.  A fresh literature check re-confirmed two constraints already recorded there:

- Murga 2024 (Universidad Complutense de Madrid, DOI `10.5209/asem.94542`) argues that Marion does not simply abandon horizon but distinguishes uses of horizontality; this keeps any formal upper-bound property separate from historical attribution.
- Mason's BYU/Aporia discussion of *Being Given* 210–211 again distinguishes one horizon, multiple horizons, and the stronger case in which no combination of horizons can tolerate the phenomenon.  This supports the project's warning that a finite list or an extensional upper bound must not silently be called Marion's semantic "combination of horizons".

No checked same-topic source states the present pairwise `admits`-upper-bound premise as a philosophical axiom.  It therefore stays `FORMAL/MODEL`, not `READING`.

## Formal increment

New module: `FormalPhenomenology/FirstQuestionFiniteUpperBounds.lean`.

`first_question_finite_family_pairwise_upper_bounds_imply_capture` assumes:

1. a nonempty finite list `hs` of horizons;
2. every member of `hs` is situated for the phenomenon;
3. every pair of situated horizons has a situated upper bound that admits every aspect admitted by either member;
4. the members of `hs` jointly cover all presented aspects.

A finite induction on `hs` constructs one situated dominator for the whole family.  The proof then reuses the already-audited
`first_question_finite_family_cover_with_dominator_implies_capture`, so the conclusion is exactly the existing `Captured p` predicate.

The companion theorem
`first_question_nonExhaustible_finite_cover_refutes_pairwise_upper_bounds`
packages the obstruction in the polarity of the research question: if `p` is `NonExhaustible` while a nonempty finite situated family covers all of its presented aspects, then the pairwise situated upper-bound property must fail.

This locates one precise structural reason why plural finite coverage can coexist with single-horizon non-exhaustibility.  It does not claim the pairwise condition is the unique weakest premise; the existing explicit finite-family dominator theorem remains the exact package for a *given* finite family.

## Reverse-check checklist for a later round

Before treating this as a major research event, recheck in a subsequent round:

- whether the pairwise premise is being applied to all situated horizons or only family members;
- whether the induction-generated intermediate upper bounds remain situated (they do by hypothesis in the candidate proof);
- whether a weaker family-local closure premise already suffices and would be the stronger baseline;
- whether the result is merely a reformulation of the existing explicit-dominator theorem for the consumer at hand;
- whether any historical reading has accidentally been attached to this purely extensional upper-bound relation.

Until that reverse review, this round is recorded as a formal candidate/refinement rather than a notification-worthy philosophical result.

## Revised-primary source gate

The lawful public routes were rechecked at the same time.  The Google Books / Stanford-De Gruyter records continue to expose edition/chapter metadata for *Being Given* and §21, and the known authorized/borrow-controlled French routes remain access-limited.  No target revised body for BG 209–212 / 225–226 or the mapped early-ED passages was directly read in this round.  Unauthorized full-book mirrors were excluded.

Therefore the first-question stop gate remains open and PR #31 must stay unmerged until the direct revised-primary body requirement is satisfied and the final same-SHA proof/source audit is rerun.

## Validation state

The code, root import and `Audit.lean` entries are committed together with this note.  Exact-head GitHub Actions is the authoritative build/root-coverage/kernel-axiom verdict.  Do not upgrade this note to a verified result until that exact SHA succeeds.
