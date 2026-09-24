# First-question revised-source provenance recheck — 2026-09-24

Branch: `research/first-question-main-theorem-20260918`.
Pre-round head: `97d1cf963308e6e9c119268452ca1de330461656`.

## Scope

This round keeps the first question source-first. The narrow formal answer is already closed at the relation level, so a new theorem is justified only if a fresh source or reuse check changes the logical object. The concrete tasks were: (1) refresh the external formal-work duplicate gate; (2) search one lawful revised-text route and nearby exact secondary witnesses; (3) re-check source-provenance consistency after the 2007 `Filozofia` lineage correction; and (4) regression-verify the unchanged Lean graph on the exact post-audit SHA.

## Mandatory external-work gate

Fresh 2026-09-24 GitHub checks used `horizon exhaustive exhaustible conditioning capture` against the currently registered formal baselines.

- `novaspivack/phenomenology-lean` remains `main@75230e4eab333ad0fc47573747521ccc1a31a163` (2026-05-20).
- `cbenzmueller/LogiKEy` remains `master@b29954b0876d7991baf12f17378f31700f9de759` (2026-09-13).
- `alexoltean61/msphml-lean` remains `itp2026@9d6559db6502bc9813dcf028d7ea26ae80e9dc93` (2026-02-20).

The scoped code search returned no same-shaped reusable horizon/exhaustibility/conditioning API. This is a bounded reuse check, not a claim of nonexistence or novelty, and the external repositories were not rebuilt in this runtime. The current first-question consumer still does not justify importing a modal-logic or semantic-embedding stack for relation-level statements already handled by Lean Core.

Methodologically, LogiKEy / AFP and the registered computational-hermeneutic literature remain prior art for the overall method `interpretive choice -> formal encoding -> theorem/countermodel comparison`. Nothing in this round changes that attribution.

## Revised-text / same-topic source recheck

A fresh public-web search targeted the revised Spanish translation lineage (`Siendo dado`, Javier Bassas Vila, horizon, §21, pp. 341-342) and the corresponding French/English horizon language.

One openly indexed academic source at PLARCI / *Escritos* reproduces a short exact Spanish quotation attributed to Jean-Luc Marion, *Siendo dado* (Madrid: Síntesis, 2008), p. 341, and then cites p. 342 for the first horizon-saturation case. The quoted passage says, in substance, that the point is not to dispense with a horizon in general (which would block manifestation), but to use the horizon otherwise so as to escape its delimiting anteriority; the following case is described as saturation occurring inside the horizon while working against it.

Source route inspected:

- public indexed article PDF endpoint: `https://plarci.org/index.php/escritos/article/download/585/595/1414`;
- indexed text exposes the p. 341 quotation and p. 342 citation but the direct open request in this runtime is currently intercepted by a verification loader.

Evidence decision:

- status: `SECONDARY-EXACT / INDEXED-TEXT`, not `PRIMARY-DIRECT-PAGE`;
- use: it independently corroborates the already tracked mapped Spanish §21 target (`SD 341-342`) and the project’s existing distinction between `situated` and horizon-as-prior-condition;
- non-use: it does **not** close the direct revised-primary stop gate, does not prove a Lean bridge such as `situated ∧ Exhausts -> conditions`, and does not identify `NonExhaustible` with Marion’s full saturated phenomenon.

The current lawful direct-body routes remain BG pp. 209-212 plus 225-226, early ED pp. 292-297 plus 314-315, mapped SD pp. 341-342 plus the later mapped passage, or another authorized reliably mapped revised reprint/translation exposing the corresponding body. No login, purchase, loan, preview restriction, anti-bot mechanism, or other access control was bypassed.

## Source-provenance consistency recheck

The 2026-09-21 correction in `docs/MARION_2007_TRANSLATION_PROVENANCE_20260921.md` remains authoritative: `Filozofia` 62(5) (2007) is Josef Fulka’s translation witness in the same 1992 `Le phénomène saturé` source lineage as Carlson 1996, not a second independent later Marion argument.

A branch-level re-read found one stale summary in `docs/SOURCES.md`: its section heading still says `另一条作者本人旁证：Marion 2007` and its text can be read as giving the 2007 item independent author-evidence weight. That wording is superseded by the 2026-09-21 provenance correction and by the corrected treatment already present in `docs/MARION_HORIZON_GATE.md`.

This is a **ledger-consistency defect**, not a change in the formal result. Until the large consolidated `SOURCES.md` ledger is rewritten on a later focused maintenance commit, the precedence rule is explicit:

1. `docs/MARION_2007_TRANSLATION_PROVENANCE_20260921.md` governs the 2007 item’s lineage and evidential independence;
2. `docs/MARION_HORIZON_GATE.md` governs the current first-question source gate;
3. the stale `docs/SOURCES.md` section must not be used to double-count 2007 as independent later author evidence.

No theorem or interpretation is upgraded from this inconsistency. In particular, the direct revised-book gate remains open.

## Reverse check against the strongest formal baseline

No new Lean wrapper is added this round. The strongest current branch already proves the exact narrow relations needed for the first question, including:

- `UniversalStructure` does not entail `ClosureBridge`;
- mutual `situated <-> conditions` still does not force closure;
- positive `Conditioned` can coexist with `NonExhaustible`;
- finite-family coverage alone does not collapse to single-horizon `Captured`;
- a common dominator / suitable finite upper-bound mechanism is the exact positive route already isolated by the finite-cover theorems;
- current finite-family objects are only lists of named horizons, not Marion’s semantic notion of a horizon `combination`.

The fresh Spanish secondary witness therefore changes no premise and licenses no new primitive. Adding another theorem would duplicate the existing formal boundary rather than advance the first question.

## Lean / validation decision

No definition, theorem, model family, axiom, dependency, or audit exception is added. The Lean work for this round is exact-head regression verification of the already root-reachable first-question graph after committing this source audit. A documentation-only commit is not treated as proof verification until GitHub Actions actually runs the repository checks on that exact SHA.

The pre-round head `97d1cf963308e6e9c119268452ca1de330461656` had workflow `35928430616 = success`; that earlier result is not reused as verification of the new audit SHA.

Required exact-head checks remain the repository workflow’s `python3 scripts/check.py`, full `lake build`, root/source coverage, forbidden-placeholder scan, and kernel axiom dependency audit.

## Remaining stop condition

The narrow formal answer remains complete at the current encoding level. The research question is still open only at the revised-primary interpretation gate. If direct revised body review preserves the current separation between related horizon, horizon as prior condition, and exhaustive capture, freeze the interpretation and run the final exact-SHA proof/audit stack. If the text forces a mismatch, add only the smallest text-required interface and re-run the full checks.
