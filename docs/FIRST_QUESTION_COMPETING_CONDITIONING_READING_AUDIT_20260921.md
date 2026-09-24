# First-question competing conditioning reading audit

Date: 2026-09-21

Branch: `research/first-question-main-theorem-20260918`

Purpose: record a source-backed competing interpretation of the relation between *being in a horizon* and *being conditioned by a horizon*, and keep its exact formal consequence separate from the already-settled horizon/exhaustibility result.

## 1. Why this audit was needed

The repository deliberately distinguishes three axes:

- `situated p h`: `h` is a horizon related to the appearing of `p`;
- `conditions p h`: `h` is a prior condition or constraint on the phenomenality of `p`;
- `Exhausts p h`: `h` admits every encoded aspect of `p`.

The existing coherence hypothesis

```text
ConditioningIsSituated : conditions p h -> situated p h
```

only says that conditioning horizons must already be related horizons. It does **not** say that every related horizon conditions the phenomenon.

A fresh same-topic source check on 2026-09-21 found a secondary interpretation that explicitly presses the converse direction. That reading matters because several current first-question countermodels use `Structured ∧ Independent`; under the stronger converse bridge those witnesses are no longer available.

This is an interpretive pressure test, not a correction to the already proved bare result `UniversalStructure ↛ ClosureBridge`.

## 2. External-first engineering / method recheck

### Direct Lean formal-phenomenology prior art

- Repository: `novaspivack/phenomenology-lean`
- Rechecked branch: `main`
- Exact commit on 2026-09-21: `75230e4eab333ad0fc47573747521ccc1a31a163`
- Targeted scope: horizon / conditioning / capture / exhaustibility / Marion-style relation bridges.
- Result: no same-shaped API was located that should replace the current small relation layer.
- Build status in this round: **not rebuilt**. Repository metadata / source search is not being reported as a build verdict.

Reuse decision: direct formal-phenomenology prior art and terminology caution, but no dependency or port is justified for the elementary relation theorem below.

### LogiKEy / computational-hermeneutics baseline

- Repository: `cbenzmueller/LogiKEy`
- Rechecked branch: `master`
- Exact commit on 2026-09-21: `b29954b0876d7991baf12f17378f31700f9de759`
- Scope: shallow/deep semantic embeddings, competing interpretations, model finding / countermodel methodology.
- Result: this remains a **methodological precedent**, not a drop-in horizon/exhaustibility API.
- Build status in this round: **not rebuilt**.

The move “register a competing interpretation as an explicit premise, then check the model-theoretic consequence” is therefore not claimed as a new formal-philosophy method.

## 3. Same-topic interpretation recheck

### Llorente Cardo 2025 — source-backed converse pressure

Jaime Llorente Cardo, “Pensar al margen del horizonte y en el horizonte de los márgenes: hacia un ‘constructivismo fenomenológico’,” *Logos. Anales del Seminario de Metafísica* 58(2) (2025), 139–149, DOI `10.5209/asem.101681`.

Official UCM article route:

- <https://revistas.ucm.es/index.php/ASEM/article/view/101681>
- DOI: <https://doi.org/10.5209/asem.101681>

Access status this round: **SECONDARY-DIRECT-PDF + PAGE-IMAGE-REVIEWED**. The official open-access PDF was opened and the relevant page image was visually checked.

Relevant location: printed p. 140. Llorente’s discussion of Marion treats manifestation *within* a horizon as necessarily conditioned by prior determination / constitution, and describes the horizon as a condition of possibility that is itself limiting. The important logical direction for the present model is therefore the secondary interpretive pressure

```text
situated p h -> conditions p h
```

rather than only the repository’s pre-existing

```text
conditions p h -> situated p h.
```

This is **not** entered as a Marion theorem. It is a directly reviewed secondary interpretation of Marion and is used only to test how the current weak `Independent` predicate behaves under that stronger reading.

### Murga 2024 — competing same-topic reading

Ezequiel Daniel Murga, “La posibilidad de una horizonticidad no metafísica en Jean-Luc Marion,” *Logos. Anales del Seminario de Metafísica* 57(2) (2024), 309–325, DOI `10.5209/asem.94542`.

Official UCM route:

- <https://revistas.ucm.es/index.php/ASEM/article/view/94542>
- DOI: <https://doi.org/10.5209/asem.94542>

Murga explicitly distinguishes senses of horizontality and argues for the possibility of a non-metaphysical horizontality rather than simply identifying every horizonal relation with antecedent delimitation.

Reuse decision: Llorente’s implication cannot be promoted to an unqualified historical axiom. The two readings justify keeping the bridge **parameterized and named as a competing encoding**.

### Revised Marion primary-body gate remains open

No new lawful direct-body access in this round closes the already registered revised-book gate. The following remain source targets rather than silently inferred text:

- *Being Given* pp. 209–212, plus the tracked pp. 225–226 check;
- early-pagination *Étant donné* pp. 292–297, plus 314–315;
- a reliably mapped authorized revised reprint / translation carrying the same relevant body.

Publisher / bibliographic routes continue to confirm the chapter and reprint provenance, but metadata is not counted as direct body review.

## 4. Minimal formal adaptation

Rather than changing the meaning of `situated` or `Independent`, the competing reading is made explicit:

```lean
def HorizonConditioning.SituatedImpliesConditioning (M : HorizonConditioning) : Prop :=
  ∀ p h, M.base.situated p h → M.conditions p h
```

This is the exact converse direction needed to test the Llorente-style secondary interpretation. It introduces no new horizon kind, saturation primitive, modal logic, or dependency.

Three small constructive theorems record the consequences.

### 4.1 Weak independence then excludes structure

```lean
theorem situatedImpliesConditioning_independent_implies_notStructured
```

proves

```text
SituatedImpliesConditioning M -> Independent p -> not Structured p.
```

Reason: any situated horizon would, by the competing bridge, be a conditioning horizon and contradict `Independent p`.

### 4.2 If both directions hold, independence equals horizonlessness

```lean
theorem mutualSituatedConditioning_independent_iff_notStructured
```

proves, under both

```text
situated -> conditions
conditions -> situated,
```

that

```text
Independent p <-> not Structured p.
```

This is a useful interpretive boundary: the repository’s current weak `Independent` is distinct from horizonlessness only while relatedness and conditioning are not identified in both directions.

### 4.3 The stronger reading refutes the structured-independent profile

```lean
theorem situatedImpliesConditioning_refutes_structuredIndependentAppearance
```

proves

```text
SituatedImpliesConditioning M ->
  not HasStructuredIndependentAppearance M.
```

Thus the existing finite consistency witness `Structured ∧ Independent` is correctly understood as **encoding-sensitive model-theoretic compatibility**, not as a source-independent historical thesis.

## 5. What this does not change

The stronger conditioning bridge does **not** imply exhaustive capture. In particular it does not establish

```text
UniversalStructure -> ClosureBridge
```

and therefore does not reverse the first question’s bare negative answer.

It also does not identify `NonExhaustible` with Marion’s complete saturated phenomenon and does not formalize one / several / combined-horizon saturation. The current fixed-pair and aspectwise-cover theorems remain quantifier guardrails only.

The result of this round is therefore a sharper interpretation ledger:

1. **bare formal horizon question:** `UniversalStructure ↛ ClosureBridge` remains unchanged;
2. **weak repository conditioning reading:** `Structured ∧ Independent` is model-theoretically consistent;
3. **Llorente-style converse pressure:** if every related horizon counts as conditioning, `Independent -> ¬Structured`;
4. **two-way identification:** if relatedness and conditioning coincide, weak independence is exactly horizonlessness;
5. **historical choice between these encodings:** remains source-sensitive and is not settled by the Lean model alone.

## 6. Verification record

Code commit introducing the competing bridge and the three theorems:

- `57ea96cbdf7b00742a18fe60f78dd029cc3d3d7d`

Audit-registration commit:

- `9c2b233485af9e51873cb7043e03855c9883ba91`

Exact-head GitHub Actions run for `9c2b233485af9e51873cb7043e03855c9883ba91`:

- workflow `Lean verification` run `35557897379`: **success**;
- job `verify`: **success**;
- checkout: success;
- pinned Lean setup: success;
- `Build, source coverage, and kernel axiom audit`: success.

`Audit.lean` includes all three new declarations. The audit policy was not weakened.

Local container note: a direct local clone attempt in this runtime could not resolve `github.com`; therefore no local `lake build` is claimed for this round. The exact-SHA GitHub Actions result above is the actual kernel/build verification record.

## 7. Status / next entry

This is a **candidate interpretive-boundary increment**, not a first-question completion event and not yet a “major research progress” notification. Under the project’s reverse-check rule it should be re-derived or independently reviewed in a later round before any upgrade in notification status.

The first-question stop gate remains revised primary-body review plus final same-SHA proof/source audit. Next work should use the direct revised text, if lawfully obtained, to decide whether `Independent` should remain only a weak optional interface or whether a source-backed named bridge is needed in the final interpretation map. No larger saturation API should be added before that evidence arrives.
