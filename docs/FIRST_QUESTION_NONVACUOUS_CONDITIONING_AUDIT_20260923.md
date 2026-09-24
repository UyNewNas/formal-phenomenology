# First-question nonvacuous-conditioning robustness audit — 2026-09-23

This checkpoint records one narrow robustness test for the first horizon/exhaustibility question. It does **not** add a new historical attribution, redefine Marion's saturated phenomenon, or close the revised-primary source gate.

## 1. Why this pressure test was worth checking

The existing finite witness `splitIndependentConditioning` establishes that an actually appearing phenomenon can be `Structured ∧ Independent ∧ NonExhaustible` while satisfying `ConditioningIsSituated`. Its `conditions` relation is globally empty. That witness is logically sufficient for the stated consistency result, but it leaves an easy modelling objection: perhaps the separation survives only because conditioning is never used anywhere in the model.

The present round therefore asks a strictly narrower robustness question:

> Can the same finite model contain an appearing `Structured ∧ Independent ∧ NonExhaustible` phenomenon **and** a different actually appearing phenomenon with a genuine `Conditioned` witness, while still satisfying `ConditioningIsSituated`?

This is a pressure test on the current relation language. A positive answer remains model-theoretic consistency only; it is not evidence by itself that the corresponding historical concepts are independent.

## 2. Mandatory prior-art / reuse gate

Before adding the finite model, the actual proposed shape was searched against the registered code baselines:

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163`;
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759`;
- `alexoltean61/msphml-lean@9d6559db6502bc9813dcf028d7ea26ae80e9dc93`.

The scoped GitHub code search used horizon / conditioning / exhaustibility / capture terms and did not locate a same-shaped reusable API. This negative result is limited to the searched repositories and query scope; it is not a novelty claim. The generic logical content is elementary finite relational model construction, so there is no reason to import a modal-logic or semantic-embedding framework merely for this witness.

The methodological baseline remains unchanged: LogiKEy / AFP computational metaphysics and computational hermeneutics are precedents for interpretation-to-model-to-countermodel workflows. The new witness is not presented as a new formal-philosophy method.

## 3. Same-topic source recheck

The source side was also rechecked before treating the formal robustness result as philosophically meaningful.

- The public Google Books record for the 2002 *Being Given* still confirms the section routing around §21/§22, but the target pp. 209–212 body remains unavailable through the public route inspected here. This is metadata/access routing, not direct body evidence.
- King-Ho Leung's 2022 article still supplies secondary exact support for the `horizon as condition of possibility` wording around BG 211–212.
- Myka Lahaie's Durham thesis still supplies a secondary exact quotation keyed to BG 209 that distinguishes abolishing horizon from freeing/reorienting its prior delimiting role.

These are secondary or metadata witnesses. They do **not** satisfy the project's direct revised-primary stop gate.

The main source ledger was also corrected to remain consistent with the already-registered `MARION_2007_TRANSLATION_PROVENANCE_20260921.md`: the 2007 *Filozofia* item is a Fulka translation witness in the same 1992 essay lineage as Carlson 1996, not an independent later Marion argument. No Lean theorem depends on counting it twice.

## 4. Formal delta

New module:

`FormalPhenomenology/FirstQuestionNonvacuousConditioning.lean`

It defines `mixedConditioningWitness` with Boolean phenomena, horizons, and aspects:

- every phenomenon appears;
- every horizon is related;
- every aspect is presented;
- horizon `h` admits exactly aspect `h`;
- `conditions p h` holds exactly when `p = true`.

Hence the conditioning relation is genuinely inhabited on the appearing `true` phenomenon, while the appearing `false` phenomenon is independent.

The audited declarations are:

- `mixedConditioningWitness_coherent`;
- `mixedConditioningWitness_hasSituatedIndependentExcess`;
- `mixedConditioningWitness_hasConditionedAppearance`;
- `first_question_nonvacuous_conditioning_profile`.

The project-facing result is:

```text
∃ M : HorizonConditioning,
  M.ConditioningIsSituated ∧
  M.HasSituatedIndependentExcess ∧
  ∃ p, M.base.appears p ∧ M.Conditioned p
```

So the earlier joint-consistency result is robust to requiring nonempty conditioning **somewhere in the same actual-appearance model**. It does not assert that the independent excess phenomenon itself is conditioned; that would contradict the definition of `Independent`.

## 5. Reverse check and axiom-audit repair

The first implementation used `simp` to discharge Boolean contradictions. Exact-head run `35824205577` compiled the full project but correctly failed the repository's stricter kernel audit because the two affected declarations depended on `propext` / `Quot.sound`. That failure was treated as a proof-engineering defect, not as a Lean or platform failure.

The proof was rewritten using direct Boolean equality elimination only. No audit whitelist was weakened and no theorem was removed.

Verified code head:

`8478781c82a207bf533aac901e7dc86ffe75b28d`

Push workflow `35824450437` completed `success` on that exact head. Its log reports:

- static checks: **24 modules, 149 audited theorems**;
- full Lean build: **27 jobs, success**;
- kernel axiom audit: **149/149 theorems without axiom dependencies**;
- all four new declarations explicitly reported as axiom-free.

Thus the robustness witness is kernel-checked under the repository's zero-axiom policy; the earlier failed audit is not being hidden or reclassified.

## 6. Interpretation boundary and next entry

This closes only the modelling objection “the separation works because `conditions` is globally empty.” It does not overcome the stronger objection that the relations are intentionally separate primitives; historical independence still requires textual constraints rather than a freely chosen finite model.

The first research question therefore remains open only on its established source side: lawful direct body review of BG 209–212 plus 225–226, early ED 292–297 plus 314–315, or a reliably mapped authorized revised reprint/translation. No new `priorDelimits`, horizon-combination, intention, or intuition primitive is justified by this round.

## 7. Horizonwise strengthening in the same model

A follow-up reverse check asked a stronger vacuity question: perhaps `conditions` is nonempty but some horizons remain completely unused by conditioning. No new model or primitive is needed to test this, because `mixedConditioningWitness.conditions p h` depends only on `p` and therefore the appearing `true` phenomenon is conditioned by **every** horizon in the finite domain.

Before adding the two thin wrappers, the exact stronger shape was re-searched against the same registered Lean/formal-logic baselines with horizon / conditions / conditioned / exhaustible / capture terms. The bounded code search again found no same-shaped reusable API. This remains a reuse decision only, not a novelty claim; the elementary finite-relational content does not justify a new external dependency.

Two audited declarations were added:

- `mixedConditioningWitness_every_horizon_conditions_appearing`;
- `first_question_horizonwise_nonvacuous_conditioning_profile`.

The project-facing statement is:

```text
∃ M : HorizonConditioning,
  M.ConditioningIsSituated ∧
  M.HasSituatedIndependentExcess ∧
  ∀ h : M.base.Horizon,
    ∃ p : M.base.Phenomenon,
      M.base.appears p ∧ M.conditions p h
```

Thus the existing separation survives after requiring **each horizon** to participate in genuine conditioning of an actual appearance somewhere in the very same model. The result deliberately keeps the independent/non-exhaustible witness (`false`) distinct from the positively conditioned appearance (`true`); forcing the same phenomenon to be both `Independent` and positively conditioned would contradict the project definitions rather than strengthen the philosophical claim.

Exact audited code head `b0bfbc21f91af703629a1332bb989109dc891d7a` passed PR workflow `35829610765`: checkout, pinned Lean setup, and the repository's `Build, source coverage, and kernel axiom audit` step all completed successfully. The workflow invokes `python3 scripts/check.py`, which checks root-module coverage, forbidden proof shortcuts, full theorem/audit-ledger coverage, runs `lake build`, and rejects any audited theorem with axiom dependencies. No check or whitelist was weakened.

This strengthening still does **not** close the historical source gate or convert formal predicate freedom into a claim about Merleau-Ponty or Marion. The revised-primary target remains BG 209–212 plus 225–226, early ED 292–297 plus 314–315, or an authorized revised text that can be reliably cross-mapped and directly read.
