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

---

## Follow-up round: project-level closure packaging

### Fresh external check

Before adding a project-level theorem, this round repeated the three-layer gate for the **new object** rather than treating the previous local theorem as sufficient prior-art review.

- **Lean/Core.**  The repository is pinned to `leanprover/lean4:v4.24.0` with no Mathlib dependency.  Current Lean source exposes `Init.Data.List.Pairwise`, but the proposed theorem does not need a new list relation or generic order API: it only packages the already-proved finite induction.  Reusing the local theorem is therefore narrower than adding a dependency or rebuilding a generic directedness library.
- **Formal-philosophy repositories.**  Fresh code searches in `novaspivack/phenomenology-lean`, `cbenzmueller/LogiKEy`, and `alexoltean61/msphml-lean` again found no same-shaped `horizon` / `Captured` / finite-cover closure theorem.  LogiKEy's indexed `horizon` hits remain unrelated natural-language uses such as “horizontal distribution of power.”  This is a bounded reuse check, not a novelty claim.
- **Same-topic literature.**  Leung (2022), “Sartre and Marion on Intentionality and Phenomenality,” directly quotes *Being Given* pp. 211–212 and 225–226 in support of horizon-independence and the failure of the constituting I to synthesize excessive intuition into an object delimited by a horizon.  Mackinlay's published analysis likewise distinguishes the one-horizon, additional-horizons, and “no combination of horizons” cases around BG 209–211 / ED 292–295.  These are stronger historical baselines than the repository's extensional finite-list language, so the new theorem is deliberately described only as a formal sufficient condition.

Reuse decision: **reuse the existing local finite-family theorem; add only a thin `ClosureBridge` wrapper.**

### New formal statement

The new theorem

`first_question_finite_cover_pairwise_upper_bounds_imply_closureBridge`

states that `ClosureBridge` follows if every actually appearing structured phenomenon admits:

1. some nonempty finite list of situated horizons jointly covering all presented aspects; and
2. a phenomenon-local pairwise upper-bound operation on situated horizons, stated extensionally through `admits` and returning a situated upper bound.

The proof performs no new induction.  It instantiates
`first_question_finite_family_pairwise_upper_bounds_imply_capture`
for the current `p` and therefore makes the **stronger baseline explicit**: the real consumer-level engine is still the common-dominator result for a particular finite family.  The new theorem merely packages one uniform sufficient route to B / `ClosureBridge`.

This matters to the first question because it records exactly what extra formal structure can turn plural finite horizon coverage into exhaustive capture without pretending that ordinary “appears within horizons” already has that consequence.  It does **not** assert that pairwise upper bounds are historically Merleau-Ponty's or Marion's premise, nor that the premise is necessary.

### Revised-primary route recheck

A fresh publisher search located the official De Gruyter/Fordham record for *The Essential Writings* (2013) and its `Sketch of the Saturated Phenomenon`, pp. 108–134, DOI `10.1515/9780823292905-006`.  The official route confirms the anthology/chapter provenance but the target chapter body was not exposed by the current retrieval path.  This therefore remains **PRIMARY-METADATA / AUTHORIZED-ROUTE**, not direct-body review.

Secondary exact-page evidence from Leung and Mackinlay continues to support the existing interpretation ledger, but under the project rule it cannot satisfy the revised-primary stop gate.  No access restriction was bypassed and unauthorized mirrors were excluded from evidence.

### Validation status for this follow-up

The new theorem is root-reachable through the existing `FormalPhenomenology.FirstQuestionFiniteUpperBounds` import and has been added to `Audit.lean`.  Exact-head Actions after the documentation commit remains the only accepted build/root-coverage/axiom verdict for this round.  Until that run succeeds, this follow-up remains **committed, pending kernel verification**.
