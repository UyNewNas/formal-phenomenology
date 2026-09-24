# First-question open-chain / fixed-pair guardrail — 2026-09-21

Branch: `research/first-question-main-theorem-20260918`

## Scope

This round sharpens the quantifier boundary already exposed by the first-question package.  The repository now distinguishes three purely formal levels in the existing aspect language:

1. one related horizon covers every encoded aspect (`Captured`);
2. one fixed pair of related horizons covers every encoded aspect by disjunction;
3. for every encoded aspect there exists some related horizon that covers it (`IndividuallyCoverable`).

The previous split-model result showed that (2) need not imply (1).  This round checks the other converse and asks whether (3) must imply (2).  No horizon-combination operator, new philosophical predicate, or new model family is introduced.

## External-first engineering audit

Targeted GitHub searches on 2026-09-21 rechecked `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163` and `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759` for a same-shaped fixed-pair / horizon-cover / exhaustivity API.  No indexed match was returned.  This is only a bounded reuse check, not a novelty claim.

The proof uses only the already pinned Lean Core environment (`leanprover/lean4:v4.24.0`).  The pinned core exposes the elementary addition inequalities `Nat.le_add_right` and `Nat.le_add_left`, so no Mathlib, LogiKEy, AFP, Rocq/Coq, or Agda dependency is justified for the diagonal step.

The first implementation used `Nat.max` and its convenient max-bound lemmas.  Exact-SHA CI showed that this proof term inherited `propext`, violating this repository's stricter zero-axiom audit even though the module built successfully.  The implementation was therefore replaced rather than weakening the audit: it now chooses the aspect `h₀ + h₁` and contradicts `h₀ + h₁ < h₀` or `h₀ + h₁ < h₁` using only the core addition inequalities.  The failed audit is treated as a code-level proof-dependency issue, not as a mathematical counterexample failure.

Methodologically, the quantifier/countermodel move remains covered by the project’s existing computational-hermeneutic / computational-metaphysics prior-art ledger.  This round does not claim that “interpretation → formalization → countermodel” or the logical fact `∀a∃h` versus finite fixed witnesses is original.

## Same-topic / source check

The multiple-horizon literature checkpoint `FIRST_QUESTION_MULTIPLE_HORIZON_TRIANGULATION_20260921.md` remains controlling: Mason and Lahaie provide secondary reconstructions distinguishing one horizon, several horizons, and the stronger no-combination case.  The new Lean theorem below is deliberately weaker than a semantics of horizon combination and therefore must not be identified with Marion’s third figure.

A fresh authorized-route check also found the standalone PUF e-book *Étant donné. Essai d’une phénoménologie de la donation*, EAN/ISBN `9782130807490`, on ordinary bookseller/publisher-distributor routes.  Lavoisier’s product page exposes a public `Télécharger un extrait` endpoint (`https://e.lavoisier.fr/extract/523630`), while Cultura, Kobo, and Casa del Libro expose preview/sample affordances for the same e-book record.  The current research runtime could resolve the Lavoisier excerpt endpoint but could not decode its `application/epub+zip` body; it did not lawfully yield the target revised §21 passage.  Edition labels also differ across retailer metadata (for example, 2013 revised-edition records versus a 2025 Lavoisier product record), so no page-number identity with the 1997 early-edition crosswalk is assumed.

Status: useful **AUTHORIZED-ROUTE / PREVIEW-LEAD**, not direct-body evidence.  No access control, DRM, login, or reader-internal API was bypassed, and the first-question primary stop gate remains open.

## Formal result

`FormalPhenomenology.Models.OpenHorizon` now proves:

```lean
theorem expandingModel_no_fixed_pair_cover (h₀ h₁ : Nat) :
    ¬ (∀ a, expandingModel.presents () a →
      (expandingModel.admits h₀ a ∨ expandingModel.admits h₁ a))
```

The witness is the already-existing `expandingModel`: horizon `h` admits exactly the aspects `a < h`.  For any fixed `h₀, h₁`, the aspect `h₀ + h₁` is admitted by neither, while `expandingModel_individual` still proves that every individual aspect is admitted by some larger horizon.

The project-level theorem

```lean
theorem first_question_aspectwise_cover_need_not_have_fixed_pair :
    ∃ M : Presentation, ∃ p : M.Phenomenon,
      M.appears p ∧ M.IndividuallyCoverable p ∧
        ¬ ∃ h₀ h₁ : M.Horizon,
          M.situated p h₀ ∧ M.situated p h₁ ∧
            ∀ a, M.presents p a → (M.admits h₀ a ∨ M.admits h₁ a)
```

packages the same witness without changing the model vocabulary.

Together with the already verified split-model theorem, the present relation language has strict counterexamples in both places:

```text
single-horizon capture  ⇒  fixed-pair cover  ⇒  aspectwise cover
          converse fails          converse fails
```

The first failure is witnessed by `splitModel`; the second by `expandingModel`.

## Interpretive boundary

This hierarchy is a formal guardrail against collapsing quantifier patterns.  In particular:

- `NonExhaustible` still means failure of one related horizon to cover all encoded aspects;
- fixed-pair disjunctive coverage is not a formal horizon-combination operation;
- `expandingModel` is not asserted to be Marion’s “indefinitely many horizons” figure;
- failure of every fixed pair is not asserted to be Marion’s stronger “no combination of horizons” claim.

Those historical mappings remain source-controlled.  The direct revised-primary stop gate is unchanged: lawful body review of BG 209–212 plus 225–226, early ED 292–297 plus 314–315, or a reliably mapped authorized revised reprint/translation is still required before final interpretation freeze.

## Validation handoff

Code, audit entries, and this checkpoint are committed on the existing PR branch.  The final documentation SHA must receive its own successful `Lean verification` run before this round may be called kernel-verified.  A green prior SHA is not inherited.
