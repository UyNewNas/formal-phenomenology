# First-question finite-cover exactness audit

Date: 2026-09-23

Branch: `research/first-question-main-theorem-20260918`

## Question under reverse review

The previous checkpoint established that finite directedness of the situated-horizon domain does **not** imply `ClosureBridge`: `expandingModel` has a situated common `admits`-dominator for every finite list of horizons, yet remains non-exhaustible.  The strongest existing positive theorem was only one-way: a nonempty finite situated cover together with pairwise situated upper bounds implies `Captured`, and the pointwise version implies `ClosureBridge`.

This round asks for the exact boundary under that same upper-bound premise rather than adding another sufficient condition.

## External-first / reuse check

### Proof infrastructure

A fresh 2026-09-23 search of current Mathlib located the generic order-theoretic baseline

`Mathlib/Data/Finset/Order.lean::Finset.exists_le`

at the searched repository revision `83bde34a7519c937fb5070c1016923d55b5e42ae`.  It states that in a nonempty directed preorder every finite set has a common upper bound.  This is directly relevant method/API precedent for the finite-induction pattern, but it is not a drop-in theorem for this project: `formal-phenomenology` has no Mathlib dependency and its comparison is the phenomenon-relative extensional relation `admits h a`, not a bundled preorder on horizons.  The existing Lean-Core proof therefore remains the minimal dependency choice; no generic directedness mathematics is claimed as novel here.

A targeted code search for `finite cover directed upper bound horizon exhaust captured` was also rerun over the registered formal-philosophy baselines:

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163`;
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759`;
- `alexoltean61/msphml-lean` (registered baseline).

No same-shaped reusable horizon/exhaustibility API was located in that scoped search.  This is a bounded reuse decision, not a novelty or nonexistence claim.  The existing computational-metaphysics / computational-hermeneutic work remains methodological precedent.

### Same-topic textual gate

The lawful revised-text routes were refreshed before interpreting the new formal equivalence.  Google Books still exposes the 2002 Stanford *Being Given* bibliographic/limited-preview record and table of contents, with chapter XXI beginning at p. 199, XXII at p. 212, and XXIII at p. 221, but the target pp. 209–212 body was not exposed in this runtime.  The official publisher route likewise remains metadata/overview rather than direct target-body access.

Brock Mason's secondary exact-page reconstruction again distinguishes saturation in one horizon, overflow into multiple horizons, and the stronger case where no combination of horizons suffices (BG 210–211).  That evidence is useful for guarding the model boundary but remains secondary.  No unauthorized full-book mirror is used to close the primary gate.

Therefore the finite-list and upper-bound constructions below remain explicitly **FORMAL**.  They are not identified with Marion's historical phrase “combination of horizons”.

## Formal increment

New root-reachable module:

`FormalPhenomenology/FirstQuestionFiniteCoverExactness.lean`

It adds two thin normalization theorems and no new primitive, model, dependency, classical principle, or historical attribution.

### Pointwise exactness

`first_question_captured_iff_nonempty_finite_situated_cover_of_pairwise_upper_bounds`

Under the already-used pairwise situated upper-bound assumption for a fixed `p`, it proves

```text
Captured p
↔
∃ nonempty finite list hs,
  every h in hs is situated for p
  ∧ hs jointly covers every presented aspect of p.
```

The forward direction is the singleton family containing an existing capture witness.  The reverse direction is exactly the previously verified `first_question_finite_family_pairwise_upper_bounds_imply_capture`.

### Project-level exactness

`first_question_closureBridge_iff_finite_cover_of_pairwise_upper_bounds`

If every appearing structured phenomenon has the same pairwise situated upper-bound property, then

```text
ClosureBridge
↔
for every appearing structured p,
there exists a nonempty finite situated family jointly covering all presented aspects.
```

The reverse direction reuses `first_question_finite_cover_pairwise_upper_bounds_imply_closureBridge`; the forward direction normalizes the capture witness to a singleton finite cover.

This closes the local comparison left by the finite-directedness countermodel: **under pairwise upper bounds, finite coverage is exactly the missing formal content; finite directedness alone is not.**  It does not promote finite coverage, directedness, or a common upper bound into a historical Marion thesis.

## Verification / handoff

The new module is imported from `FormalPhenomenology.lean`, and both declarations are registered in `Audit.lean`.  The pinned toolchain remains Lean `v4.24.0`; no dependency or audit policy was changed.

Exact-head GitHub Actions is the authoritative build/source-coverage/kernel-axiom verdict.  Record that exact SHA and run in the existing PR #31 checkpoint after the final branch head finishes; do not infer success from an earlier head.

## Stop-gate status

This formal exactness result does not complete the first research question.  The interpretation gate remains lawful direct review of a mapped revised primary body: BG 209–212 plus the tracked later passage, early ED 292–297 plus 314–315, the mapped authorized Spanish route, or another authorized reliably mapped revised reprint/translation.  Only such direct body evidence may freeze or force revision of the historical mapping.
