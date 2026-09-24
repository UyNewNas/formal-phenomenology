# First-question conditioning-polarity underdetermination audit — 2026-09-22

Branch: `research/first-question-main-theorem-20260918`.
Parent head inspected before this round: `18f818069a25c879584064ed9a54ac89b02dd110`.

## Question narrowed in this round

The previous guardrail showed only that the weak project predicate `Independent := ∀ h, ¬ conditions p h` is compatible with both `Captured` and `NonExhaustible`. A remaining presentation risk was asymmetric: a reader could still infer that *positive* conditioning decides exhaustibility even though weak independence does not.

This round therefore checks the full two-by-two model boundary already latent in the verified finite models, while keeping the separate relation `conditions` explicit and requiring the coherence condition `ConditioningIsSituated` in every witness.

## External-work / reuse gate

Fresh targeted code search used the query family `horizon conditioning exhaustible independent captured`, with the current registered baselines:

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163` (current `main`): direct Lean formal-phenomenology prior art; no indexed same-shaped `conditions / Captured / NonExhaustible` API was located.
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759` (current `master`): remains methodological prior art for computational metaphysics / hermeneutics, not a dependency for this elementary finite-model packaging.
- `alexoltean61/msphml-lean@9d6559db6502bc9813dcf028d7ea26ae80e9dc93` (current default branch `itp2026`): remains modal-logic infrastructure; no same-shaped horizon/exhaustibility theorem was located.

This is a bounded search result, not a nonexistence or novelty claim. The reuse decision is to avoid new generic logic or model infrastructure and package only existing verified project models.

## Same-topic source refresh

The source boundary was rechecked before changing the formal surface.

- De Gruyter's official digital record for *Being Given* still exposes §21 metadata/pagination (`Sketch of the Saturated Phenomenon: The Horizon`, pp. 199–212) but did not expose the target revised body to this runtime. The chapter DOI remains `10.1515/9780804785723-024`.
- King-Ho Leung (2022) remains directly accessible secondary evidence quoting BG 211–212 for Marion's claim that the saturated phenomenon does not depend on a horizon understood as a condition of possibility. This continues to motivate keeping `conditions` separate from bare horizon relatedness, but it does not replace direct revised-primary review.
- Ezequiel Daniel Murga (2024) remains a competing same-topic interpretation in which Marion's critique is directed at a metaphysical use of horizontality rather than every possible notion of horizon.
- Recent Merleau-Ponty horizon work located in the 2025–2026 literature continues to treat horizons as structures of openness, possible exploration, embodiment, or intentionality; no source located in this bounded pass supplies a bridge from mere horizonal relatedness to single-horizon exhaustive capture.

No unauthorized full-book mirror was used. The revised-primary stop gate therefore remains open.

## Formal increment

New theorem:

`first_question_conditioning_polarity_underdetermines_exhaustibility`.

It packages four already-available finite witnesses, all with an actually appearing and `Structured` phenomenon and all satisfying `ConditioningIsSituated`:

1. `Conditioned ∧ Captured` — witnessed by `displacedCaptureConditioning`;
2. `Conditioned ∧ NonExhaustible` — witnessed by `splitDependentConditioning`;
3. `Independent ∧ Captured` — witnessed by `closedIndependentConditioning`;
4. `Independent ∧ NonExhaustible` — witnessed by `splitIndependentConditioning`.

No new model, primitive, axiom, classical principle, or historical attribution is introduced. The theorem is a model-scope guardrail: in the present relation language, the polarity of the separate conditioning relation alone does not determine the single-horizon exhaustibility axis. Any historical inference connecting those axes still requires an independently justified bridge.

## Verification record

Code/theorem commit: `06fb200fbbd06623fe918d25a38ece863642f003`.
Audit-list commit: `775b469530670767ab9129f12d878c7addd82a2c`.
First documentation checkpoint: `35c2d4fd038ce7a83a65f337a174220aa06a84e3`.

Exact-head checks on `35c2d4fd038ce7a83a65f337a174220aa06a84e3` both completed successfully:

- push run `35635639040`: `success`;
- pull-request run `35635643129`: `success`.

The PR run log reports `python3 scripts/check.py`: **14 modules / 104 audited theorems**, full Lean build **17 jobs success**, root/source coverage and placeholder checks success, and kernel audit **104/104 without axiom dependencies**, including `first_question_conditioning_polarity_underdetermines_exhaustibility`. The CI policy was not weakened.

This documentation follow-up changes only the audit record. Its own final SHA must still pass the same workflow before being treated as the round's exact final verified head.

## Reverse-check / interpretation limit

This result deliberately does **not** claim that the four finite witnesses are faithful models of Marionian saturation. In particular, `Conditioned` is only existence of a project-level `conditions` witness, while `Captured` is only existential exhaustive coverage of the currently encoded aspects by one related horizon. The theorem exposes freedom in the encoding; it does not convert that freedom into a claim of conceptual independence in the historical texts.

The stronger pressure-test already present in the repository — mutual extensional coincidence of `situated` and `conditions` still allowing a conditioned non-exhaustible appearance — remains the relevant answer to the simplest “free predicate” objection.

Under the reverse-review policy this new four-quadrant packaging remains a current-round candidate/guardrail rather than a major-progress claim. A later round may re-derive or independently pressure-test it; no user notification is justified merely by this packaging theorem and green CI.

## Remaining stop gate / next entry

Completion still requires lawful direct review of one mapped revised-primary route: BG 209–212 plus 225–226; early ED 292–297 plus 314–315; the mapped Spanish revised route; or an authorized reliably mapped revised reprint/translation. Until that body is checked, do not identify `Independent`, `Conditioned`, `Captured`, or `NonExhaustible` with Marion's complete saturated-phenomenon taxonomy.

Next bounded entry: continue source-first on an authorized revised-text body route; if no direct body becomes available, recheck this four-quadrant guardrail against the strongest existing mutual-conditioning pressure-test rather than adding another unconstrained predicate or model family.
