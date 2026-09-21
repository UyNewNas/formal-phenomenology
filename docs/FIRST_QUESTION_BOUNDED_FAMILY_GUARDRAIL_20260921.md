# First-question bounded-family open-horizon guardrail — 2026-09-21

Branch: `research/first-question-main-theorem-20260918`

## Scope

This checkpoint extends the already verified open-chain quantifier guardrail by one deliberately neutral step.  The previous theorem `expandingModel_no_fixed_pair_cover` shows that no two fixed horizons cover all aspects of `expandingModel`.  The new theorem asks a more reusable question: if a selected family of natural-number horizons is uniformly bounded by some `B`, can that family cover every presented aspect?

No horizon-combination operator, saturation predicate, new model family, modal semantics, or historical attribution is introduced.  The theorem remains about the existing `expandingModel`, where horizon `h` admits precisely the natural-number aspects `a < h`.

## External-first audit

Date: 2026-09-21.

### Engineering reuse

Before adding the theorem, targeted GitHub code search rechecked `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163` for horizon / cover / exhaustive / finite-combination language.  No same-shaped API was returned.  This is only a bounded engineering-reuse result, not a novelty claim.

The pinned project environment remains Lean Core `v4.24.0`.  A separate Mathlib search confirmed that generic finite-set maximum infrastructure exists (`Mathlib/Data/Finset/Max.lean`).  That infrastructure is not needed by the theorem actually added here: the caller supplies the uniform bound `B`, and the proof uses the diagonal aspect `B` plus `Nat.not_lt_of_ge`.  Consequently no Mathlib, LogiKEy, AFP, Rocq/Coq, or Agda dependency was added merely to express this elementary obstruction.

The methodological move is also already covered by the repository's computational-hermeneutic / computational-metaphysics prior-art ledger: quantifier separation and countermodel construction are not claimed as original methods.

### Same-topic source boundary

Fresh source triangulation rechecked the strongest relevant secondary baseline rather than treating the new formal strengthening as a historical thesis:

- Brock Mason's reconstruction of *Being Given* pp. 210–211 distinguishes one horizon, several horizons, and the stronger case in which no combination of horizons suffices.
- King-Ho Leung's discussion of BG pp. 211–212 treats horizon as a `condition of possibility`; his BG pp. 225–226 discussion connects saturation to excess of intuition over intention and failure of ordinary object constitution.
- Shane Mackinlay's BG/ED cross-references preserve the one/several/no-combination distinction and remain useful for locating the revised passage.

These are secondary exact-page reconstructions.  They constrain over-reading but do not close the direct-primary stop gate.

Official/public access routes were also rechecked.  Google Books still exposes the 2002 *Being Given* record as limited preview with the section starts (§21 p.199, §22 p.212, §23 p.221), while the De Gruyter/Stanford chapter metadata fixes §21 as pp.199–212.  Neither route exposed the target BG pp.209–212 body in this runtime.  The authorized PUF e-book preview routes recorded in earlier checkpoints likewise did not lawfully yield the required revised-text body.  No restricted reader, DRM, login-only endpoint, or unauthorized mirror was bypassed.

Status: the direct revised-primary gate remains open.

## Formal result

`FormalPhenomenology.Models.OpenHorizon` now proves:

```lean
theorem expandingModel_no_bounded_family_cover
    (B : Nat) (selected : Nat → Prop)
    (hBound : ∀ h, selected h → h ≤ B) :
    ¬ (∀ a, expandingModel.presents () a →
      ∃ h, selected h ∧ expandingModel.admits h a)
```

Proof idea: if the selected family covered every presented aspect, apply it to the aspect `B`.  The returned horizon `h` would satisfy both `h ≤ B` by `hBound` and `B < h` because `expandingModel.admits h B` unfolds to `B < h`, a contradiction.

This is stronger than the fixed-pair statement in one precise formal sense: it rules out every family for which the theorem is supplied a common natural-number upper bound.  It does **not** itself quantify over `Finset`, prove that every finite family admits such a bound inside this project, or define a semantic operation that combines horizons.  Generic finite-max mathematics is available externally, but importing it would not answer a current first-question need.

The theorem is therefore a reusable core obstruction for bounded horizon families, not a formalization of Marion's strongest “no combination of horizons” figure.

## Reverse-check / interpretation boundary

The strongest simple baseline for the new theorem is the existing `expandingModel` definition itself.  The conclusion is not obtained from an unconstrained philosophical predicate: `admits h a` is concretely `a < h`, and the contradiction is the order-theoretic incompatibility `B < h ≤ B`.

The result also does not change the implication map of the first question:

- `Captured` still means one situated horizon exhausts all encoded aspects;
- `IndividuallyCoverable` still allows the witnessing horizon to vary with the aspect;
- bounded-family failure is an additional formal guardrail between these quantifier patterns;
- no historical source is asserted to identify an actual/possible horizon family with a uniformly bounded set of natural numbers.

Accordingly this round does not upgrade `NonExhaustible` into Marion's saturated phenomenon and does not add a horizon-combination API.

## Verification handoff

The theorem is included in `Audit.lean` via

```lean
#print axioms FormalPhenomenology.expandingModel_no_bounded_family_cover
```

The final documentation SHA must pass the repository's exact-head `Lean verification` workflow before this checkpoint can be treated as kernel-verified.  Prior green SHAs are not inherited.  The first research question remains open until the revised Marion direct-body source gate is lawfully closed and the final frozen interpretation receives same-SHA build/source/axiom verification.
