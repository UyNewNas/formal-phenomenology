# First-question constructive closure boundary audit

Date: 2026-09-22

Branch at start of round: `research/first-question-main-theorem-20260918@2129396b35f43be35ea97fbf310779200e87b049`.

## Object audited

This round asks a deliberately narrow proof-theoretic question about the repository's existing encoding:

> If there is no actually appearing, structured, non-exhaustible witness, does that already give the positive `ClosureBridge`?

The proposed answer must not smuggle in classical double-negation elimination, must not introduce a new philosophical predicate, and must not be attributed to Merleau-Ponty or Marion.

## External-work gate

### Proof infrastructure

The project remains pinned to Lean `v4.24.0`; the corresponding Lean tag is commit
`797c613eb9b6d4ec95db23e3e00af9ac6657f24b`.

A targeted Lean/Mathlib search for generic double-negation / existential elimination infrastructure found only the expected general logical machinery.  The project therefore keeps the proof at Lean-Core level instead of adding Mathlib or another logic dependency.  In particular, the new results are proved directly from the existing project theorem
`nonExhaustible_iff_not_captured`; no `Classical`, `Decidable.not_not`, `by_contra`, `native_decide`, or imported modal-logic API is used.

Direct formal-phenomenology prior art was also rechecked at
`novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163` with the targeted terms `horizon`, `exhaust`, `capture`, and `manifestation`; no same-shaped horizon/exhaustibility constructive-normal-form API was located.  This does **not** support an originality claim: the logical content is elementary intuitionistic reasoning, while that repository remains important prior art for Lean formal phenomenology as a method.

### Same-topic / source audit

The revised-primary stop gate remains unchanged.  The official chapter record for Jean-Luc Marion, *Being Given*, §21 remains DOI `10.1515/9780804785723-024`, pp. 199–212; the current runtime still did not lawfully expose the target chapter body.  PhilPapers confirms the chapter metadata and DOI but not the body text.

A fresh targeted search again surfaced Brock Mason's published secondary discussion quoting/locating the one-horizon / multiple-horizon / no-combination sequence at *Being Given* 210–211.  That remains useful **SECONDARY-EXACT-PAGE** evidence only.  It does not replace direct review of BG pp. 209–212 / 225–226 or mapped ED pp. 292–297 / 314–315.

Reuse decision: no new historical interface is justified by this round.  Keep the current `Presentation` vocabulary and add only a proof-theoretic theorem over existing predicates.

## Formal result

New module: `FormalPhenomenology/FirstQuestionClosureBoundary.lean`.

### 1. Absence of situated excess is exactly double-negated capture

`first_question_no_situatedExcess_iff_double_negated_capture` proves, constructively,

```text
¬ M.HasSituatedExcess
↔
∀ p, M.appears p → M.Structured p → ¬¬ M.Captured p.
```

This is the exact constructive polarity of “there is no counterexample.”  It is intentionally weaker than the positive witness-producing `ClosureBridge`.

### 2. Exact constructive decomposition of `ClosureBridge`

`first_question_closureBridge_iff_no_situatedExcess_and_captured_stability` proves

```text
M.ClosureBridge
↔
(¬ M.HasSituatedExcess) ∧
(∀ p, M.appears p → M.Structured p → (¬¬ M.Captured p → M.Captured p)).
```

So the positive closure bridge decomposes into:

1. exclusion of an actually appearing structured counterexample; and
2. double-negation stability of `Captured` on exactly the appearing/structured domain where closure is requested.

This mirrors the repository's earlier constructive conditioning analysis without creating another primitive or claiming that the historical texts provide such stability.

## Interpretive boundary

The result is **FORMAL** only.

- `Captured` remains the repository's extensional “one situated horizon exhausts all encoded aspects” predicate.
- `HasSituatedExcess` remains a model profile, not a definition of Marion's saturated phenomenon.
- No source is being read as asserting double-negation stability.
- The theorem does not turn failure to find a countermodel, textual or computational, into a historical claim of exhaustive closure.

The first research question therefore remains source-gated even if this theorem is kernel-verified.

## Validation handoff

The code module, root import, and two new `#print axioms` entries were committed before this document.  Exact-head GitHub Actions must be read before treating the theorem as verified.  The expected acceptance condition is the existing full build + root/source coverage + forbidden-placeholder scan + zero-axiom audit; a successful source commit alone is not a validation result.
