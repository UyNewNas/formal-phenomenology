# First-question local conditioning/exhaustion audit

Date: 2026-09-23

Branch: `research/first-question-main-theorem-20260918`

## Scope

This round keeps the first research question at the relation level already authorized by the project.  The narrow formal check is whether an actually appearing, already structured phenomenon can be related to a horizon and positively marked as conditioned by that same horizon while the horizon nevertheless fails to exhaust the phenomenon.

No new philosophical primitive is introduced.  In particular, this round does **not** identify the project relation `conditions` with the full historical content of a phenomenological horizon, and it does not identify local failure of `Exhausts` with Marion's saturated phenomenon.

## External-first / reuse check

### Formal infrastructure

Targeted GitHub code search was rerun before adding the theorem:

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163`;
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759`;
- `alexoltean61/msphml-lean@9d6559db6502bc9813dcf028d7ea26ae80e9dc93`.

Query: `horizon conditioning exhaust capture`.

No same-shaped reusable horizon/conditioning/exhaustion declaration was located.  This is a bounded reuse search, not a novelty claim.  The new theorem therefore reuses the existing `splitDependentConditioning` finite model and Lean Core only; no modal-logic, relation, set, or Mathlib API is added.

### Same-topic philosophy/source comparison

Fresh same-topic source search used combinations of `horizon`, `condition of possibility`, `exhaust`, `no combination of horizons`, `Being Given`, and `saturated phenomenon`.

1. King-Ho Leung, “Sartre and Marion on Intentionality and Phenomenality,” *Theory, Culture & Society* (2022), full Sage text, directly reproduces Marion with exact reference to *Being Given* pp. 211–212: the saturated phenomenon does not depend on a horizon understood there as the condition of possibility.  Leung is **SECONDARY-DIRECT-FULLTEXT / EXACT-PAGE-QUOTE**.  It supports keeping `conditions` and mere horizon-relatedness separate, but it is not the revised Marion book body itself.
2. Shane Mackinlay, *Interpreting Excess*, publicly indexed text again gives the three-way horizon discussion with exact BG/ED crosswalk: one horizon can be saturated, further horizons can be required, and the strongest case is described as one in which no combination of horizons tolerates the phenomenon's absoluteness (BG 211 / ED 295).  This remains **SECONDARY-EXACT-CROSSWALK**, not primary-page review.
3. Brock Mason's open Aporia PDF independently summarizes the same BG 210–211 sequence and quotes the no-combination clause at p. 211.  This is another secondary cross-check, not a replacement for Marion's revised text.
4. Google Books currently exposes the Taylor & Francis 2004 *Phenomenology: Critical Concepts in Philosophy*, vol. 4 metadata and contents, including the authorized reprint `Sketch of the saturated phenomenon: the horizon`, pp. 5–28.  The accessible preview/index surface in this round did **not** expose the target body passage.  It therefore improves lawful routing only; it does not satisfy the direct-primary gate.
5. The PDCnet URL for Marion's 1996 *Philosophy Today* PDF was retried.  Search indexing still exposes text, but opening the PDF directly returned HTTP 403 in this runtime.  Its status therefore remains the already registered `PRIMARY-DIRECT-INDEXED`, not page-image or newly verified PDF-body review.

A non-publisher mirror also surfaced a text copy of the later *Essential Writings* chapter.  Because that surface is not an authorized publisher/repository route, it is deliberately **not** used as stop-gate evidence and no completion claim is drawn from it.

## Formal increment

`FormalPhenomenology/FirstQuestionPerHorizonConditioning.lean` adds:

`first_question_appearing_structured_related_conditioning_does_not_force_horizon_exhaustion`.

Its statement negates the universal bridge

```text
appears p
→ Structured p
→ situated p h
→ conditions p h
→ Exhausts p h.
```

The proof instantiates the existing `splitDependentConditioning` model at the appearing phenomenon `()` and horizon `false`.  In that model:

- the phenomenon appears;
- it is structured;
- the selected horizon is related;
- the selected horizon conditions the phenomenon;
- yet `splitDependentConditioning_nonExhaustible` gives `¬ Exhausts () false`.

Thus the theorem makes the missing implication local and explicit: even positive same-horizon `situated + conditions` is not enough, in the current extensional language, to infer same-horizon exhaustion.

This is not a new logical mechanism.  The strongest internal baseline already included the global witness `first_question_total_relatedness_mutual_conditioning_does_not_force_closure` and the pointwise existential profile `first_question_every_related_conditioning_horizon_still_nonexhaustive`.  The new theorem is a thin non-entailment normal form aligned more directly with the wording of the first question.

## Reverse check

The theorem does not depend on predicate freedom between `situated` and `conditions`: the same witness used by the stronger mutual-conditioning result has both directions available and total relatedness on its actual appearance.  It also does not use an empty or wholly uninformative horizon: the already verified nontrivial-partial theorem shows each Boolean horizon admits one presented aspect and misses another.

Accordingly, the formal conclusion is limited to this exact point:

> same-horizon relatedness plus positive conditioning does not, without an extra bridge, logically entail that the same horizon exhausts the appearing structured phenomenon.

It does **not** follow that historical phenomenological conditioning is independent of exhaustibility, nor that Marion's notion of saturation is exhausted by this model.

## Commits / validation handoff

Code commit:

`9d2a746244b5faab9fb8d42be9f4974dd01e8b17`

Audit registration commit:

`87f6eadceeb3caaaf4539ad0ea4e27fe3d83e4e1`

This documentation commit is the final head for the round.  Exact-head Actions must be read after it lands.  Completion still requires lawful direct review of the revised Marion body (BG 209–212 / 225–226, ED 292–297 / 314–315, or an authorized reliably mapped reprint body), followed by interpretation freeze and a same-final-SHA full build/source-coverage/kernel-axiom audit.
