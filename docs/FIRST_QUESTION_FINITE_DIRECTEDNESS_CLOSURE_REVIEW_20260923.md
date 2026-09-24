# First-question finite-directedness / closure reverse review

Date: 2026-09-23

Branch: `research/first-question-main-theorem-20260918`

## Object under review

The previous finite-directedness checkpoint proved that every finite list of horizons in `expandingModel` has a situated common `admits`-dominator, while the model still has `HasExcess`. This round reverse-checks that result against the actual first-question conclusion, `ClosureBridge`, rather than treating `HasExcess` alone as the endpoint.

The strongest existing positive baseline remains `first_question_finite_cover_pairwise_upper_bounds_imply_closureBridge`: finite upper-bound closure yields capture only after a finite family is already known to cover every presented aspect. The new wrapper therefore tests whether finite directedness plus `UniversalStructure`, without that coverage premise, could nevertheless imply B.

## External-first / reuse check

A bounded recheck was performed before adding the wrapper.

### Proof infrastructure

Fresh searches of current Mathlib documentation for `Directed`, finite upper bounds, and directed suprema again locate the generic order-theoretic baselines in `Mathlib.Order.Directed`, finite-order/upper-bound APIs, and complete-partial-order infrastructure. These results concern abstract directed relations / preorders. This repository still has no Mathlib dependency, and its relation is the phenomenon-relative predicate

```text
admits h a
```

rather than a bundled preorder on horizons. The already-registered decision therefore remains: generic directedness is method/API precedent; a one-theorem Lean-Core wrapper is cheaper and semantically more explicit than adding an order dependency.

### Formal-philosophy repositories

Targeted GitHub code searches on 2026-09-23 for combinations of `finite directed`, `horizon`, `capture`, and `exhaustible` were rerun over:

- `novaspivack/phenomenology-lean` (registered commit `75230e4eab333ad0fc47573747521ccc1a31a163`);
- `cbenzmueller/LogiKEy` (registered commit `b29954b0876d7991baf12f17378f31700f9de759`);
- `alexoltean61/msphml-lean` (registered prior-art baseline).

No same-shaped reusable horizon/exhaustibility API was located in that scoped search. This is a reuse decision, not a novelty or nonexistence claim. The computational-hermeneutic / computational-metaphysics work remains methodological precedent.

### Same-topic textual gate

Lawful public routes for the revised Marion text were rechecked. Google Books still exposes the 2002 *Being Given* bibliographic record / limited-preview table of contents, including §21 beginning at p. 199, §22 at p. 212, and §23 at p. 221, but not the target pp. 209–212 body in this runtime. The De Gruyter/Fordham records for §21 and the authorized *Essential Writings* reprint likewise expose chapter/provenance metadata rather than the target body. Leung and Mason continue to supply secondary exact-page triangulation for BG 210–212; they do not satisfy the direct revised-primary stop gate. Unauthorized full-book mirrors are not used.

No source evidence found in this round licenses identifying formal finite directedness with Marion's historical phrase “combination of horizons”.

## Formal increment

New module:

`FormalPhenomenology/FirstQuestionFiniteDirectedness.lean`

New theorem:

```text
first_question_finite_directedness_does_not_imply_closureBridge
```

It exhibits a `Presentation M` satisfying:

1. `M.UniversalStructure`;
2. for every appearing `p` and every finite list of horizons, a situated horizon dominates the `admits`-content of all horizons in the list;
3. `¬ M.ClosureBridge`.

The witness is exactly the existing `expandingModel`. The proof reuses `expandingModel_structure`, `expandingModel_finite_list_has_dominator`, `expandingModel_excess`, and `structure_bridge_excess_inconsistent`; it adds no model, primitive, classical principle, dependency, or historical attribution.

This makes the logical boundary question-shaped:

```text
UniversalStructure + finite directedness  ↛  ClosureBridge.
```

The missing premise behind the positive finite-upper-bound route is finite **coverage** of the full presented aspect-domain (or a genuinely global completion witness), not the existence of finite common upper bounds by itself.

## Commits and verification status

Code commit: `09b48c4516427268a704e6a32859cdf54f1ff404`.

Root import commit: `bd03e6e75e092840d21fb54c1b06dcd4f950a02d`.

Axiom-audit registration commit: `9ed4a7eea2d7e8670a9918f0c547ec4ea5f97ee0`.

The theorem is imported by the root and listed in `Audit.lean`. Final exact-head Actions status must be read after this documentation commit; no build or kernel verdict is claimed here in advance.

## Stop-gate status

This is a formal reverse-check, not completion of the first research question. The direct revised-primary interpretation gate remains the same: BG 209–212 plus the tracked later passage, early ED 292–297 plus 314–315, the mapped authorized Spanish route, or another reliably mapped authorized revised reprint/translation. Only direct body evidence that changes the interpretation should trigger a new philosophical primitive or interface.
