# First-question fixed-pair cover / reuse audit — 2026-09-21

Scope: `research/first-question-main-theorem-20260918`, first horizon/exhaustibility question only.

## 1. External-first gate

Before packaging the fixed-pair cover comparison, the two live formal baselines were rechecked.

- `novaspivack/phenomenology-lean`, `main@75230e4eab333ad0fc47573747521ccc1a31a163` (2026-05-20), remains unchanged. Targeted searches around horizon / exhaust / capture / multiple horizons / aspect cover found no same-shaped Marion/horizon finite-family API to reuse. This repository remains direct Lean formal-phenomenology prior art, not a source for the present theorem.
- `cbenzmueller/LogiKEy`, `master@b29954b0876d7991baf12f17378f31700f9de759` (2026-09-13), remains the relevant computational-hermeneutic / semantic-embedding methodological baseline. The current theorem is elementary Lean-Core relation algebra, so importing an Isabelle/LogiKEy stack would add unrelated machinery rather than reuse a same-shaped result.
- A bounded global GitHub code search for fixed two-horizon / capture / exhaustion / aspect-cover combinations returned no relevant formal-philosophy API. This is recorded only as a bounded search result, not a nonexistence claim.

Reuse decision: thin local packaging of already verified project primitives and the existing split-model witness; no new generic API, dependency, model family, or logical foundation.

## 2. Same-topic interpretation recheck

The historical boundary was rechecked before strengthening the formal packaging.

- Maria Golebiewska, “Expression and Expressiveness according to Maurice Merleau-Ponty,” *Open Philosophy* 8(1) (2025), DOI `10.1515/opphil-2025-0079`, is an open-access secondary source. Its discussion of Merleau-Ponty describes perception/expression as situated, historically unfinished, and open toward future possibility. This is compatible with the already registered primary-text reading that horizon-structure must not be silently upgraded to exhaustive grasp. It is **secondary corroboration only** and supplies no formal finite-cover theorem.
- Existing same-topic Marion secondary exact-page reconstructions continue to distinguish one horizon, several/multiple horizons, and a stronger combined-horizon case around *Being Given* 210–211 / early *Étant donné* 293–295. They constrain the interpretation of the model but do not identify the project's disjunctive fixed-pair cover with Marion's stronger taxonomy.
- The official De Gruyter Brill record for *Being Given* §21 remains the lawful chapter route (`10.1515/9780804785723-024`, pp. 199–212), but the current runtime still does not expose its body text. No access control or reader API was bypassed. Thus revised §21 direct-body review remains the interpretation stop gate.

No new historical attribution is made in this round.

## 3. Formal delta

New theorem:

`FormalPhenomenology.first_question_fixed_pair_cover_is_strictly_weaker_than_capture`

It packages two facts in the existing relation language.

1. `Captured p` implies existence of a fixed pair `h₀,h₁` of related horizons whose disjunctive coverage reaches every encoded aspect. The proof simply reuses the single exhaustive capture witness twice; no distinctness premise is needed in this direction.
2. The converse fails in the existing `splitModel`: two **distinct** related horizons jointly cover every encoded aspect of an actually appearing phenomenon while that phenomenon remains `NonExhaustible`. This reuses `first_question_two_horizons_can_cover_without_single_horizon_capture` unchanged.

Hence the newly named relation-level comparison is strictly weaker than single-horizon capture. It is only a quantifier / finite-cover guardrail. In particular:

- there is no new horizon-combination operation;
- the pair-cover witness is not identified with Marion's “combination of horizons”;
- no `Saturated` predicate is introduced;
- no classical principle, project axiom, `sorry`, `admit`, or replacement conclusion is added.

`Audit.lean` now includes a `#print axioms` entry for the theorem. The eight-fact aggregate theorem is deliberately unchanged: this new result explains the already packaged two-horizon conjunct rather than adding a ninth philosophical commitment.

## 4. Reverse check against the strongest simple baseline

The comparison uses the strongest trivial direction available in the same object language: a genuine capture witness itself supplies the pair cover by duplication. The strictness direction is not inferred from theorem naming or from predicate freedom; it is witnessed by the already existing actual `splitModel`, with distinct fixed horizons and `NonExhaustible` on the same appearing phenomenon.

This means the result is not merely the weaker `forall aspect, exists horizon` quantifier swap already recorded by `first_question_aspectwise_cover_is_strictly_weaker_than_capture`; it explicitly closes the intermediate **fixed finite pair** case without introducing an abstract finite-family API that the first question does not require.

## 5. Verification

Code commit: `77093958e5f29d0283abfb78b8a69b862402ee03`.

Audit-list commit: `49d8bc74c0b4ccd346f3d0ced9b6b03cd518a957`.

First documentation checkpoint: `644d255b651e9a3b0de834521204e5e8c0733a1e`.

Both exact-SHA workflow paths for `644d255...` completed successfully:

- push run `35547796956`: `success`;
- pull-request run `35547799132`: `success`.

The push run's `verify` job completed checkout, the pinned Lean setup, and the repository step `Build, source coverage, and kernel axiom audit` successfully. The workflow file confirms this step runs `python3 scripts/check.py`. Thus the new theorem, root/source coverage, and its `Audit.lean` axiom report were kernel-checked on that exact source tree; no audit policy or check was weakened.

No local build is claimed in this runtime. This final verification-note commit changes documentation only and must itself receive the same regression workflow before it is treated as the round's final verified SHA.

The first research question remains open at the revised-primary interpretation gate; this finite-cover theorem does not by itself satisfy the stop condition.
