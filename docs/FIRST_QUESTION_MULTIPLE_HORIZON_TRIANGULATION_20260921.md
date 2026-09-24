# First-question multiple-horizon triangulation — 2026-09-21

## Scope

This checkpoint pressure-tests one interpretive boundary already present in the first-question package:

- `Presentation.NonExhaustible p` means that **no single situated horizon** exhausts all encoded aspects of `p`;
- the repository also has a finite witness where **two fixed distinct situated horizons jointly cover every encoded aspect**;
- neither statement introduces a horizon-combination operator or claims to formalize Jean-Luc Marion's full taxonomy of saturated phenomena.

The purpose of this round is to check whether the several-horizon / no-combination distinction is independently visible in the literature and to make the corresponding formal non-implication explicit without adding a new philosophical primitive.

## External-first search

Date: 2026-09-21.

Targeted terms included `Being Given 210 211 horizon saturated phenomenon`, `no combination of horizons`, `multiple horizons`, `horizon exhaustibility`, and French variants around `Étant donné` / `phénomène saturé` / `horizon`.  A code search also checked `novaspivack/phenomenology-lean` and `cbenzmueller/LogiKEy` for a same-shaped horizon / exhaustive-capture / finite-cover API; no matching result was returned.  This negative code-search result is only an engineering reuse check, not a novelty claim.

### Brock M. Mason, “Saturated Phenomena, the Icon, and Revelation”

Open publisher-hosted PDF: <https://aporia.byu.edu/pdfs/mason-saturated_phenomena.pdf>.

Mason's p. 35 reconstruction explicitly distinguishes three relations between saturated phenomenon and horizon in *Being Given* pp. 210–211: saturation of one horizon, overflow into multiple horizons, and a stronger combined case in which no combination of horizons is sufficient.  The paper quotes BG p. 211 for the last case.

Status: **SECONDARY-DIRECT-PDF / EXACT-BG-PAGE-REFERENCE**.  It is strong evidence about how the revised book passage has been read, but it is not a substitute for direct review of Marion's revised §21 body.

### Myka Lahaie, doctoral thesis, Durham E-Theses

Open institutional-repository PDF: <https://etheses.durham.ac.uk/id/eprint/13927/1/Myka_Lahaie%252C_Doctoral_Thesis.pdf%3FDDD32%2B>.

The thesis (around p. 128 in the retrieved text) states that Marion's saturated phenomena can disrupt prior horizons in several ways and, in a footnote citing Robyn Horner, distinguishes becoming its own horizon, appearing against indefinitely many horizons, or combining the two.  It also points to *Being Given* p. 209 for the relevant section.

Status: **SECONDARY-DIRECT-INSTITUTIONAL-PDF**.  This corroborates the structural distinction but does not itself establish the wording of revised §21.

### Dermot Moran / UCD author-accessible text

Author/institution-hosted PDF: <https://www.ucd.ie/t4cms/Immanence%20Self%20Experience%20Transcendence%202008.pdf>.

The text describes Marion's saturated phenomenon as unconditioned / absolved from a horizon and cites the *Being Given* `Sketch` pp. 199–221, while also recording the authorized Routledge reprint route.  It is useful for provenance and for the distinction between horizonal relation and prior conditioning, not for collapsing all several-horizon cases into one predicate.

Status: **SECONDARY-DIRECT-AUTHOR/INSTITUTION-PDF**.

## Direct-primary stop gate

This round also re-ran public searches for BG pp. 209–212 / early ED pp. 292–297 and the exact expressions quoted in the literature.  Search results again exposed secondary quotations, publisher metadata, and non-authorized mirror text, but no lawful public route in this runtime that both establishes revised-text identity and exposes the target author body page-for-page.

Accordingly:

- no unauthorized mirror is used to close the source gate;
- secondary exact quotations remain secondary;
- the first-question stop condition remains open pending direct review of an authorized revised-text route or a reliably mapped authorized reprint.

## Formal consequence added this round

`FormalPhenomenology.FirstQuestionRobustness` now contains:

```lean
theorem first_question_fixed_pair_cover_does_not_force_capture :
  ¬ (∀ (M : Presentation) (p : M.Phenomenon),
    M.appears p →
      (∃ h₀ h₁ : M.Horizon,
        h₀ ≠ h₁ ∧ M.situated p h₀ ∧ M.situated p h₁ ∧
          ∀ a, M.presents p a → (M.admits h₀ a ∨ M.admits h₁ a)) →
        M.Captured p)
```

The proof is a thin reuse of the already verified split-model theorem `first_question_two_horizons_can_cover_without_single_horizon_capture` plus `nonExhaustible_iff_not_captured`.

### What this theorem establishes

Within the current relation/aspect language, even fixed coverage by two distinct situated horizons does not logically force the existence of one situated horizon that exhausts the phenomenon.

### What it does **not** establish

It does not prove that Marion's second figure is literally this finite disjunctive cover, and it does not formalize the stronger third figure in which no *combination* of horizons can receive the phenomenon.  In fact, the split-model witness is a reason not to identify the current `NonExhaustible` predicate with that stronger third-figure reading: `NonExhaustible` can hold while a fixed pair jointly covers all encoded aspects.

This is therefore a model-boundary theorem and an over-reading guardrail, not a new historical thesis.

## Reuse / dependency decision

- No new definition or semantic framework was introduced.
- No Mathlib, LogiKEy, AFP, Rocq/Coq, or Agda dependency is justified by this elementary quantifier consequence.
- Existing project models and theorems are reused directly.
- The external literature constrains interpretation and provenance; it is not imported as a proof dependency.

## Verification / handoff

Code and audit ledger were committed on `research/first-question-main-theorem-20260918`.  Exact-head CI must be read before calling the new theorem kernel-verified.  If CI succeeds, the next source-first action remains lawful direct-body review of revised §21; no expansion into a full horizon-combination algebra is authorized or needed for the first question.
