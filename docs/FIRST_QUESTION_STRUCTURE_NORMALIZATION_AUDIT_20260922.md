# First-question structure / closure normalization audit

Date: 2026-09-22

Branch: `research/first-question-main-theorem-20260918`

## Purpose

The repository already distinguishes the historical/interpretive question from the technical predicate `ClosureBridge`.  This round adds the smallest normalization needed to state exactly how those formulations relate once `UniversalStructure` is explicitly assumed:

```lean
M.ClosureBridge ↔ ∀ p, M.appears p → M.Captured p
```

The equivalence is conditional on `UniversalStructure`; without that assumption, `ClosureBridge` only speaks about appearances that are also `Structured`.

## External-work gate

### Proof infrastructure / formal-philosophy repositories

Fresh targeted GitHub search on 2026-09-22 across:

- `novaspivack/phenomenology-lean`;
- `cbenzmueller/LogiKEy`;
- `alexoltean61/msphml-lean`

using `closure bridge captured appearance structured horizon` returned no same-shaped reusable API.  This is not a novelty claim: the theorem is an elementary quantifier/domain normalization over project-specific predicates, so importing a modal or semantic framework would add dependency weight without supplying the missing project vocabulary.

The method-level prior-art decision is unchanged: LogiKEy / AFP / computational hermeneutics remain precedents for explicit interpretation choice and model comparison, not dependencies for this local theorem.

### Same-topic textual recheck

The official De Gruyter Brill record for *Being Given* continues to expose §21 `Sketch of the Saturated Phenomenon: The Horizon` at pp. 199–212 and book-search metadata, but the public route checked in this runtime did not expose the target body.  The revised-book direct-primary stop gate therefore remains open.

A fresh secondary exact-page triangulation was found in a doctoral thesis served from UNED's institutional `e-spacio` repository.  The indexed thesis text explicitly cites:

- *Étant donné* p. 292 / Spanish translation p. 341 for horizon as a condition of appearing that both receives and restricts phenomena, and for the question whether a phenomenon may overflow its horizon;
- *Étant donné* pp. 292–293 / Spanish p. 341 for Marion's qualification that the move is not a general abandonment of horizon but a different use that frees manifestation from the horizon's delimiting anteriority;
- *Étant donné* p. 293 / Spanish p. 342 for the first saturation case, where intuition fills the concept/horizon and produces bedazzlement without yet simply crossing that horizon.

This is useful **SECONDARY-EXACT-PAGE-CROSSCHECK** evidence for the existing `situated` / `conditions` distinction and for the current early-ED target range.  It is not Marion's book body itself, so it is not promoted to direct-primary evidence and does not close the stop gate.

## Formal result

New theorem:

```lean
theorem first_question_universalStructure_closureBridge_iff_appearance_capture
    (M : Presentation) (hStructure : M.UniversalStructure) :
    M.ClosureBridge ↔ ∀ p, M.appears p → M.Captured p
```

The forward direction uses `hStructure p hp` to discharge the `Structured p` premise required by `ClosureBridge`.  The reverse direction discards that extra premise because universal appearance-capture is already stronger on the same appearance domain.

Interpretive boundary:

- `UniversalStructure` remains the weak repository encoding of “actual appearance has a related horizon”;
- `Captured` remains existential exhaustive capture in the aspect language, not Marion's saturated phenomenon;
- the theorem is a FORMAL normalization and introduces no historical attribution, classical principle, or new phenomenological primitive.

## Commit and verification ledger

- `c198cf9c6c6a123d190956a6b79dfdb3c93e9894` — added `FormalPhenomenology/FirstQuestionStructureNormalization.lean`;
- `bd0d1785ab188ca6c142f4a3ad37db3b535a4317` — exposed the module from the root import;
- `9fd68b2a1f9dbba4318749ee37d21aa78ff0c413` — registered the theorem in `Audit.lean`;
- `1201fa7191a40fec6303955fbe35afff8e7b80c8` — first complete code+audit+research-document head.

Exact-head pull-request workflow `35678848439` for `1201fa7191a40fec6303955fbe35afff8e7b80c8` completed **success**.  Its `verify` job completed the pinned Lean setup and the repository's `Build, source coverage, and kernel axiom audit` step successfully.  Thus the theorem is kernel/build verified at that exact source head; no earlier green run is being inherited.

This follow-up commit only records that verified status in the audit document; it changes no Lean source or theorem statement.  The repository Actions record on the follow-up SHA remains the authoritative exact-head check for this documentation-only update.

## Remaining stop gate

The first research question is still not complete.  Lawful direct-body review of BG 209–212 / 225–226, early ED 292–297 / 314–315, or a reliably mapped authorized revised reprint/translation remains necessary before the historical mapping can be frozen and the task stopped.
