# First-question UniversalStructure / finite-cover normalization audit

Date: 2026-09-23

Branch: `research/first-question-main-theorem-20260918`

## Object reviewed

The previous finite-family checkpoint established two facts already present in the project language:

1. pointwise `NonExhaustible p` is equivalent to saying every finite situated cover of the encoded aspects of `p` lacks a common situated dominator;
2. `HasSituatedExcess` is the existence of an actually appearing, `Structured`, non-exhaustible witness, hence equivalently an appearing structured witness with that same finite-cover obstruction.

This round asks whether the explicit `Structured p` conjunct is still needed once the caller already assumes `UniversalStructure`.

## External-first / reuse check

Before adding the normalization wrapper, the registered formal baselines were rechecked at their current pinned public heads:

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163` (`main`): targeted GitHub code search for `finite cover upper bound horizon` / `UniversalStructure HasSituatedExcess finite` returned no same-shaped reusable horizon/exhaustibility API.
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759` (`master`): the same scoped searches returned no matching finite-cover/horizon theorem. LogiKEy remains methodological prior art for semantic embeddings and model comparison, not a dependency for this quantifier normalization.
- `alexoltean61/msphml-lean@9d6559db6502bc9813dcf028d7ea26ae80e9dc93` (`itp2026`): the same scoped search returned no same-shaped horizon/exhaustibility object.
- Lean Core already supplies the constructive first-order/propositional reasoning used below. No Mathlib, modal-logic, or external semantic dependency is justified for this wrapper.

These are bounded reuse checks, not novelty claims. The theorem is deliberately described as a thin normalization of project-local definitions and previously audited results.

## Same-topic interpretation / source gate

The historical mapping was also rechecked before changing code. The official De Gruyter/Fordham metadata route still identifies Marion's `Sketch of the Saturated Phenomenon`, and the Stanford/De Gruyter chapter route still identifies *Being Given* §21 (`Sketch of the Saturated Phenomenon: The Horizon`, pp. 199–212). Public retrieval in this run did not expose the target revised body.

The already registered public Lavoisier excerpt endpoint was retried. The web retrieval layer again identified it as `application/epub+zip`, while the available downloader/runtime could not ingest the binary excerpt. No reader API, DRM, login, borrow restriction, or access control was bypassed.

General web searches for the relevant §21 horizon language returned secondary exact quotations and also non-authorized full-book mirrors. Those were not used to close the source gate and are not treated here as primary evidence. The revised-book direct-body requirement therefore remains unchanged.

The formal addition below makes no new attribution to Merleau-Ponty or Marion. In particular, finite `List Horizon` coverage and a common `admits`-dominator remain extensional model conditions, not a historical semantics of Marion's phrase "combination of horizons".

## Formal increment

New module:

`FormalPhenomenology/FirstQuestionUniversalStructureFiniteCover.lean`

New theorem:

`first_question_universalStructure_hasSituatedExcess_iff_exists_finite_cover_obstruction`.

It states constructively that, under `M.UniversalStructure`,

```text
M.HasSituatedExcess
↔
∃ p, M.appears p ∧
  ∀ finite family hs,
    hs jointly covers every encoded aspect of p
    → no situated horizon dominates every member of hs.
```

The reverse direction uses `UniversalStructure` only to recover the `Structured p` witness required by `HasSituatedExcess`; the finite-cover obstruction is converted back to `NonExhaustible p` by the already audited pointwise equivalence. The forward direction simply drops the now-redundant `Structured p` conjunct.

No new model family, philosophical primitive, classical principle, custom axiom, horizon-combination operation, or external dependency is introduced.

## Verification status

Code commits in this round before this audit note:

- `e426610622325a9ed9e6cdf1d1a20e304d820728` — theorem module;
- `050e6fecb15f59aa1e437283b95a525d25d089b7` — root import coverage;
- `f2665f0c23607e62ab432326361bb832b87e10be` — `Audit.lean` `#print axioms` registration.

The previous branch head `e8f0337e0acd6f9fa08f5e876854ac689bc54f2b` had exact-head workflow `35808609452` completed successfully, but that run does **not** validate this round. Exact kernel/build/source-coverage status must be taken only from GitHub Actions on the final SHA containing this note.

## Stop-gate effect

This closes one small proof-theoretic redundancy: with A / `UniversalStructure` already assumed, the project-level situated-excess witness can be stated without separately carrying `Structured p`.

It does not close the first research question. The remaining material gate is still lawful direct review of the revised Marion body (BG pp. 209–212 plus the tracked later passage, the mapped early-ED pages, or an authorized reliably mapped equivalent), followed by interpretation freeze and a same-SHA full verification run.
