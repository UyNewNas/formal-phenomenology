# First-question complete formal target and §21 source-route audit — 2026-09-19

This audit records incremental research/formalization passes on the first horizon question. It does **not** mark the historical question complete and it does **not** treat publisher metadata, unofficial mirrors, search snippets, or secondary quotations as direct review of *Being Given* §21.

## 1. Repository state read before writing

The audit began from PR #31 (`research/first-question-main-theorem-20260918`), base `master@c6f527875c0a905c33dac68176ed01a2c64b97c3`.

Before the current update, PR #31 was open, non-draft and mergeable. The branch already had exact-head successful Actions for the prior theorem packaging. Open Issue #1 remains the primary-text/interpretation task; downstream P2 work is not part of this pass.

The project-level Lean entry points were re-read together with `AGENTS.md`, `README.md`, `docs/ROADMAP.md`, `docs/RESULTS.md`, `docs/INTERPRETATION.md`, `docs/SOURCES.md`, `docs/PRIOR_ART.md`, and the current §21/§23 source audits.

## 2. External-work / reuse gate

No new logical primitive is introduced in these passes. The Lean changes are aggregation or scope-guardrail statements over already kernel-checked internal results, so the relevant external-work decision remains reuse rather than a new framework:

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163` remains a direct Lean formal-phenomenology precedent, but the prior audit found no Marion/horizon API matching the present `situated / conditions / Exhausts` interface;
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759` remains methodological prior art for semantic embeddings and computational hermeneutics, not a justified dependency for these Lean-Core aggregations;
- the propositions used here are elementary relation/model consequences and are not claimed as new propositional logic, a new historical interpretation, or evidence of originality from theorem count or zero-`sorry` status.

Reuse decision: **thin internal aggregation; no external port and no new dependency**.

The same-topic interpretation baseline was also rechecked before strengthening the project-level target. King-Ho Leung (2022), “Sartre and Marion on Intentionality and Phenomenality,” explicitly reads *Being Given* pp. 211–12 as linking Marion's “does not depend on any horizon” language to freedom from horizon as a condition of possibility and to givenness without condition or restraint. This is important precisely because the repository's formal predicate `Independent` is deliberately weaker: it means only absence of a witness in the separate `conditions` relation. Therefore the finite formal countermodel `Independent ∧ Captured` is a **model-scope guardrail**, not a counterexample to Leung's stronger historical reading and not a claim about Marion's full saturated phenomenon.

## 3. Lawful primary-source routes checked

### UNSAM author lectures

UNSAM Edita's official product page for Jean-Luc Marion, *Acerca de la donación. Una perspectiva fenomenológica* confirms:

- author: Jean-Luc Marion;
- translator: Gerardo Losada;
- edition: 2005;
- ISBN `987-9020-55-3`;
- the book consists of conferences delivered at the Universidad Nacional de San Martín and presents the line of work from *Réduction et donation* through *Étant donné*, later taking definitive form in *De Surcroît*.

Official route checked:

- `https://unsamedita.unsam.edu.ar/product/acerca-de-la-donaci/`

The publisher page exposes a `Leer fragmento` link, but that link resolves to an obsolete UNSAM path that returned HTTP 404 in the recorded check. The official page therefore provides publication/provenance metadata but **not** readable body text in the present environment.

Search indexes on non-publisher sites indicate that this author lecture volume contains a section titled approximately “Bosquejo del fenómeno saturado: el horizonte” and reproduce horizon material closely related to the target argument. Those copies are navigation signals only; they are not accepted as source evidence and are not used to close the stop gate.

Evidence status:

`PRIMARY-PUBLISHER-METADATA / SAME-AUTHOR-LECTURE / OFFICIAL-FRAGMENT-LINK-BROKEN / BODY-NOT-REVIEWED`.

### De Gruyter / Stanford chapter route

A further lawful route was checked on 2026-09-19. De Gruyter's Stanford University Press edition exposes the official chapter metadata for *Being Given* and identifies the target chapter exactly as:

- Jean-Luc Marion, “§21 Sketch of the Saturated Phenomenon: The Horizon”;
- *Being Given: Toward a Phenomenology of Givenness*;
- pp. 199–212;
- DOI `10.1515/9780804785723-024`.

The same official book page lists §22 at pp. 212–221 and §23 at pp. 221–234. This is a useful publisher-level confirmation of the target section boundary and DOI, but the chapter body remains behind access control in the current environment. It is therefore recorded as **PRIMARY-PUBLISHER-METADATA / EXACT-CHAPTER-DOI / BODY-NOT-REVIEWED**, not as primary-page review.

The 2013 Fordham / De Gruyter *Essential Writings* route was also rechecked: the official table of contents confirms `Sketch of the Saturated Phenomenon`, pp. 108–134, DOI `10.1515/9780823292905-006`, but current public access likewise does not expose the chapter body. Formal reprint provenance remains useful; it does not close the §21 body-text gate.

### Secondary exact navigation recheck

Two secondary routes were re-read only to test the interpretation boundary, not to substitute for the missing primary body:

- Leung 2022 gives an exact BG 211–12 anchor for the “does not depend on any horizon” / condition-of-possibility reading;
- Dermot Moran's published discussion, available through an institutional PDF, anchors the same region and explicitly quotes Marion's contrast between the horizon/constituting-I presuppositions and the saturated phenomenon being unconditioned by a horizon.

These strengthen navigation and confirm that the repository should keep `related horizon`, `conditioning horizon`, and extensional `Exhausts` distinct. They remain secondary evidence.

## 4. Formalization: one complete narrow kernel target

The project packages the first question in `FormalPhenomenology/FirstQuestion.lean`. The aggregate target now makes **six** formal facts explicit:

1. bare horizon structure does not entail exhaustive closure;
2. an actual situated/non-exhaustible finite witness exists;
3. weak `Independent` (absence of a `conditions` witness) does **not** by itself entail `NonExhaustible`;
4. on appearing phenomena, `Independent → NonExhaustible` holds exactly when no appearing `Captured ∧ Independent` witness exists;
5. producing an actual conditioning witness on appearing captured phenomena is exactly conflict exclusion plus captured-domain double-negation stability;
6. relatedness + weak independence + non-exhaustibility is jointly satisfiable under `ConditioningIsSituated`.

The current statement is:

```lean
theorem first_question_complete_formal_answer :
    (¬ (∀ M : Presentation, M.UniversalStructure → M.ClosureBridge)) ∧
      (∃ M : Presentation, M.HasSituatedExcess) ∧
      (¬ (∀ (M : HorizonConditioning) (p : M.base.Phenomenon),
        M.Independent p → M.base.NonExhaustible p)) ∧
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

The new third conjunct does not introduce a new theorem family. It directly reuses the already audited `horizon_independence_does_not_imply_nonExhaustible`, whose countermodel is `closedIndependentConditioning`. Making it explicit in the final aggregate prevents a misleading reading in which the exact-condition equivalence is displayed without the accompanying fact that the condition is not automatic in the weak relation language.

`Audit.lean` already contains both `#print axioms FormalPhenomenology.horizon_independence_does_not_imply_nonExhaustible` and `#print axioms FormalPhenomenology.first_question_complete_formal_answer`, so no parallel generic API or extra audit declaration was required.

## 5. Interpretation boundary after the source checks

The lawful-source rechecks do not justify changing the current three-axis interpretation:

```text
situated   -- a horizon is related to the appearance
conditions -- a horizon functions as a prior condition / constraint
Exhausts   -- extensional coverage in the present aspect model
```

Accordingly:

- `Independent` still does not mean `Horizonless`;
- formal `Independent` also does not, by definition, mean every stronger historical sense of “free from horizon-imposed limitation”;
- `Captured` still is not Marion's term “saturates a horizon”;
- `NonExhaustible` remains a weak extensional axis, not a definition of saturated phenomenon;
- no `priorDelimits`, horizon-combination, or intention/intuition primitive is introduced merely because another publication route or secondary quotation has been located.

The direct-primary §23 half remains covered by the published Czech translation audit. The §21 half remains open.

## 6. Validation and stop gate

Each Lean-changing commit must be validated on its exact SHA by GitHub Actions because the current execution environment is not used as a substitute for the pinned project toolchain. Required checks remain:

- pinned Lean build;
- `python3 scripts/check.py` source/root coverage;
- root import coverage;
- every listed `#print axioms` report, including `first_question_complete_formal_answer`.

Until exact-SHA CI succeeds, a changed aggregate theorem is recorded as written and committed, not kernel-verified.

Even after CI success, the overall first research question is **not complete** until lawful direct body-text review closes §21 by one of the already registered routes: BG pp. 209–212, early ED pp. 292–297, the mapped Spanish target SD pp. 341–342, or a reliably mapped authorized reprint/translation carrying that passage. Once the text is obtained, the interpretation must be frozen and the full proof/audit chain rerun on the same final SHA.
