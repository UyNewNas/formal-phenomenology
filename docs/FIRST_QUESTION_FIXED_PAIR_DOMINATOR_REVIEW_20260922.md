# First-question fixed-pair dominator review — 2026-09-22

## Scope

This round follows the recent conditioned fixed-pair witness and asks the exact formal question that remained implicit there:

> if two named horizons jointly cover every presented aspect of a `NonExhaustible` phenomenon, what precisely prevents that plural cover from collapsing back to the repository's single-horizon `Captured` predicate?

No new philosophical primitive, horizon-combination operator, model family, or historical attribution is introduced.

## External-first / prior-art gate

### Formal repositories

Fresh targeted GitHub code search for `horizon finite family dominator captured exhaustible` across the registered baselines

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163`,
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759`, and
- `alexoltean61/msphml-lean@9d6559db6502bc9813dcf028d7ea26ae80e9dc93`

returned no same-shaped reusable API.  This is a bounded search result, not a non-existence or originality claim.  The proposed statement is elementary relation/quantifier bookkeeping, so adding a large semantic-embedding dependency would be disproportionate.

### Same-topic interpretation

A fresh search around Marion's `combination of horizons` again returns the established secondary reconstruction: one horizon, several horizons, and the stronger case in which no combination of horizons tolerates the phenomenon.  Brock Mason's open *Aporia* article and Shane Mackinlay's reconstruction remain directly relevant secondary witnesses.  They do **not** justify identifying a Lean disjunction, a `List Horizon`, or the new `dominator` premise with Marion's semantic notion of horizon combination.

The official De Gruyter Brill record for the current eBook edition of *Being Given* again confirms §21 `Sketch of the Saturated Phenomenon: The Horizon`, pp. 199–212, DOI `10.1515/9780804785723-024`, within eBook ISBN `9780804785723`.  The target body itself is still access-restricted in this runtime, so this remains publisher metadata rather than `PRIMARY-DIRECT-PAGE` evidence.  The project therefore keeps the revised-primary stop gate open.

## Formal increment

`FormalPhenomenology/FirstQuestionFiniteFamily.lean` now adds:

```text
first_question_nonExhaustible_fixed_pair_cover_has_no_dominator
```

For arbitrary `M`, `p`, and named horizons `h₀ h₁`, assume:

1. `NonExhaustible p`;
2. every presented aspect is admitted by `h₀` or `h₁`.

Then there cannot exist a situated horizon `hStar` that admits everything admitted by either `h₀` or `h₁`.

The proof is constructive and direct.  A hypothetical `hStar` plus the pair cover yields `Captured p`; `NonExhaustible p ↔ ¬ Captured p` then gives the contradiction.

This is the fixed-pair specialization of the already established finite-family/dominator boundary.  Its value is interpretive discipline: the recent two-horizon countermodels fail to collapse to single-horizon capture exactly because a common situated dominator is unavailable.  It does **not** add or formalize Marion's historical horizon-combination operation.

## Reverse check

The statement was checked against the strongest existing local baseline rather than only against the weaker fixed-pair non-implication:

- `first_question_finite_family_cover_with_dominator_implies_capture` already proves finite cover + dominator -> capture;
- `first_question_captured_iff_exists_finite_family_with_dominator` shows the existential finite-family package with a dominator is exactly equivalent to `Captured`;
- therefore the new result is a consumer-facing corollary exposing the negative side at the fixed-pair level, not a new logical discovery.

This avoids overclaiming: the theorem is useful because it identifies the missing structural premise in the current encoding, not because its logic is novel.

## Verification / handoff

Code commit: `265d9fe9d5e0800eccb54f0dca74939af51a26b7`.

Audit registration commit: `4ea411a2664aa970fd97d3cfdde1e1187390d1e5`.

`Audit.lean` now requests `#print axioms FormalPhenomenology.first_question_nonExhaustible_fixed_pair_cover_has_no_dominator`.

Exact-final-head GitHub Actions status must be checked after this documentation commit.  Until that succeeds, this round is **written + committed, pending kernel/build verification**.

## Remaining stop gate

The first question is not complete.  The remaining material gate is still lawful direct review of revised primary body at one reliably mapped route: BG 209–212 plus the tracked later passage, early ED 292–297 plus 314–315, or an authorized reliably mapped revised reprint/translation.  Publisher metadata and secondary exact-page crosswalks remain insufficient to close that gate.
