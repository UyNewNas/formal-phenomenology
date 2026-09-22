# First-question finite-family ClosureBridge audit

Date: 2026-09-23

Branch: `research/first-question-main-theorem-20260918`

## Question

The branch already proved the pointwise exact normal form

`Captured p ↔ ∃ finite family cover + one situated dominator`

and, separately, an exact finite-cover characterization under a global pairwise-upper-bound hypothesis. This round checks whether the project-level bridge itself can be normalized directly against the stronger pointwise baseline, without carrying the extra pairwise-upper-bound premise.

## External-first / reuse check

### Proof infrastructure

Before adding the wrapper theorem, the 2026-09-23 GitHub code search rechecked current Mathlib for `exists finite family upper bound directed Finset exists_le`. The indexed revision returned by the search was `leanprover-community/mathlib4@627c8055026bb70055db74f8a1579e169aea6def`; it contains generic directed/order infrastructure, but nothing that should replace this project-specific lifting of an already proved equivalence over the `appears ∧ Structured` quantifier domain.

The repository remains Lean-Core-only for this result. Adding Mathlib merely to package a pointwise iff under two explicit quantifiers would increase dependencies without supplying a stronger consumer theorem.

A targeted code search for `horizon exhaust finite cover dominator captured` was rerun over the registered formal-philosophy baselines:

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163`;
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759`;
- `alexoltean61/msphml-lean`.

No same-shaped reusable API was located in that scoped search. This is a bounded reuse decision, not a novelty or nonexistence claim. LogiKEy / AFP / computational-hermeneutic work remain methodological prior art for explicit interpretation choices and model comparison.

### Same-topic textual gate

The source gate was refreshed separately from the proof claim. Google Books still exposes the 2002 Stanford *Being Given* record as limited preview metadata, and the current PhilPapers/De Gruyter bibliographic routes identify §21, “Sketch of the Saturated Phenomenon: The Horizon,” as pp. 199–212 (DOI `10.1515/9780804785723-024`) and the *Essential Writings* reprint `Sketch of the Saturated Phenomenon` as pp. 108–134 (DOI `10.1515/9780823292905-006`). The target revised body needed by the stop gate was not directly exposed through the lawful public routes checked in this runtime.

No unauthorized full-book mirror is used. Therefore the new theorem receives no stronger Marion attribution and does not close the revised-primary-text gate.

## Formal increment

`FormalPhenomenology/FirstQuestionFiniteCoverExactness.lean` now adds

`first_question_closureBridge_iff_exists_finite_family_with_dominator`.

Statement, schematically:

```text
ClosureBridge
↔
∀ p,
  appears p → Structured p →
  ∃ finite family hs,
    hs jointly covers every presented aspect by situated members
    ∧ there exists one situated hStar dominating every member of hs.
```

The proof is deliberately thin. Forward: `ClosureBridge` gives `Captured p`, then the already verified pointwise theorem packages its witness as a singleton finite family with dominator. Reverse: the supplied family+dominator package is converted back to `Captured p` by the same pointwise theorem, exactly on the quantifier domain consumed by `ClosureBridge`.

## Strong-baseline / reverse check

The stronger applicable baseline is the existing pointwise equivalence, not the newer pairwise-upper-bound theorem. The new result therefore does **not** claim that pairwise upper bounds are necessary. They are only one mechanism for manufacturing a dominator from a finite cover when a dominator is not already supplied.

Conversely, the existential finite-family+dominator package does not define a genuinely plural-horizon notion: because a capture witness yields a singleton package and any such package collapses back to one capturing horizon, it is extensionally exact with `Captured` in the current model language.

This guards against overstating the finite-family formalization as Marion's stronger “one / several / no combination” semantics.

## Fidelity / scope

No new philosophical primitive, model family, classical principle, axiom, dependency, or historical attribution is introduced. A `List Horizon` remains a finite list of named horizons; the dominator remains an extensional `admits` upper bound. Neither is identified with a semantic operation combining horizons.

The result is a FORMAL quantifier normalization for the first research question only.

## Verification / handoff

The theorem is registered in `Audit.lean`. Exact-head GitHub Actions is authoritative for elaboration, root reachability, source coverage, and zero-axiom audit. Record the final branch SHA and workflow result in the existing PR #31 checkpoint only after that exact head finishes.

The first research question remains open until a lawful, reliably mapped revised primary body is directly reviewed (BG 209–212 plus the tracked later passage, early ED 292–297 plus 314–315, the mapped authorized Spanish route, or another authorized revised reprint/translation). The next entrance remains source-first; do not add a horizon-combination primitive unless that text requires it.
