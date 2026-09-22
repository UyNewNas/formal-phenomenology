# First-question closure decidability audit

Date: 2026-09-22

Branch at start of round: `research/first-question-main-theorem-20260918@9ba9c89eb63051eb68ab0a8940246973d10b46c2`.

## Question

The preceding constructive audit proved that

```text
ClosureBridge
↔
(no situated-excess witness) + local double-negation stability of Captured.
```

This round asks whether the stronger but familiar proof-theoretic premise of **local decidability of `Captured`** is sufficient to collapse the negative and positive formulations on exactly the domain where `ClosureBridge` is quantified.

The proposed result must stay formal-only: it is not a claim that Merleau-Ponty or Marion treats exhaustive capture as decidable.

## External-work gate

### Lean / proof infrastructure

The repository remains pinned to `leanprover/lean4:v4.24.0`; tag `v4.24.0` resolves to commit `797c613eb9b6d4ec95db23e3e00af9ac6657f24b`.

The exact pinned source `src/Init/PropLemmas.lean` already contains

```lean
@[simp] theorem Decidable.not_not [Decidable p] : ¬¬p ↔ p :=
  ⟨of_not_not, not_not_intro⟩
```

so no Mathlib, modal-logic library, or custom double-negation eliminator is justified.  The new theorem is a thin project-specific adapter from this Lean-Core fact to the existing `Presentation` predicates.

### Formal-phenomenology / logic prior art

Fresh targeted repository searches used the combinations `horizon exhaust capture decidable`, `closure capture decidable`, and `double negation horizon` across:

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163`;
- `alexoltean61/msphml-lean`;
- `cbenzmueller/LogiKEy`.

No same-shaped horizon/exhaustibility theorem or reusable `Captured` API was located.  This is not an originality claim: the logical move is ordinary decidable double-negation elimination, while those projects remain methodological/infrastructure prior art.

### Same-topic source check

Fresh web searches again confirmed the authorized metadata for Marion's revised §21 route (`Being Given`, §21, pp. 199–212, DOI `10.1515/9780804785723-024`) and the official-reprint record for `Sketch of the Saturated Phenomenon` in *The Essential Writings* (DOI `10.1515/9780823292905-006`).  Search also resurfaced King-Ho Leung's secondary exact-page quotation chain citing *Being Given* pp. 211–12, 218, and 227 for horizon-independence / givenness language.

None of these routes lawfully exposed the revised primary body in this runtime.  They therefore remain metadata or secondary evidence and do not close the project's direct-primary stop gate.

Reuse decision: add only the Lean-Core-level corollary; do not introduce a new philosophical primitive or historical attribution.

## Formal result

`FormalPhenomenology/FirstQuestionClosureBoundary.lean` now contains:

```text
first_question_closureBridge_iff_no_situatedExcess_of_captured_decidable
```

with hypotheses

```text
∀ p, appears p → Structured p → Decidable (Captured p).
```

It proves

```text
ClosureBridge ↔ ¬ HasSituatedExcess.
```

The premise is deliberately **localized** to actually appearing, structured phenomena.  The proof obtains `¬¬ Captured p` from the existing constructive normal form and introduces the supplied `Decidable (Captured p)` instance only at the elimination step.  No global `Classical` instance is opened.

This gives a clean proof-theoretic hierarchy for the current encoding:

```text
no situated-excess witness
    → double-negated capture
    + local stability
    ↔ ClosureBridge

local decidability of Captured
    → local stability
    → the negative and positive closure formulations coincide.
```

## Interpretive boundary

- `Captured` is still the repository's extensional one-horizon exhaustion predicate, not Marion's full saturated phenomenon.
- The decidability premise is a FORMAL sufficient condition only.
- The result does not upgrade absence of a countermodel into a historical assertion unless the additional proof-theoretic premise is explicitly supplied.
- The revised-primary text gate remains unchanged.

## Validation handoff

Code commit: `ddb3f6a84d067b708d73ef50737952dee8f949f7`.

Audit registration commit: `80b14031dd5ef676f0b03b00fc0412a5ac957195`.

The new theorem is listed in `Audit.lean`.  Acceptance requires the ordinary exact-head GitHub Actions workflow to complete the full build, root/source coverage, forbidden-placeholder scan, and zero-axiom audit.  A successful commit write alone is not a kernel-verification result.
