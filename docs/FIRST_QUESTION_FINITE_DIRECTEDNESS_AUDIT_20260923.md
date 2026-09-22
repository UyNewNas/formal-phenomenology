# First-question finite-directedness boundary audit — 2026-09-23

Scope: first research question only. This note records the external reuse check, the new Lean guardrail, and the revised-primary source status for the same run.

## 1. Question isolated in this round

The branch already proves two complementary facts:

- a nonempty finite family that actually covers all presented aspects can be collapsed to one `Captured` horizon when the situated-horizon domain has an explicit pairwise upper-bound property;
- the open natural-number model `expandingModel` has no finite list of named horizons that covers every presented aspect.

A remaining proof-theoretic ambiguity was whether the second fact was merely an artifact of a badly behaved horizon order. The strongest simple baseline is therefore: **suppose every finite named family does have a common situated dominator; does that alone force a final exhaustive horizon?**

The answer is no. What is missing is not finite directedness but a finite family that already covers the whole presented aspect-domain (or some stronger global/ideal completion principle).

## 2. External-first / reuse audit

### Lean / order-theoretic baseline

Fresh GitHub search on 2026-09-23 checked Mathlib for `Directed`, finite upper bounds, lists/finsets and related order APIs. Mathlib contains generic finite-supremum and directed/filter/category infrastructure; for example its category-theory documentation states the standard order-theoretic notion that a `κ`-directed preorder has upper bounds for all subsets of size `< κ`, and finite lattice folds provide generic finite suprema.

Those APIs are method-level prior art, not a useful dependency for this consumer. This repository currently has no Mathlib package dependency (`lake-manifest.json` has an empty package list), and the model-specific witness is already supplied by the existing Lean-Core function `expandingModelListBound`. Adding a large generic order layer would therefore increase dependency cost without strengthening the first-question result.

### Formal-phenomenology / logic reuse check

Targeted GitHub search over:

- `novaspivack/phenomenology-lean`;
- `alexoltean61/msphml-lean`;
- `cbenzmueller/LogiKEy`;

for combinations of `horizon`, `directed`, `upper bound`, `capture`, and `exhaustible` returned no same-shaped reusable first-question API. This is a bounded reuse search, not a novelty claim.

The registered computational-hermeneutics / computational-metaphysics work remains a methodological precedent for explicit interpretation choices and countermodels; nothing found in this round changes that attribution.

### Same-topic philosophical baseline

The already-registered Marion/Mackinlay line is still the relevant conceptual baseline: one horizon, several horizons, and failure of combinations must not be collapsed into one notion. The new theorem does **not** identify a Lean common upper bound with Marion's historical "combination of horizons" language. It only audits a formal closure assumption internal to the current relation model.

## 3. Lean result

`FormalPhenomenology/Models/OpenHorizon.lean` now adds:

```lean
expandingModel_finite_list_has_dominator
```

For every finite list `hs : List Nat`, the theorem constructs one situated horizon `k` such that every aspect admitted by every `h ∈ hs` is also admitted by `k`. The witness is the existing recursive sum bound `expandingModelListBound hs`, and monotonicity is supplied by `expandingModel_monotone`.

The combined guardrail:

```lean
expandingModel_finite_dominators_do_not_force_capture
```

packages the stronger negative baseline:

```text
(every finite named family has a situated common dominator)
AND
(the model still HasExcess).
```

Hence finite directedness of the horizon domain does not by itself imply global exhaustibility. The exact missing step is coverage/global completion: the model has arbitrarily large finite horizons and finite common upper bounds, but every such bound still omits later aspects.

This strengthens the interpretation of the existing finite-family theorem without adding a new philosophical primitive. It also explains why adjoining the ideal `none` horizon in `completedModel` changes exhaustibility: the extension supplies a genuinely global upper object, not merely another finite directedness witness.

## 4. Source gate in the same run

The revised-primary Marion gate remains open. The public PUF/Lavoisier excerpt endpoint was retried through the available container download path; the host still could not be resolved in that execution environment, so no EPUB bytes were inspected. Kobo exposes an authorized sample control and print-equivalent page numbering metadata, but the web retrieval layer still exposes only the product page rather than the sample body.

A public web index also surfaces full-text mirrors of the relevant English chapter, and their text agrees with the already-registered secondary exact crosswalk about one horizon, multiple horizons, and no combination sufficing. Those mirrors are **not** treated as an authorized revised-primary route and therefore do not close the stop gate.

No access control, login, DRM, or paywall was bypassed.

## 5. Verification / handoff

Code commit:

- `5081156899a41382ddecf1b4fe173ec27bae0511` — add the finite-list dominator and finite-directedness/non-capture guardrail.

Audit registration commit:

- `c18fd1a221a87dccbe4c4df469cff540183d85cb` — add both declarations to `Audit.lean`.

At the time this note is written, exact-head GitHub Actions still needs to be read after this documentation commit. No build, source-coverage, or kernel-axiom success is claimed here until the workflow on the final SHA actually completes.

## 6. Interpretation boundary

The formal conclusion is deliberately narrow:

```text
finite common upper bounds for named horizons
≠
a globally exhaustive horizon.
```

It does **not** prove that Marion endorses a directed horizon order, does not equate a dominator with semantic horizon combination, and does not turn `NonExhaustible` into a definition of the saturated phenomenon. The current `situated / conditions / Exhausts` separation remains unchanged.

Next move: validate the final SHA, then continue the authorized revised-text route. If direct revised text forces a different relation between horizon plurality, conditioning, and exhaustibility, add only the smallest interface required by that text.
