# First-question total-relatedness / conditioned-excess reverse audit

Date: 2026-09-23

Branch: `research/first-question-main-theorem-20260918`

## Object reviewed

The previous checkpoint established a maximal-relational counterexample to `ClosureBridge`: on the actual appearance of `splitDependentConditioning`, every horizon is related, every horizon conditions the phenomenon, and the two project relations therefore agree in both directions, while exhaustive single-horizon capture still fails.

This pass asks for the stronger positive witness hidden in that same model: does the failure survive after exhibiting an actual phenomenon that is explicitly `Conditioned` and `NonExhaustible`, rather than only proving `¬ ClosureBridge`?

## External-first reuse check

The reuse search was bounded to the statement actually added in this pass. It is not a novelty claim.

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163`: targeted GitHub search for `horizon conditioned nonExhaustible situated captured` returned no same-shaped reusable API.
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759`: targeted search for `horizon conditioning closure exhaust` returned no same-shaped horizon/exhaustibility API. LogiKEy remains a methodological precedent for formal interpretation and countermodels, not a dependency for this finite relation witness.
- `alexoltean61/msphml-lean@9d6559db6502bc9813dcf028d7ea26ae80e9dc93`: targeted search for `horizon conditioning exhaustive captured` returned no same-shaped reusable API. Its modal proof infrastructure is not needed here.

No generic logical or order-theoretic API is introduced. The new declaration is a thin wrapper around already verified project facts.

## Same-topic source refresh

The revised-primary stop gate was rechecked before strengthening the formal wrapper. Public publisher/Google Books routes continue to expose edition metadata, table-of-contents boundaries, or limited preview rather than directly reviewable *Being Given* pp. 209–212 / 225–226 body. The public Lavoisier PUF excerpt endpoint still presents an EPUB payload that the current retrieval runtime cannot render as page text. Unauthorised full-book mirrors surfaced in search and were excluded from the evidence chain.

Accordingly, the already registered Marion 1996 primary-indexed essay remains the direct author-text baseline for separating horizon-relatedness from horizon as delimiting prior condition, while the 1997/2002 revised-book body remains the material source gate. This pass strengthens no historical attribution.

## Formal increment

Commit `a3251c14520f20bf72483f8032b6cbd9a10b4c68` adds:

`first_question_total_relatedness_mutual_conditioning_has_conditioned_excess`.

It exhibits `splitDependentConditioning` together with an actual phenomenon `p` such that:

1. every horizon is related to every actual appearance;
2. `ConditioningIsSituated` holds;
3. `SituatedImpliesConditioning` holds;
4. `p` appears and is `Structured`;
5. `p` is positively `Conditioned`;
6. `p` is `NonExhaustible`.

The proof reuses only `splitDependentConditioning`, `splitModel_structure`, `splitDependentConditioning_nonExhaustible`, and an existing conditioning witness. No new model, primitive, dependency, classical principle, or philosophical category is added.

Audit registration commit: `f14c097188098c231ca40cd69dd8a163fcf1e93f`.

## Strongest internal baseline / reverse review

The strongest applicable existing baselines are:

- `first_question_mutual_conditioning_positive_polarity_underdetermines_exhaustibility`, which already shows that under mutual `situated ↔ conditions` one can obtain both a conditioned/captured witness and a conditioned/non-exhaustible witness; and
- `first_question_total_relatedness_mutual_conditioning_does_not_force_closure`, which adds maximal relatedness/conditioning but states the negative conclusion as `¬ ClosureBridge`.

The new theorem is therefore not a new logical discovery. Its role is to combine those two robustness axes into one positive same-witness statement: the maximal mutual-conditioning model contains a concrete `Conditioned ∧ NonExhaustible` actual appearance. This removes a presentational ambiguity in the previous negative theorem without changing the philosophical interpretation boundary.

In particular, it still does **not** establish that `NonExhaustible` is Marion's full saturated phenomenon, nor that historical horizon-relatedness and horizon-conditioning are extensionally identical.

## Validation status

The declaration is registered in `Audit.lean`; the repository audit policy is unchanged. Exact-head GitHub Actions must run `python3 scripts/check.py`, root/source coverage, the full Lean build, and kernel axiom audit before this checkpoint is called verified. Static source inspection is not a substitute for that run.

## Stop-gate status

The first research question is not complete from this formal strengthening alone. The remaining material gate is lawful direct review of the mapped revised Marion body: *Being Given* 209–212 plus the tracked later passage, early *Étant donné* 292–297 plus 314–315, or another reliably mapped authorized revised reprint/translation. Only after that source check can the interpretation be frozen or minimally revised and the final exact-SHA proof stack be rerun.
