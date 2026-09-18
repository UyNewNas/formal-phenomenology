# First-question complete formal target and §21 source-route audit — 2026-09-19

This audit records one incremental research/formalization pass on the first horizon question. It does **not** mark the historical question complete and it does **not** treat publisher metadata, unofficial mirrors, or search snippets as direct review of *Being Given* §21.

## 1. Repository state read before writing

The round began from PR #31 (`research/first-question-main-theorem-20260918`) at exact head `b6ac5ebb7568f1789970da71fe9a6c9f2da62be9`, base `master@c6f527875c0a905c33dac68176ed01a2c64b97c3`.

Before the change, PR #31 was open, non-draft, mergeable, had no submitted reviews or unresolved review threads, and exact-head Actions run `35389359618` was successful. Open Issue #1 remains the primary-text/interpretation task; Issues #2 and #3 remain downstream P2 work and were not advanced.

The existing three project-level Lean entry points were re-read together with `AGENTS.md`, `README.md`, `docs/ROADMAP.md`, `docs/RESULTS.md`, `docs/INTERPRETATION.md`, `docs/SOURCES.md`, `docs/PRIOR_ART.md`, and the current §21/§23 source audits.

## 2. External-work / reuse gate

No new logical primitive is introduced in this round. The proposed Lean statement below is only an aggregation of four already kernel-checked internal results, so the relevant external-work decision remains reuse rather than a new framework:

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163` remains a direct Lean formal-phenomenology precedent, but the prior audit found no Marion/horizon API matching the present `situated / conditions / Exhausts` interface;
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759` remains methodological prior art for semantic embeddings and computational hermeneutics, not a justified dependency for this Lean-Core aggregation;
- the theorem added here claims no new propositional logic, no new historical interpretation, and no originality from theorem count or zero-`sorry` status.

Reuse decision: **thin internal aggregation; no external port and no new dependency**.

## 3. New lawful primary-source route checked: UNSAM author lectures

A new same-author publication route was checked because the remaining stop gate is Marion §21.

UNSAM Edita's official product page for Jean-Luc Marion, *Acerca de la donación. Una perspectiva fenomenológica* confirms:

- author: Jean-Luc Marion;
- translator: Gerardo Losada;
- edition: 2005;
- ISBN `987-9020-55-3`;
- the book consists of conferences delivered at the Universidad Nacional de San Martín and presents the line of work from *Réduction et donation* through *Étant donné*, later taking definitive form in *De Surcroît*.

Official route checked:

- `https://unsamedita.unsam.edu.ar/product/acerca-de-la-donaci/`

The publisher page exposes a `Leer fragmento` link, but that link currently resolves to the obsolete UNSAM path

- `https://www.unsam.edu.ar/unsamedita2015/pa_autor/jean-luc-marion/`

which returned HTTP 404 in this round. The official page therefore provides publication/provenance metadata but **not** readable body text in the present environment.

Search indexes on non-publisher sites indicate that this author lecture volume contains a section titled approximately “Bosquejo del fenómeno saturado: el horizonte” and reproduce horizon material closely related to the target argument. Those copies were used only as navigation signals; they are **not** accepted as source evidence and are not used to close the stop gate.

Evidence status for this route:

`PRIMARY-PUBLISHER-METADATA / SAME-AUTHOR-LECTURE / OFFICIAL-FRAGMENT-LINK-BROKEN / BODY-NOT-REVIEWED`.

This route is useful because it is an authorized same-author publication explicitly situated between *Réduction et donation*, *Étant donné*, and *De Surcroît*. It is **not yet proven to be a formal reprint or translation of early ED §21**, and without official body access it cannot substitute for BG 209–212 / early ED 292–297.

A separate bibliographic route was also rechecked for the authorized Spanish translation *Siendo dado* (Síntesis, 2008; Javier Bassas Vila; ISBN `9788497565561`). Current public retail metadata confirms the edition but does not expose the target body, so its evidence level remains bibliographic/navigation only.

## 4. Formalization increment: one complete narrow kernel target

The formal pieces required by the first question were already verified separately, but the project still had no **single theorem that collected all four parts of the narrow formal answer**. `FormalPhenomenology/FirstQuestion.lean` now adds:

```lean
theorem first_question_complete_formal_answer :
    (¬ (∀ M : Presentation, M.UniversalStructure → M.ClosureBridge)) ∧
      (∀ M : HorizonConditioning,
        (∀ p, M.base.appears p → M.Independent p → M.base.NonExhaustible p) ↔
          ¬ ∃ p, M.base.appears p ∧ M.base.Captured p ∧ M.Independent p) ∧
      (∀ M : HorizonConditioning,
        (∀ p, M.base.appears p → M.base.Captured p → M.Conditioned p) ↔
          ((∀ p, M.base.appears p → M.base.Captured p → ¬ M.Independent p) ∧
           (∀ p, M.base.appears p → M.base.Captured p →
             (¬ ¬ M.Conditioned p → M.Conditioned p)))) ∧
      (∃ M : HorizonConditioning,
        M.ConditioningIsSituated ∧ M.HasSituatedIndependentExcess)
```

Its proof is intentionally only a composition of:

1. `first_question_formal_answer.1` — bare horizon structure does not entail exhaustive closure;
2. `first_question_formal_answer.2` — exact appearing-domain conflict condition;
3. `first_question_witness_boundary` — exact additional proof-theoretic premise for an actual conditioning witness;
4. `first_question_compatibility_witness` — finite compatibility witness for relatedness + weak independence + non-exhaustibility under conditioning coherence.

This addition is useful as a **single final kernel target** for the formal half of the stop condition. It is not a new philosophical result and does not replace the source gate.

`Audit.lean` now includes `#print axioms FormalPhenomenology.first_question_complete_formal_answer` so the same theorem must pass the project's zero-axiom audit.

## 5. Interpretation boundary after the source check

The new UNSAM route does not justify changing the current three-axis interpretation:

```text
situated   -- a horizon is related to the appearance
conditions -- a horizon functions as a prior condition / constraint
Exhausts   -- extensional coverage in the present aspect model
```

Accordingly:

- `Independent` still does not mean `Horizonless`;
- `Captured` still is not Marion's term “saturates a horizon”;
- `NonExhaustible` remains a weak extensional axis, not a definition of saturated phenomenon;
- no `priorDelimits`, horizon-combination, or intention/intuition primitive is introduced merely because another Marion publication route exists.

The direct-primary §23 half remains covered by the published Czech translation audit. The §21 half remains open.

## 6. Validation and stop gate

The commit carrying this audit must be validated on its exact SHA by GitHub Actions because the current execution environment cannot perform a reliable local clone/build. Required checks remain:

- pinned Lean build;
- `python3 scripts/check.py` source/root coverage;
- root import coverage;
- every listed `#print axioms`, now including the complete formal target.

Until that exact-SHA CI succeeds, this round does not claim kernel validation of the new wrapper theorem.

Even after CI success, the overall first research question is **not complete** until lawful direct body-text review closes §21 by one of the already registered routes: BG pp. 209–212, early ED pp. 292–297, or a reliably mapped authorized reprint/translation carrying that passage. Once the text is obtained, the interpretation must be frozen and the full proof/audit chain rerun on the same final SHA.
