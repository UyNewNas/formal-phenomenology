# Constructive capture-conditioning bridge hierarchy

Date: 2026-09-17.

This note records the prior-art gate and proof-theoretic refinement for the first research question. It is deliberately narrower than a theory of Marion's saturated phenomenon.

## Why this refinement was needed

The repository had already proved, on the domain of actually appearing phenomena,

```text
Independent p → NonExhaustible p
```

exactly when capture and independence cannot coexist:

```text
Captured p → ¬ Independent p.
```

Because `Independent p` is defined as `∀ h, ¬ conditions p h`, it is tempting to paraphrase the right-hand side as “capture produces a conditioning horizon.” In Lean's constructive kernel that paraphrase is stronger than what has actually been proved.

The existing theorem

```text
Independent p ↔ ¬ Conditioned p
```

shows instead that

```text
¬ Independent p ↔ ¬¬ Conditioned p.
```

So the exact appearing-domain exclusion is constructively equivalent to a **double-negated conditioning obligation**:

```text
appears p → Captured p → ¬¬ Conditioned p.
```

It rules out a proof that no conditioning horizon exists. It does not, by itself, construct a horizon witnessing `Conditioned p`.

## New Lean results

`FormalPhenomenology/ConstructiveBridge.lean` adds no philosophical primitive. It proves:

1. `not_independent_iff_not_not_conditioned`

   ```text
   ¬ Independent p ↔ ¬¬ Conditioned p
   ```

2. `exact_appearing_condition_iff_double_negated_conditioning`

   ```text
   (∀ p, appears p → Captured p → ¬ Independent p)
   ↔
   (∀ p, appears p → Captured p → ¬¬ Conditioned p)
   ```

3. `exhaustiveCaptureConditions_captured_implies_conditioned`

   The stronger horizon-by-horizon bridge really does construct a conditioning witness from capture: the same related exhaustive horizon witnesses `Conditioned p`.

4. `appearing_captured_conditioned_implies_exact_appearing_condition`

   An explicit witness-producing bridge

   ```text
   appears p → Captured p → Conditioned p
   ```

   is sufficient for the exact exclusion.

5. `appearing_captured_to_conditioned_is_strictly_weaker_than_exhaustiveCaptureConditions`

   `displacedCaptureConditioning` witnesses strictness: every appearing captured phenomenon has a conditioning witness, and conditioning remains situated, but the exhaustive horizon itself need not be the conditioning horizon. Thus witness-producing capture→conditioning is still strictly weaker than `ExhaustiveCaptureConditions`.

The resulting hierarchy is therefore:

```text
ExhaustiveCaptureConditions
        ⇒
appearing Captured → Conditioned
        ⇒
appearing Captured → ¬ Independent
        ↔
appearing Captured → ¬¬ Conditioned.
```

The first implication is strict by an explicit finite model. The second implication is constructive. This project does **not** add classical double-negation elimination merely to identify the last two conditioning formulations with witness production, because the current audit policy requires no theorem-level axiom dependencies.

## External-work audit before implementation

### Proof infrastructure

Actual searches/checks performed this round:

- GitHub global code search for `Conditioned Independent Captured horizon`: no relevant formal-philosophy implementation was located; returned hits were unrelated uses of those ordinary words.
- `novaspivack/phenomenology-lean`: `main` still resolves to commit `75230e4eab333ad0fc47573747521ccc1a31a163` (2026-05-20). A targeted repository search for `horizon` returned no result. No Marion/horizon/capture-conditioning API was found to reuse.
- `cbenzmueller/LogiKEy`: `master` still resolves to commit `b29954b0876d7991baf12f17378f31700f9de759` (2026-09-13). Its computational-metaphysics / semantic-embedding infrastructure remains methodological prior art, but importing it would add a large unrelated Isabelle stack for an elementary constructive normalization already expressible in Lean Core.

No external repository was rebuilt locally in this round. Their build status is therefore not reported as a new local verification result.

### Method overlap

The project continues to rely on already acknowledged computational-hermeneutic and computational-metaphysics precedents: interpretation choices are made explicit, competing formal readings are separated, and countermodels test entailment. Nothing in the present double-negation analysis is claimed as a new method.

### Same-topic literature

King-Ho Leung, “Sartre and Marion on Intentionality and Phenomenality” (2022), quotes *Being Given* pp. 211–12 for the claim that the saturated phenomenon does not depend on a horizon understood as a condition of possibility, and pp. 225–26 for the intuition/intention reversal. This supports the historical importance of the conditioning vocabulary, but it does not discuss the constructive distinction between `¬¬∃ conditioning horizon` and `∃ conditioning horizon`.

The direct publisher pages for *Being Given* §21 / §22 and the Fordham/De Gruyter reprint were checked again in this research cycle. They confirm chapter metadata but still do not expose the target book pages in the current environment. No publisher access restriction was bypassed. Accordingly, the direct-primary stop gate remains open.

## Reuse decision

- **Direct reuse:** existing project theorem `horizonIndependent_iff_not_conditioned`, existing `Captured` / `Conditioned` definitions, and the existing finite model `displacedCaptureConditioning`.
- **Thin local formalization:** the constructive double-negation normal form and the witness-producing intermediate bridge.
- **Methodological precedent only:** LogiKEy / AFP / computational hermeneutics.
- **Historical evidence only:** Leung and the already registered Marion literature.
- **Not claimed:** originality of intuitionistic double-negation logic, originality of the related/conditioning distinction, or any attribution of the witness-producing bridge to Marion or Merleau-Ponty.

## Interpretive consequence

The phrase “the missing capture/conditioning bridge” now needs three levels rather than two:

1. **Exact constructive exclusion:** capture of an appearing phenomenon rules out horizon-independence, equivalently `Captured → ¬¬ Conditioned`.
2. **Witness-producing bridge:** capture actually yields some conditioning horizon, `Captured → Conditioned`.
3. **Same-horizon bridge:** every related exhaustive horizon itself conditions the phenomenon, `ExhaustiveCaptureConditions`.

Only level 1 is logically exact for the already stated target implication. Levels 2 and 3 are stronger and require their own interpretive justification. Level 3 is strictly stronger than level 2 by the verified displaced-horizon model.

This refinement changes no Merleau-Ponty or Marion attribution. It prevents the repository from silently treating a constructive negation result as if it had already produced a historical or semantic witness.
