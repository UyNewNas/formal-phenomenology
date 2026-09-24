# First-question finite-cover closure normal-form audit

Date: 2026-09-23

Branch: `research/first-question-main-theorem-20260918`

## Object reviewed

The previous checkpoints separately established:

1. under `UniversalStructure`, `HasSituatedExcess` is exactly the existence of an actually appearing witness whose every finite situated cover lacks a common situated dominator; and
2. under the same `UniversalStructure`, `ClosureBridge` is constructively equivalent to absence of `HasSituatedExcess` plus double-negation stability of `Captured` on actual appearances.

This round asks whether these two already-audited normal forms can be composed without adding another semantic primitive or a hidden classical step.

## External-first / reuse check

Before adding the wrapper, the same formal-philosophy baselines were rechecked for a matching reusable result:

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163`: targeted code search for `finite cover upper bound horizon` returned no same-shaped horizon/exhaustibility API.
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759`: the same scoped search returned no matching finite-cover/horizon theorem. It remains methodological prior art rather than a dependency for this project-local composition.
- `alexoltean61/msphml-lean@9d6559db6502bc9813dcf028d7ea26ae80e9dc93`: the same search returned no same-shaped object.
- Lean Core already suffices: the proof below composes two existing `↔` results and uses no new order-theoretic, modal, classical, or Mathlib infrastructure.

These checks are bounded reuse checks, not novelty claims. The result is intentionally classified as a thin project-local normal form.

## Same-topic source / access audit

The lawful revised-text gate was rechecked before changing the formal layer.

- The official De Gruyter/Fordham record still identifies *The Essential Writings* (2013) and `Sketch of the Saturated Phenomenon` beginning at p. 108.
- WorldCat record OCLC `924270665` currently displays an `Access free` link for that eBook, but the linked Internet Archive item `essentialwriting0000mari` explicitly reports `Access-restricted-item: true`, belongs to the `printdisabled` collection, and exposes `No suitable files to display here` without authentication. The item was therefore treated only as access-routing metadata; no login, loan, DRM, reader API, or access restriction was bypassed.
- Fresh public searches still recover secondary exact-page quotations and unauthorized full-book mirrors. The latter were excluded. No lawful public route in this round exposed the revised target body itself.

Accordingly, the Marion source stop gate remains open. The WorldCat badge is not counted as direct-primary access, and this round does not strengthen historical attribution.

## Formal increment

`FormalPhenomenology/FirstQuestionUniversalStructureFiniteCover.lean` now adds:

`first_question_universalStructure_closureBridge_iff_no_finite_cover_obstruction_and_stability`.

Under `M.UniversalStructure`, it states constructively:

```text
M.ClosureBridge
↔
  (there is no actually appearing finite-cover/common-dominator obstruction)
  ∧
  (Captured is double-negation stable on actual appearances).
```

The proof does not invent a new finite-cover semantics. It simply sends the obstruction through
`first_question_universalStructure_hasSituatedExcess_iff_exists_finite_cover_obstruction` and then applies the existing
`first_question_universalStructure_closureBridge_iff_no_situatedExcess_and_stability` boundary in both directions.

No new model family, philosophical primitive, classical principle, custom axiom, or external dependency is introduced. A finite `List Horizon` remains only an extensional list of named horizons in the repository language and is not identified with Marion's historical phrase `combination of horizons`.

## Verification plan / status

The branch head before this round was `334860b21f8b98f305f5870f3f72e52888160a0e`, with exact-head workflow `35813506890` completed successfully. That run does not validate this new theorem.

This change keeps the existing root module import because `FirstQuestionUniversalStructureFiniteCover.lean` was already root-reachable, and it adds the new theorem to `Audit.lean`. The exact final SHA must pass the ordinary workflow's `lake build`, source-root coverage, and kernel axiom audit before this round can be considered verified.

## Stop-gate effect

This is a useful exact normal form, not a completion event. It makes the strongest current finite-cover baseline explicit at the same level as the constructive closure/stability boundary, but it does not turn finite lists into semantic horizon combinations and does not satisfy the revised Marion direct-body gate.

The first research question therefore remains open pending lawful direct review of the revised target body (BG 209–212 plus the tracked later passage, the mapped early-ED pages, or an authorized reliably mapped equivalent), followed by interpretation freeze and same-SHA full verification.
