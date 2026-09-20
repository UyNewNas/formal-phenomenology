# First-question fixed two-horizon witness audit — 2026-09-21

This checkpoint advances only the narrow first horizon/exhaustibility question.  It does not add a new philosophical primitive and it does not identify the project relation language with Jean-Luc Marion's full saturated-phenomenon taxonomy.

## 1. External-first formal/reuse gate

The directly relevant external formal baselines were rechecked before adding the wrapper theorem.

- `novaspivack/phenomenology-lean` remains `main@75230e4eab333ad0fc47573747521ccc1a31a163` (2026-05-20).  A fresh repository search for `horizon / Marion / saturated / exhaustion / capture / aspect` returned no same-shaped API for the present one-horizon versus finite-family guardrail.
- `cbenzmueller/LogiKEy` remains `master@b29954b0876d7991baf12f17378f31700f9de759` (2026-09-13).  A fresh search for `horizon / exhaust / cover / relation / countermodel` returned no domain-specific theorem that should replace this thin finite-model wrapper.  LogiKEy remains methodological prior art for semantic embeddings and countermodel-guided formal philosophy.
- No new generic relation, finite-set, modal, or logical infrastructure is needed.  The proof reuses only the already verified local `splitModel`, whose horizon and aspect types are both `Bool`.

Reuse decision: **thin local packaging only**.  The logical content is elementary and is not claimed as novel logic.

## 2. Same-topic interpretation check

The current source gate was rechecked against material that explicitly distinguishes one horizon from several horizons.

- Brock Mason, `Saturated Phenomena, the Icon, and Revelation` (*Aporia*), openly indexed PDF, reconstructs *Being Given* 210–211 as a sequence involving saturation of one horizon, overflow into multiple horizons, and a stronger case in which no combination of horizons can contain the phenomenon.
- King-Ho Leung, `Sartre and Marion on Intentionality and Phenomenality` (2022), cites *Being Given* 211–212 for Marion's stronger claim that the saturated phenomenon does not depend on horizon as a condition of possibility.
- These remain **secondary exact-page reconstructions**.  They constrain how the project language may be read, but they do not replace direct review of the revised book body.

The 2025 PUF collection *Le phénomène et le donné* is also now an authoritative publication route containing *Étant donné* among Marion's collected givenness texts (PUF, 2025, ISBN 978-2-13-088668-6).  Public publisher/bookshop metadata currently confirms inclusion and edition facts but does not expose the target §21 body in this runtime, so it is recorded only as an additional authorised route, not as direct page review.

## 3. Formal increment

New theorem:

`first_question_two_horizons_can_cover_without_single_horizon_capture`

It exhibits an actually appearing phenomenon in the existing `splitModel` together with two **distinct, fixed, related** horizons `h₀` and `h₁` such that:

1. the phenomenon is `NonExhaustible`, hence no single related horizon exhausts all encoded aspects;
2. every encoded aspect is nevertheless admitted by `h₀` or `h₁`.

This is strictly more concrete than the existing `IndividuallyCoverable` witness (`∀ aspect, ∃ horizon`) because the witnesses are bounded in advance by one fixed pair.  It is still deliberately weaker than Marion's phrase “combination of horizons”: the theorem introduces no operation that combines horizons into a new horizon and proves no historical saturation claim.

The proof is a direct reuse of `splitModel_excess` plus the explicit `Bool` incidence relation of `splitModel`; no new model family, axiom, classical principle, dependency, or unproved philosophical bridge is introduced.

## 4. Why this is useful but not a completion event

The result sharpens the model-scope guardrail already needed by the first question:

- `NonExhaustible` in this repository means failure of **single related-horizon** exhaustion;
- it is compatible not only with aspectwise cover in the abstract, but with cover by two fixed horizons in a concrete finite model;
- therefore the formal predicate must not be read as “no plurality/combination of horizons can accommodate the phenomenon.”

This does not change the principal negative answer `UniversalStructure ↛ ClosureBridge`, the exact `Independent → NonExhaustible` condition, or the constructive conditioning-witness boundary.

## 5. Validation and source gate

`Audit.lean` now includes `#print axioms FormalPhenomenology.first_question_two_horizons_can_cover_without_single_horizon_capture`.

At commit time, the code and audit have been submitted to branch `research/first-question-main-theorem-20260918`; only exact-head GitHub Actions may upgrade the result to kernel-verified status.  A parent green run is not inherited.

The research question remains open at the historical interpretation gate.  Completion still requires lawful direct body review of the revised §21 sequence (BG 209–212 / early ED 292–297 / a reliably mapped authorised Spanish or revised reprint route) plus the already tracked later intention/intuition passage.  Secondary quotations are not treated as direct author-page review.
