# First-question question-shaped boundary / source audit — 2026-09-22

## Scope

This pass continues PR #31 on `research/first-question-main-theorem-20260918` from pre-write head `d3d56ee9834e7ce9b4effee47626349c978ce8de`. The default branch remains `master@c6f527875c0a905c33dac68176ed01a2c64b97c3`.

The object of this pass is deliberately narrow: make the repository's *question-shaped* positive claim explicit under `UniversalStructure`, recheck the strongest existing constructive baseline before adding anything, and repeat a lawful revised-§21 source/prior-art audit. It does not expand the language of saturation.

Before writing, the current `AGENTS.md`, `docs/ROADMAP.md`, `docs/RESULTS.md`, `docs/MARION_HORIZON_GATE.md`, `docs/PRIOR_ART.md`, `Audit.lean`, PR #31 state/reviews/comments, `FirstQuestionClosureBoundary.lean`, and `FirstQuestionStructureNormalization.lean` were reread. The pre-write exact-head PR workflow `35678964770` was `completed/success`; that status is baseline only and is not inherited by this pass's commits.

## External-work / reuse gate

A targeted GitHub code search for the current object — horizon/exhaustion/capture/closure/double-negation combinations — was repeated across:

- `novaspivack/phenomenology-lean`;
- `cbenzmueller/LogiKEy`;
- `alexoltean61/msphml-lean`.

No same-shaped reusable API was located. This is a bounded reuse decision, **not** an originality claim. The registered LogiKEy / AFP / computational-hermeneutic work remains methodological prior art, and the same-topic Merleau-Ponty / Marion literature remains the historical-interpretive baseline.

At the logic level, the relevant ingredients were already in this repository: question-shaped closure normalization and the constructive decomposition into absence of a situated-excess witness plus localized double-negation stability. Therefore no generic modal/semantic dependency, new model family, or new philosophical primitive is justified.

## Lawful revised-§21 source recheck

The official Stanford/De Gruyter book record for *Being Given* was rechecked. It continues to confirm the chapter boundaries (§21 p. 199, §22 p. 212, §23 p. 221) and exposes an official book-content search affordance. The target BG pp. 209–212 / 225–226 body was not exposed to the available reader in this pass. Directly requesting the official §21 chapter DOI endpoint (`10.1515/9780804785723-024`) returned an HTTP 405 in this runtime; this is recorded as a runtime access result, not a claim that the publisher globally withholds the text.

The authorized Google Books records for the Stanford English edition and the 1997 PUF *Étant donné* were also rechecked. They continue to provide limited-preview metadata / contents / indexed vocabulary rather than reviewable target body for BG 209–212 / ED 292–297. No preview metadata or search hit is upgraded to `PRIMARY-DIRECT-PAGE`.

Secondary exact-page sources (including the already registered Leung, Mason and Mackinlay material) continue to corroborate the one-horizon / several-horizons / no-combination sequence and the horizon-as-condition reading. They remain navigation and interpretive evidence only; they do not close the direct revised-primary stop gate.

Searches also surfaced non-publisher full-book copies. They were deliberately excluded. No access-control bypass, DRM circumvention, hidden privileged endpoint, or unauthorized mirror was used.

**Source result:** the stop gate remains open. The lawful direct-body targets remain BG pp. 209–212 plus 225–226, early ED pp. 292–297 plus 314–315, the mapped formal Spanish revised route, or another authorized revised reprint/translation whose textual identity and target passage can be checked directly.

## Strongest formal baseline and the increment

The strongest pre-existing baseline already included:

1. `first_question_universalStructure_closureBridge_iff_appearance_capture` — under `UniversalStructure`, technical `ClosureBridge` is exactly `∀ p, appears p → Captured p`;
2. `first_question_universalStructure_appearance_capture_iff_no_situatedExcess_and_stability` — that appearance-capture statement is exactly absence of a situated-excess counterexample plus appearance-local double-negation stability of `Captured`.

The new theorem is only their composition:

```text
first_question_universalStructure_closureBridge_iff_no_situatedExcess_and_stability
```

with statement

```text
UniversalStructure M →
  (ClosureBridge M ↔
    (¬ HasSituatedExcess M) ∧
    ∀ p, appears M p → (¬¬ Captured M p → Captured M p)).
```

Implementation commit: `60c51ad4c7f25df77a862bb982ce81191c071f52`.

The proof introduces no new assumptions and composes the two already audited equivalences with `Iff.trans`. It makes the exact positive premise boundary visible at the same syntactic level as the research question: **under universal horizon structure, merely having no situated non-exhaustible counterexample is constructively insufficient unless positive capture is double-negation stable on actual appearances.**

This is a FORMAL proof-theoretic normalization only. It is not attributed to Merleau-Ponty or Marion, does not identify `Captured` with Marion's saturated phenomenon, and does not turn the stability conjunct into historical evidence.

`Audit.lean` now includes the theorem in the zero-axiom report list; audit-list commit: `24b69d38fd01268b6aea54d0b6db6266a4bbc51e`.

## Reverse check

The increment was checked against the strongest same-object baseline rather than a weaker theorem:

- it does not replace `UniversalStructure` by a free predicate or move the quantifier off the actual-appearance domain;
- it does not infer positive `Captured` from `¬ HasSituatedExcess` alone;
- the stability conjunct is exactly the existing constructive residue, not a newly hidden classical assumption;
- it adds no `Decidable`, `Classical`, `sorry`, axiom, model, or saturation primitive;
- it is strictly a packaging theorem: no mathematical or historical originality is claimed from the new theorem name.

The already formalized decidability corollaries remain *stronger sufficient sources* of the stability premise and are not silently substituted for the exact boundary.

## Exact-head validation

The first documentation checkpoint was `9c700fad8627145790544daaf3df5c8aae03aaf7`. Both exact-head workflow paths completed successfully:

- push run `35683092895`: `completed/success`;
- pull-request run `35683095565`: `completed/success`.

The PR run's `verify` job `106604097682` confirms the complete verification stack rather than only a status badge:

- `python3 scripts/check.py`: **16 modules, 115 audited theorems**;
- Lean 4.24.0 / Lake 5.0.0 installed successfully;
- full build: **19 jobs completed successfully**;
- root/source coverage and the repository's forbidden-placeholder hygiene step completed in the combined verification job;
- kernel audit: **115/115 theorems without axiom dependencies**, including `first_question_universalStructure_closureBridge_iff_no_situatedExcess_and_stability`.

This final documentation update records those results; its own exact SHA must likewise remain green before a later run may cite it as the branch checkpoint. No check was weakened, skipped as a substitute, or replaced by a static-only claim.

## Stop check and next entry

The first research question is **not yet complete** because the revised Marion direct-body evidence gate remains open. The next entry remains source-first: obtain lawful direct revised §21 body, compare the ordering of related horizon / prior conditioning / one-several-combination horizon cases against the weak `situated / conditions / Exhausts` encoding, and change the Lean language only if that direct text forces a mismatch.
