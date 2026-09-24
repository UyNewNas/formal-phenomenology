# First-question weak-independence underdetermination audit — 2026-09-22

Branch: `research/first-question-main-theorem-20260918`.
Parent head inspected before this round: `6a5e58bc68da192f619ed7aca5616f3c50b77f03`.

## Question narrowed in this round

The repository already distinguishes a horizon merely *related* to an appearance (`situated`), a horizon acting as a prior condition (`conditions`), and one related horizon exhausting all currently encoded aspects (`Captured`).  The source gate also already warns that project-level `Independent := ∀ h, ¬ conditions p h` is only a weak interface for absence of an encoded conditioning witness, not Marion's complete saturated-phenomenon account.

A remaining presentation risk was that readers could still infer one direction from the name alone: that weak `Independent` itself decides whether the appearance is exhaustible.  This round therefore checks and packages the strongest already-available counterevidence without adding a new predicate or model.

## External-work / reuse gate

Fresh targeted code search used the query family `Independent Captured NonExhaustible horizon`, plus the existing horizon/exhaustibility/saturation terms, against the current registered direct/methodological baselines:

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163` (current `main`): direct Lean formal-phenomenology prior art; no indexed same-shaped `situated / conditions / Captured / NonExhaustible` API was located.
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759` (current `master`): computational-metaphysics / hermeneutic methodology remains a precedent, not a drop-in theorem for this relation language.
- `alexoltean61/msphml-lean@9d6559db6502bc9813dcf028d7ea26ae80e9dc93` (current default branch `itp2026`): modal-logic infrastructure remains relevant methodologically; no indexed same-shaped horizon/exhaustibility theorem was located.

This bounded search is not a claim that no philosophically related work exists.  Reuse decision: no generic logic API is missing; the smallest correct step is a thin packaging theorem over two already-verified project witnesses.

## Same-topic source refresh

The lawful revised-book gate was rechecked before changing the formal surface.

- De Gruyter's official *Being Given* record still confirms Book IV pagination: §21 `Sketch of the Saturated Phenomenon: The Horizon` begins at p. 199, §22 at p. 212, §23 at p. 221; the target p. 209–212 / p. 225–226 body is not exposed to this runtime by the official record.
- King-Ho Leung, `Sartre and Marion on Intentionality and Phenomenality` (2022), remains directly accessible secondary evidence with exact BG page references: pp. 211–212 are used for the claim that the saturated phenomenon does not depend on a horizon understood as a condition of possibility, while pp. 225–226 are used for intuition exceeding intention and resistance to synthesis into an object defined by a horizon.  This helps police the interpretation boundary but remains secondary quotation, not direct revised-primary review.
- Search results also surfaced unauthorised full-book mirrors.  They were deliberately excluded from evidence and were not used to close the source gate or reconstruct hidden page text.

Therefore this round does **not** upgrade any historical attribution and does not close the Marion revised-§21 stop condition.

## Formal increment

New project-facing theorem:

`first_question_weak_independence_underdetermines_exhaustibility`.

It states, using two already-verified finite witnesses, that the current weak `Independent` predicate is compatible with both sides of the exhaustibility boundary:

1. there is an actually appearing, `Structured`, `Independent` phenomenon that is `Captured` (`closedIndependentConditioning` witness);
2. there is an actually appearing, `Structured`, `Independent` phenomenon that is `NonExhaustible` (`splitIndependentConditioning` witness).

No new model, primitive, axiom, classical principle, or semantic bridge is introduced.  The result is a FORMAL interpretation guardrail: absence of a `conditions` witness alone does not decide single-horizon exhaustibility.  In particular it supplies no definition of Marionian saturation and no historical claim that Marion endorses either finite witness.

The new module is root-imported and its declaration is listed in `Audit.lean`, so the repository's ordinary build/source-coverage/zero-axiom checks must validate it before the round is treated as verified.

## Remaining gate / next entry

The formal narrow first-question answer remains unchanged in substance.  Completion still requires lawful direct revised-primary body review of one already-mapped route (BG 209–212 plus 225–226; early ED 292–297 plus 314–315; the mapped Spanish route; or an authorised reliably mapped reprint/translation).  Until then, keep `Independent`, `NonExhaustible`, and `Captured` as separately audited model axes and do not expand into a full saturation ontology merely to manufacture progress.
