# First-question horizonwise-conditioning / closure reverse review

Date: 2026-09-23

Branch: `research/first-question-main-theorem-20260918`

## Question under review

The immediately preceding robustness result strengthened the finite conditioning witness from merely “conditioning occurs somewhere” to:

```text
∀ h : M.base.Horizon,
  ∃ p : M.base.Phenomenon,
    M.base.appears p ∧ M.conditions p h.
```

That statement closes a vacuity objection, but it is not yet the first question's B-target. This follow-up therefore compares the strengthened profile against `ClosureBridge` itself rather than treating horizonwise use of `conditions` as evidence for exhaustive closure.

## External-first / reuse check

This round searched the exact new object before adding another theorem.

### Formal repositories

Targeted GitHub code search on 2026-09-23 used combinations of `horizon`, `conditioning`, `exhaust`, `capture`, and `closure` over the three already registered formal baselines:

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163`;
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759`;
- `alexoltean61/msphml-lean@9d6559db6502bc9813dcf028d7ea26ae80e9dc93`.

The bounded search returned no same-shaped reusable API connecting “every horizon participates in conditioning of some actual appearance” to single-horizon exhaustive capture. This is only a reuse decision, not a novelty claim. The logical content is elementary and does not justify adding a dependency.

### Same-topic philosophy

A fresh web/source pass rechecked the semantic baseline rather than trying to infer B from the model predicate:

- James Deery (2025) continues to describe Merleau-Ponty's horizon of sense as indeterminate and open to further exploration/determination, which is compatible with the existing reading that horizon structure does not itself amount to closure.
- King-Ho Leung (2021/2022) reproduces Marion's `Being Given` pp. 225–226 discussion of intuition exceeding intentional/objectifying horizons; this remains secondary exact-page evidence, not direct review of the revised target body.
- contemporary Marion discussions likewise distinguish appearing in/through a horizon from exceeding a priori conditions imposed by horizons. They do not supply the extensional implication formalized here.

No lawful route in this pass exposed the target revised primary body at BG pp. 209–212 / 225–226 or early ED pp. 292–297 / 314–315. The direct-primary stop gate is therefore unchanged.

## Strongest internal baseline

The correct baseline is already stronger than the preceding nonvacuity statement:

- `UniversalStructure` says every actual appearance has at least one related horizon;
- `ConditioningIsSituated` forces every conditioning horizon to be related;
- `mixedConditioningWitness_every_horizon_conditions_appearing` makes conditioning horizonwise nonvacuous;
- `mixedConditioningWitness_hasSituatedIndependentExcess` supplies an actual structured/non-exhaustible witness in the very same presentation.

Consequently the reverse check should ask whether these premises together force B / `ClosureBridge`.

## Formal result

The same finite model proves:

```text
∃ M : HorizonConditioning,
  M.base.UniversalStructure ∧
  M.ConditioningIsSituated ∧
  (∀ h : M.base.Horizon,
    ∃ p : M.base.Phenomenon,
      M.base.appears p ∧ M.conditions p h) ∧
  ¬ M.base.ClosureBridge
```

Entry point:

- `mixedConditioningWitness_universalStructure`;
- `first_question_horizonwise_conditioning_does_not_force_closure`.

The proof reuses the existing `HasSituatedIndependentExcess` witness and `nonExhaustible_iff_not_captured`. No new model, philosophical primitive, classical principle, or dependency was introduced. In particular, horizonwise participation in `conditions` is **not** the missing B-premise.

## Interpretation boundary

This is a reverse-check of a modelling objection, not a historical thesis. It does not establish that Merleau-Ponty's or Marion's horizons instantiate the repository's independent `situated`/`conditions` predicates, and it does not identify `NonExhaustible` with Marion's saturated phenomenon.

The first research question remains open only at the established revised-primary source gate. The formal narrow answer remains `UniversalStructure ↛ ClosureBridge`; the new theorem simply shows that making the auxiliary conditioning relation nonvacuous at every horizon does not repair that implication.

## Verification status

Code and audit entries were committed first. Exact-head GitHub Actions is the authoritative verification for this round; the result must not be described as kernel-verified until the workflow for the final documentation head succeeds. The repository audit policy remains unchanged: root-module coverage, forbidden proof shortcuts, `lake build`, and `#print axioms` coverage with zero theorem axiom dependencies.
