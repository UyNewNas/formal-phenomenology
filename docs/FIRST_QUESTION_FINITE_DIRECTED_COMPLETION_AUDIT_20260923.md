# First-question finite-directedness / completion audit — 2026-09-23

Scope: first research question only. This round reverse-checks the previous finite-directedness candidate, performs the required external-work search for the new same-model packaging theorem, and records the revised-primary source status.

## 1. Starting point and reverse check

The previous exact branch head `c9e4600fb81adc9b67ba4648787ecb9cb5c56578` has now been read together with its workflow run `35777782051`. The single `verify` job completed successfully on that exact SHA, including checkout, pinned Lean setup, and the combined `Build, source coverage, and kernel axiom audit` step.

That validated the two ingredients that are kept distinct below:

1. `expandingModel_finite_dominators_do_not_force_capture`: every finite named family in the open model has a situated common dominator, while the model still has `HasExcess`;
2. `completedModel_exhaustive_horizon_iff_new`: in the completed `Option Nat` model, a horizon exhausts the phenomenon iff it is the added `none` horizon.

The reverse check asks whether those facts continue to describe the *same old horizon behaviour* after completion, rather than merely comparing two unrelated presentations. The answer is yes because `finite_horizon_agrees` preserves the `admits` relation exactly for every embedded `some n`.

## 2. External-work gate for the new object

### Lean / order theory

Fresh GitHub search on 2026-09-23 inspected the current indexed `leanprover-community/mathlib4` tree at commit `815bbf137d2cbfc6c48fbfdc61a8a6a2b13ef14a` for directedness, finite upper bounds, ideals, and finset upper-bound machinery.

- `Mathlib/Order/Ideal.lean` explicitly uses the standard order-theoretic notion of an upward-directed set: any two members have an upper bound in the ideal.
- Mathlib also contains generic finite-supremum / finite-upper-bound machinery in the order hierarchy.

These are the correct mathematical baseline. They are not a useful dependency for this consumer: the repository remains Lean-Core-only, the concrete old-horizon order is already represented extensionally by `admits`, and the witness is already constructed by `expandingModel_finite_list_has_dominator`.

Reuse decision: **method/API precedent; reuse existing local verified theorem, no new generic order API**. No novelty claim is attached to finite directedness, ideal completion, or finite upper-bound reasoning.

### Formal philosophy / formal phenomenology

Targeted code search over:

- `novaspivack/phenomenology-lean`;
- `cbenzmueller/LogiKEy`;
- `alexoltean61/msphml-lean`;

used combinations of `horizon`, `capture`, `exhaustive`, `directed`, `upper bound`, and `completion`. No same-shaped reusable theorem was located. This is a bounded reuse search, not evidence that no related external work exists. The registered computational-metaphysics and computational-hermeneutics literature remains methodological prior art for explicit interpretations and countermodels.

### Same-topic philosophy

The already-registered literature remains the stronger interpretive baseline:

- Murga 2024 argues for a non-metaphysical horizontality in Marion rather than a simple abandonment of horizon;
- Leung 2022 quotes *Being Given* pp. 211–212 and 225–226 to distinguish horizon as condition of possibility from excessive givenness;
- Mackinlay and the existing BG/ED crosswalk distinguish one horizon, multiple horizons, and the stronger case in which no combination of horizons suffices.

None of these sources licenses identifying a recursive finite upper bound, `Option Nat.none`, or the present completion model with Marion's historical "combination of horizons". The Lean theorem below therefore remains FORMAL/MODEL only.

## 3. New Lean guardrail

`FormalPhenomenology/FirstQuestionDomainExtension.lean` adds:

```lean
first_question_finite_directedness_survives_but_completion_is_new
```

It proves, in one same-model statement, that:

1. every finite list of embedded old horizons `some h` has an embedded old situated horizon `some k` containing everything admitted by each list member; and
2. a horizon in `completedModel` is exhaustive iff it is the genuinely new `none` horizon.

The proof is deliberately thin:

- reuse `expandingModel_finite_list_has_dominator`;
- transport admission in both directions through `finite_horizon_agrees`;
- reuse `completedModel_exhaustive_horizon_iff_new`.

No new model, primitive, order instance, modal operator, or historical attribution is introduced.

The exact formal boundary is therefore:

```text
finite directedness of all old named horizons
+
exact preservation of their admission behaviour

still does not provide an old exhaustive horizon;
exhaustivity appears only after a genuinely new completion point is added.
```

This is stronger than a cross-model slogan because the finite-directedness statement is now expressed directly inside `completedModel` over the embedded old horizon domain.

## 4. Revised-primary source recheck

The authorized publisher route was rechecked in the same round.

- De Gruyter Brill continues to expose the official *Being Given* book record and §21 metadata (`Sketch of the Saturated Phenomenon: The Horizon`, pp. 199–212, DOI `10.1515/9780804785723-024`) but not the target chapter body through the available retrieval path.
- The official *Essential Writings* record continues to expose `Sketch of the Saturated Phenomenon`, p. 108 onward, and the chapter DOI `10.1515/9780823292905-006`, but the target author text is not openly returned by the available official route.
- Search engines surface unauthorized full-text mirrors. They were not used as revised-primary evidence and do not close the stop gate.

No login, paywall, DRM, loan control, or other access restriction was bypassed. The first-question source stop condition therefore remains open.

## 5. Validation / handoff

Code commit:

- `3bc9983297e5dfb2c7e869dfd5f328c9d925cb25` — add the same-model finite-directedness/completion theorem.

Audit registration commit:

- `b11c70510ba67dadd3920589a70102b4085162b3` — add the theorem to `Audit.lean`.

This note is committed after those changes. The authoritative validation state is the GitHub Actions run on the final documentation SHA, not the earlier successful run. Until that exact final run succeeds, this round must be described only as committed and pending kernel verification.

## 6. Next entry

Do not expand the formal language on the basis of this theorem. Continue the lawful revised-primary route. If direct revised text later requires a semantic distinction between finite horizon plurality, horizon combination, and an ideal/global horizon, add only the smallest text-driven interface; otherwise preserve the current `situated / conditions / Exhausts` separation and the existing completion guardrail as a model-theoretic warning rather than a historical thesis.
