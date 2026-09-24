# First-question appearance-to-capture decidability audit

Date: 2026-09-22

Branch: `research/first-question-main-theorem-20260918`

## Purpose

The previous round isolated the exact constructive boundary for the narrow question once `UniversalStructure` is fixed:

```lean
(∀ p, M.appears p → M.Captured p) ↔
  (¬ M.HasSituatedExcess) ∧
    (∀ p, M.appears p → (¬ ¬ M.Captured p → M.Captured p))
```

This round records the corresponding local-decidability corollary.  The point is not to add another philosophical assumption, but to make explicit exactly where ordinary double-negation elimination would collapse the proof-theoretic residue.

## External-work gate

### Lean / proof infrastructure

The repository remains pinned to `leanprover/lean4:v4.24.0` (`lean-toolchain`).  The immediately preceding audit already checked the matching Lean source and recorded that `Decidable.not_not` is the project-neutral primitive used for local double-negation elimination; no global `Classical` import is required.

Fresh targeted GitHub search on 2026-09-22 across:

- `novaspivack/phenomenology-lean`;
- `cbenzmueller/LogiKEy`;
- `alexoltean61/msphml-lean`

using `captured decidable horizon exhaust appearance` found no same-shaped reusable API.  This is not a novelty claim.  The theorem below is elementary constructive reasoning over project-specific predicates and deliberately reuses Lean Core rather than adding a modal/semantic framework dependency.

The existing methodological registrations for LogiKEy / computational hermeneutics therefore remain unchanged: they are precedents for explicit assumption/encoding comparison, not a dependency for this local logical corollary.  `docs/PRIOR_ART.md` needs no new scope entry for this theorem because no new semantic object or historical attribution is introduced.

### Same-topic textual gate

A fresh lawful-access recheck was made before changing the formal boundary.  De Gruyter Brill's official 2020 eBook page for *Being Given* still exposes the chapter metadata and table of contents for §21 (`pp. 199–212`) and a book-search interface, but the public route checked in this runtime does not expose the target body.  Google Books likewise remains limited-preview metadata/index access for the target edition.  No restricted endpoint or unauthorized mirror was used.

Therefore the historical stop gate is unchanged: the new theorem must not be used to upgrade any attribution to Marion or Merleau-Ponty, and it does not replace direct review of BG 209–212 / 225–226, early ED 292–297 / 314–315, or a reliably mapped authorized reprint/translation.

## Formal result

New theorem:

```lean
theorem first_question_universalStructure_appearance_capture_iff_no_situatedExcess_of_captured_decidable
    (M : Presentation) (hStructure : M.UniversalStructure)
    (hDecidable : ∀ p, M.appears p → Decidable (M.Captured p)) :
    (∀ p, M.appears p → M.Captured p) ↔ ¬ M.HasSituatedExcess
```

The quantifier scope matters.  Decidability is required only for `Captured p` on **actually appearing** phenomena.  It is not required globally over all residents of the phenomenon type, and no separate `Structured p` argument is required because `UniversalStructure` supplies it on the same appearance domain.

The reverse direction is exactly:

1. `¬ HasSituatedExcess` gives `¬¬ Captured p` for every appearing structured `p`;
2. `UniversalStructure` supplies `Structured p`;
3. the local `Decidable (Captured p)` instance turns `¬¬ Captured p` into a positive capture witness.

The forward direction is constructive and uses only `NonExhaustible p ↔ ¬ Captured p` to rule out a situated-excess witness.

## Interpretive boundary

This theorem is **FORMAL / proof-theoretic** only.

It does not say that:

- capture is decidable in phenomenological experience;
- Merleau-Ponty or Marion endorse excluded middle or a decision procedure for horizon exhaustion;
- `Captured` is Marion's saturated phenomenon;
- absence of a situated-excess counterexample constructively yields capture without the explicit local decidability/stability premise.

It sharpens only the repository's own encoding of the narrow implication “actual appearance in the encoded horizon structure → exhaustive capture.”

## Commit ledger

- `1a30abf66c3ead89cb38626f31036506a103bc58` — theorem added to `FormalPhenomenology/FirstQuestionClosureBoundary.lean`;
- `45e4dded5aea73128cc73861968061d186fb68eb` — theorem registered in `Audit.lean`.

The exact-head GitHub Actions result must be checked after this document commit.  Until then this round is **written + committed + root-reachable, pending kernel/build verification**; no earlier green run is inherited.

## Remaining stop gate

The formal answer is slightly more explicit about its constructive/classical boundary, but the project completion criterion is unchanged: lawful direct-body review of the revised Marion text remains necessary before freezing the historical mapping and declaring the first research question complete.
