# First-question appearance-to-capture boundary audit

Date: 2026-09-22

Branch: `research/first-question-main-theorem-20260918`

## Purpose

This round tightens the narrow first-question statement itself.  The repository already had:

- `UniversalStructure`: every actually appearing phenomenon is in the encoded horizon structure;
- `HasSituatedExcess`: an actually appearing structured phenomenon is non-exhaustible;
- `Captured`: some situated horizon exhausts the phenomenon;
- `first_question_no_situatedExcess_iff_double_negated_capture`;
- `first_question_closureBridge_iff_no_situatedExcess_and_captured_stability`.

The new theorem does **not** add a philosophical primitive.  It removes the intermediate `ClosureBridge` wording and states the exact constructive boundary in the natural quantifier shape closest to the research question: once `UniversalStructure` is fixed, when may one pass from actual appearance to positive exhaustive capture?

## External-work gate

### Lean / proof infrastructure

The project is pinned to `leanprover/lean4:v4.24.0`, tag commit
`797c613eb9b6d4ec95db23e3e00af9ac6657f24b`.

`src/Init/Classical.lean` at that exact commit explicitly records that double-negation elimination is classical in general and exposes `Classical.not_not : ¬¬a ↔ a := Decidable.not_not`.  The project does **not** import classical reasoning for the new theorem.  Instead, it keeps the exact stability premise `¬¬ Captured p → Captured p` explicit on the appearing domain.

Targeted GitHub search on 2026-09-22 across:

- `novaspivack/phenomenology-lean`;
- `cbenzmueller/LogiKEy`;
- `alexoltean61/msphml-lean`

for horizon / exhaustibility / capture / structured-appearance combinations found no same-shaped reusable API.  This is not a novelty claim: the logical content is elementary constructive reasoning over project-specific predicates.  Reuse decision: **thin local composition over existing project API; no new dependency**.

### Revised-primary access recheck

A fresh lawful-access route was also checked because the historical stop gate still dominates project completion.

WorldCat record `OCLC 924270665` for Jean-Luc Marion, *The Essential Writings* (Fordham UP, 2013) displays an “Open Access / Access free” link to Internet Archive.  Following that exact catalog link resolves to Internet Archive item `essentialwriting0000mari`.

The Internet Archive item itself states:

- `Access-restricted-item: true`;
- collection `printdisabled`;
- `No suitable files to display here` under download options.

Therefore the WorldCat “Access free” label does **not** provide a lawfully readable body route in this runtime and cannot close the direct-primary stop gate.  No access control was bypassed and no restricted OCR/download endpoint was used.  This negative route result is evidence about access only, not about Marion's interpretation.

The Google Books record for *Being Given* remains a limited preview exposing metadata, contents and common-term indexing, but the target BG pp. 209–212 / 225–226 body was not exposed by the public HTML route checked this round.

## Formal result

New theorem:

```lean
theorem first_question_universalStructure_appearance_capture_iff_no_situatedExcess_and_stability
    (M : Presentation) (hStructure : M.UniversalStructure) :
    (∀ p, M.appears p → M.Captured p) ↔
      (¬ M.HasSituatedExcess) ∧
        (∀ p, M.appears p → (¬ ¬ M.Captured p → M.Captured p))
```

Interpretation of the two right-hand premises:

1. **semantic/model side**: no actually appearing structured phenomenon is a non-exhaustible counterexample;
2. **proof-theoretic side**: positive capture is double-negation stable on the same appearing domain.

`UniversalStructure` is used only to discharge the `Structured p` premise needed by the existing double-negated-capture theorem.  Thus the theorem isolates exactly what the bare formal implication still needs beyond “every appearance has horizon structure.”

The theorem must **not** be read as:

- attributing double-negation stability to Merleau-Ponty or Marion;
- identifying `Captured` with Marion's saturated phenomenon;
- claiming that absence of an observed counterexample constructively produces a capture witness without the explicit stability premise;
- replacing the still-open revised-primary text review.

## Verification ledger

Code commit:

- `ca73615fb4c2a8f17f703911525b857c5d6626fe` — theorem added to `FormalPhenomenology/FirstQuestionClosureBoundary.lean`.

Audit-registration commit:

- `953717c68e0902987c62c7ae89f4ebbf2fd807ae` — theorem added to `Audit.lean`.

Exact-head GitHub Actions status must be read after this document commit.  Until that run succeeds, this round is **written + committed + root-reachable, pending kernel/build verification**; no green status is inherited from an earlier SHA.

## Remaining stop gate

The narrow formal answer is sharper, but the first research question is still not complete until a lawful direct-body route for the revised text is checked (BG 209–212 / 225–226, early ED 292–297 / 314–315, or a reliably mapped authorized reprint/translation) and the interpretation is then frozen against that text.
