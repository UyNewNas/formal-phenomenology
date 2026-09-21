# First-question bounded / finite-family open-horizon guardrail — 2026-09-21

Branch: `research/first-question-main-theorem-20260918`

## Scope

This checkpoint extends the already verified open-chain quantifier guardrail in two deliberately neutral steps.  The older theorem `expandingModel_no_fixed_pair_cover` shows that no two fixed horizons cover all aspects of `expandingModel`.  The first step asks whether a uniformly bounded selected family can cover every aspect; the follow-up closes the concrete **finite-list** case by proving internally that every member of the list lies below a Lean-Core recursive bound.

No horizon-combination operator, saturation predicate, new model family, modal semantics, or historical attribution is introduced.  The results remain about the existing `expandingModel`, where horizon `h` admits precisely the natural-number aspects `a < h`.

## External-first audit

Date: 2026-09-21.

### Engineering reuse

Before the bounded-family theorem, targeted GitHub code search rechecked `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163` for horizon / cover / exhaustive / finite-combination language.  Before the finite-list follow-up, its live `main` was re-read and remains at that same commit; a targeted search across that repository, `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759`, and `alexoltean61/msphml-lean` for horizon / finite cover / exhaust / combination returned no same-shaped API.  This is a bounded reuse result, not a nonexistence or novelty claim.

The pinned project environment remains Lean Core `v4.24.0`.  Generic finite-set maximum infrastructure exists in Mathlib, but the project does not need a new dependency.  The finite-list follow-up reuses Lean Core's inductive `List.Mem` constructors directly and defines a simple recursive sum bound.  The first attempted proof passed elaboration only after a syntax repair but inherited `propext` through the convenience membership equivalence; the audit caught this.  The proof was then rewritten by induction directly on the `List.Mem` witness so the repository's zero-axiom policy is preserved rather than weakened.

The methodological move is already covered by the repository's computational-hermeneutic / computational-metaphysics prior-art ledger: quantifier separation, finite witnesses, and countermodel construction are not claimed as original methods.

### Same-topic source boundary

The strongest relevant secondary baseline continues to distinguish more than the present relation language does:

- Brock Mason's reconstruction of *Being Given* pp. 210–211 distinguishes one horizon, several horizons, and the stronger case in which no combination of horizons suffices.
- King-Ho Leung's discussion of BG pp. 211–212 treats horizon as a `condition of possibility`; his BG pp. 225–226 discussion connects saturation to excess of intuition over intention and failure of ordinary object constitution.
- Shane Mackinlay's BG/ED cross-references preserve the one/several/no-combination distinction and remain useful for locating the revised passage.

These are secondary exact-page reconstructions.  They constrain over-reading but do not close the direct-primary stop gate.  The lawful revised-book routes checked in the surrounding source ledger still do not expose the target BG pp. 209–212 / 225–226 or early ED pp. 292–297 / 314–315 body in this runtime; no restricted reader, DRM, login-only endpoint, or unauthorized mirror was bypassed.

Status: the direct revised-primary gate remains open.

## Formal results

The bounded-family result is:

```lean
theorem expandingModel_no_bounded_family_cover
    (B : Nat) (selected : Nat → Prop)
    (hBound : ∀ h, selected h → h ≤ B) :
    ¬ (∀ a, expandingModel.presents () a →
      ∃ h, selected h ∧ expandingModel.admits h a)
```

Its proof applies the alleged cover to aspect `B`: the returned horizon would satisfy both `h ≤ B` and `B < h`.

The finite-list follow-up adds a Lean-Core bound

```lean
def expandingModelListBound : List Nat → Nat
  | [] => 0
  | h :: hs => h + expandingModelListBound hs
```

and proves, by induction on the `List.Mem` witness,

```lean
theorem expandingModel_mem_le_listBound {h : Nat} {hs : List Nat}
    (hh : h ∈ hs) : h ≤ expandingModelListBound hs
```

so the bounded-family theorem immediately yields

```lean
theorem expandingModel_no_finite_list_cover (hs : List Nat) :
    ¬ (∀ a, expandingModel.presents () a →
      ∃ h, h ∈ hs ∧ expandingModel.admits h a)
```

The project-facing wrapper `first_question_aspectwise_cover_need_not_have_finite_family` now exhibits an actually appearing phenomenon that is `IndividuallyCoverable` while **no finite list of situated horizons** covers all its presented aspects.

## Strong-baseline reverse check

The strongest applicable old result is not the fixed-pair theorem but `expandingModel_no_bounded_family_cover`.  The finite-list result is deliberately registered as a corollary of that stronger baseline plus the elementary list-boundedness lemma; it is **not** a new model, a new analytic principle, or evidence of philosophical originality.

The follow-up nevertheless closes a real quantifier gap in the project interface.  The previous bounded theorem required an externally supplied `B`; the new theorem quantifies over an arbitrary concrete finite list and constructs its bound internally.  Thus the hierarchy is now explicit:

- `Captured`: one situated horizon exhausts all encoded aspects;
- fixed pair: two named horizons suffice by disjunctive aspect coverage;
- finite list: finitely many named horizons suffice by disjunctive aspect coverage;
- `IndividuallyCoverable`: the witnessing horizon may vary with each aspect;
- the open-chain witness satisfies the last condition while refuting every finite-list cover.

None of these list/family notions is a semantic horizon-combination operation.  Therefore `expandingModel_no_finite_list_cover` still does **not** formalize Marion's strongest “no combination of horizons” figure, and it says nothing about an ideal or infinite horizon added by a domain extension.

Under the project's reverse-check policy this is a **candidate formal strengthening** in the present round.  It should not be promoted to a major-progress notification until a later run re-derives/reviews it against the bounded-family baseline and the historical mapping remains appropriately limited.

## Verification handoff

The relevant declarations are included in `Audit.lean`:

```lean
#print axioms FormalPhenomenology.expandingModel_mem_le_listBound
#print axioms FormalPhenomenology.expandingModel_no_finite_list_cover
#print axioms FormalPhenomenology.first_question_aspectwise_cover_need_not_have_finite_family
```

The first convenience-proof attempt was rejected by the zero-axiom audit because it depended on `propext`; the audit policy was not relaxed.  The replacement proof uses direct induction on the membership witness.  Exact final-SHA workflow status is recorded on PR #31 after the documentation commit; no prior green SHA is inherited.

The first research question remains open until the revised Marion direct-body source gate is lawfully closed and the final frozen interpretation receives same-SHA build/source/axiom verification.
