# First-question finite-cover decidable-boundary audit

Date: 2026-09-23

Branch: `research/first-question-main-theorem-20260918`

## Object reviewed

The previous exact normal form under `UniversalStructure` says that `ClosureBridge` is equivalent to:

1. absence of an actually appearing finite-cover/common-dominator obstruction; and
2. double-negation stability of `Captured` on actual appearances.

This round asks whether the repository's already-audited local decidability discipline removes exactly that second proof-theoretic residue, without adding global classical logic or another philosophical primitive.

## External-first / reuse check

The proposed addition is a thin corollary, but the external-work gate was still rerun before writing it.

### Proof / formal-philosophy repositories

Targeted GitHub code searches on 2026-09-23 used the query family `finite cover decidable horizon capture` / `finite cover decidable horizon`:

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163`: no matching finite-cover/decidable horizon API was returned;
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759`: no matching theorem was returned; it remains methodological prior art for computational hermeneutics / semantic embeddings rather than a dependency for this Lean-Core corollary;
- `alexoltean61/msphml-lean@9d6559db6502bc9813dcf028d7ea26ae80e9dc93`: no matching object was returned;
- a scoped `leanprover-community/mathlib4` search for the same finite-cover/decidable combination returned no project-shaped theorem. The actual logical step needed here is the already-used Lean-Core `Decidable.not_not`, so importing Mathlib would add no value.

These are bounded reuse checks, not novelty claims. The theorem below is classified as a project-local normalization of already verified ingredients.

### Same-topic interpretation check

A fresh literature search for finite horizon combination / exhaustibility in Marion and Merleau-Ponty again recovered the established interpretive baseline rather than a formal theorem matching this repository encoding:

- Ngoma Tassoulou (2023) describes Merleau-Ponty's horizon as inexhaustible rather than closed;
- Leung (2022) directly quotes `Being Given` pp. 211–12 and 225–26 on horizon as condition of possibility and intuition exceeding intention;
- Mackinlay's discussion of BG 211 / ED 295 keeps the one/several/no-combination distinction explicit;
- secondary 2025–2026 work continues to interpret Marion in terms of exceeding prior horizon/constitution conditions.

None of these sources supplies the extensional `List Horizon` / common-dominator semantics used here, and none licenses a historical claim that `Captured` is decidable. The decidability premise therefore remains explicitly FORMAL only.

## Lawful primary-source gate recheck

Public retrieval was rerun for:

- *Being Given* §21 / DOI `10.1515/9780804785723-024`;
- *The Essential Writings*, `Sketch of the Saturated Phenomenon` / DOI `10.1515/9780823292905-006`;
- early *Étant donné* target phrases around ED 293–295.

The lawful routes again exposed bibliographic metadata and secondary exact-page quotations, but not the revised primary body itself. Unauthorized mirrors were not used. Therefore the direct revised-text stop gate remains open, and this round does not strengthen historical attribution.

## Formal increment

`FormalPhenomenology/FirstQuestionUniversalStructureFiniteCover.lean` adds:

`first_question_universalStructure_closureBridge_iff_no_finite_cover_obstruction_of_captured_decidable`.

Hypotheses:

```text
hstructure : M.UniversalStructure
hDecidable : ∀ p, M.appears p → Decidable (M.Captured p)
```

Conclusion:

```text
M.ClosureBridge
↔
¬ ∃ p, M.appears p ∧
  ∀ hs : List M.Horizon,
    (hs finitely covers all presented aspects of p by situated horizons) →
    no situated horizon dominates every member of hs.
```

The proof is deliberately local. The forward direction simply projects the obstruction-free conjunct from the already-audited constructive normal form. The reverse direction supplies the missing stability conjunct by installing `hDecidable p hp` only at an actually appearing `p` and applying `Decidable.not_not`.

Thus the dependency chain is:

```text
local appearing-domain decidability of Captured
⇒ appearing-domain stability of Captured
⇒ [no finite-cover obstruction ↔ positive ClosureBridge].
```

There is no global `Classical`, no new model family, no custom axiom, no new semantic notion of horizon combination, and no attribution of decidability to Merleau-Ponty or Marion.

## Audit / root reachability

The theorem lives in an already root-imported module. `Audit.lean` now contains a dedicated `#print axioms` entry for it. No new library import is required.

Branch-writing commits for this round begin at parent `e9afd23fb1be3322b3b9b87eae66215c95c58272`; code commit `0594e0460a1c8dcaf741e5d6590e2a8c2a3e9db7` adds the theorem and commit `9204fa41d52987a8d65d19cc52cdbe598d02d5ae` registers its axiom audit. The exact final head after this audit record must be checked in PR #31's workflow before any kernel-success claim is made.

## Stop-gate effect

This closes a small proof-theoretic presentation gap: with explicit local decidability, the strongest current finite-cover obstruction criterion can be stated without carrying a separate stability conjunct. It is not a new philosophical result and not a completion event.

The first research question remains open only because the revised Marion direct-body gate has not yet been satisfied. After lawful direct review, the project must freeze the interpretation and rerun the full build/source-coverage/axiom-audit stack on the same final SHA before stopping.
