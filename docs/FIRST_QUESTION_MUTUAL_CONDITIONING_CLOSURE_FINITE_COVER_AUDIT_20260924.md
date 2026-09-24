# Mutual-conditioning closure finite-cover exactness audit — 2026-09-24

## Object

This round lifts the already verified fixed-phenomenon finite-cover theorem to the exact quantifier domain of the first-question `ClosureBridge` under the explicit competing encoding in which `situated` and `conditions` coincide in both directions.

The new theorem does **not** add a new philosophical primitive, model family, semantic horizon-combination operation, or historical attribution. Its purpose is to make the strongest existing finite-cover baseline explicit in the conditioning vocabulary and at the same `appears p → Structured p` scope used by `ClosureBridge`.

## Mandatory external-work gate

### Formal / engineering reuse

Before adding the theorem, targeted GitHub code searches on 2026-09-24 checked the already registered external baselines for a same-shaped finite-cover / conditioning / horizon result:

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163`;
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759`;
- `alexoltean61/msphml-lean@9d6559db6502bc9813dcf028d7ea26ae80e9dc93`.

Queries combined `horizon`, `finite cover`, `upper bound`, `capture`, and `conditioning`. The scoped searches returned no same-shaped reusable API. This is a bounded reuse result, **not** a novelty claim; those external repositories were not rebuilt in this runtime.

No generic finite-set, order, modal, or semantic-embedding infrastructure is needed. The repository already contains the stronger reusable fixed-phenomenon theorem

`first_question_mutual_conditioning_captured_iff_nonempty_finite_conditioning_cover_of_pairwise_upper_bounds`

and, underneath it, the neutral situated theorem

`first_question_captured_iff_nonempty_finite_situated_cover_of_pairwise_upper_bounds`.

Accordingly, the new result is deliberately a thin Lean-Core adapter over those verified baselines rather than a parallel finite-cover development or a new dependency on Mathlib, LogiKEy, AFP, Rocq, or Agda.

### Same-topic interpretation and source gate

The interpretation boundary remains the one already registered in `docs/PRIOR_ART.md`, `docs/INTERPRETATION.md`, and `docs/SOURCES.md`: related horizon, horizon as condition of possibility, and exhaustive capture are not silently identified. Murga, Djian, Deketelaere, Mason, Leung, Mackinlay and the Marion 1996 primary-text route already constrain that distinction; the present theorem only pressure-tests an **explicitly assumed** competing encoding `situated ↔ conditions`.

A fresh lawful source-route check on 2026-09-24 also confirmed Google Books / Taylor & Francis bibliographic metadata for the authorized Routledge reprint in Moran / Embree, *Phenomenology: Critical Concepts in Philosophy*, vol. 4 (2004): `Sketch of the Saturated Phenomenon: The Horizon` begins at p. 5. The available preview exposed provenance/front matter rather than the target author body. Therefore this route remains useful reprint provenance only and does **not** satisfy the direct revised-primary stop gate. No restricted preview, login, loan, or access control was bypassed.

## Formal increment

`FormalPhenomenology/FirstQuestionFiniteCoverExactness.lean` now adds

`first_question_mutual_conditioning_closureBridge_iff_finite_conditioning_cover_of_pairwise_upper_bounds`.

For `M : HorizonConditioning`, assume:

1. `M.SituatedImpliesConditioning`;
2. `M.ConditioningIsSituated`;
3. on every actually appearing structured phenomenon, any pair of situated horizons admits a situated upper bound containing everything admitted by each member.

Lean proves:

```text
M.base.ClosureBridge
↔
∀ p, M.base.appears p → M.base.Structured p →
  ∃ hs : List M.base.Horizon,
    hs ≠ [] ∧
    (∀ h, h ∈ hs → M.conditions p h) ∧
    (∀ a, M.base.presents p a →
      ∃ h, h ∈ hs ∧ M.base.admits h a)
```

Proof map:

- forward: `ClosureBridge` gives `Captured p`; consume the existing fixed-phenomenon mutual-conditioning finite-cover equivalence;
- reverse: consume the same equivalence backwards pointwise to recover `Captured p`, exactly the consequent required by `ClosureBridge`.

No classical principle is introduced, and there is no inference from the word “conditioning” to exhaustion. The pairwise-upper-bound assumption is still explicit.

## Reverse check against the strongest baseline

This theorem is intentionally **not stronger** than the previous fixed-phenomenon result. It only lifts that theorem to the actual-appearance / structured quantifier domain of `ClosureBridge`.

The strongest neutral baseline remains the situated finite-cover equivalence under pairwise upper bounds. Mutual `situated ↔ conditions` merely transports membership labels; it does not provide finite coverage, a common dominator, or exhaustion on its own. The existing open model `first_question_open_mutual_conditioning_no_finite_cover` remains the reverse check: even maximal simple mutual conditioning can fail every finite conditioning cover. Hence the new equivalence does not smuggle in the missing B-level premise through a renamed predicate.

A finite `List Horizon` here is still only a finite family of named horizons with disjunctive aspect coverage. It is not Marion's stronger semantic “combination of horizons.”

## Commits and verification

Source commit:

- `21db13176200bae8f38b0e48be24cc9cb58bae89` — theorem added to the already root-imported module.

Audit-registration commit / exact code head:

- `17266a5ee773407ec9525404d71dfe221cc03f1c` — theorem added to `Audit.lean`.

Exact-head PR workflow run `35911876251` completed **success**. GitHub checked merge ref `db1083e02301139613eb7d5c27e64b6bb0db0fa4`, explicitly merging code head `17266a5ee773407ec9525404d71dfe221cc03f1c` into base `c6f527875c0a905c33dac68176ed01a2c64b97c3`.

The log reports:

- `Static checks passed: 27 modules, 167 audited theorems.`
- full build completed successfully with 30 jobs;
- the new theorem itself reports `does not depend on any axioms`;
- `Kernel audit passed: 167/167 theorems without axiom dependencies.`

This documentation commit will become the branch head after the code-head verification above, so the **final branch-head** workflow must also succeed before that head is described as fully verified.

## Remaining stop condition

The first research question is **not complete** in this round. The remaining material gate is lawful direct review of a revised Marion body route: BG pp. 209–212 plus the tracked later passage, early ED pp. 292–297 plus 314–315, or an authorized reliably mapped revised reprint/translation exposing the corresponding body.

Until that direct body is reviewed, the project continues to keep `Independent` as a weak historically motivated interface, `NonExhaustible` as an independent model axis, and `Captured` as extensional aspect coverage rather than identifying any of them with Marion's full saturated phenomenon.