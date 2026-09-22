# First-question domain-extension guardrail audit

Date: 2026-09-22

Branch: `research/first-question-main-theorem-20260918`.

## Research object

This round checks one remaining quantifier/domain ambiguity around the first horizon question:

> does failure of every finite *named* family of currently available horizons remain a failure after the horizon domain itself is enlarged by an ideal/completion horizon?

This is an encoding guardrail, not a new historical thesis.  It is especially relevant because the Marion literature already distinguishes one horizon, several horizons (including an infinite plurality in the secondary reconstruction), and the stronger claim that no combination of horizons tolerates the phenomenon.  A finite `List Horizon` theorem must therefore not be promoted into the strongest reading.

## External-first check

### Formal repositories

Targeted GitHub code searches were run before adding the wrapper theorem and were repeated for the same-model follow-up.

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163`: targeted `horizon extension finite cover exhaustible capture` / `horizon` searches returned no same-shaped API.
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759`: the same bounded search found no horizon-domain-extension result to reuse; LogiKEy remains a semantic-embedding / computational-hermeneutics method precedent.
- `alexoltean61/msphml-lean@9d6559db6502bc9813dcf028d7ea26ae80e9dc93`: the same bounded search found no same-shaped horizon/exhaustibility API.

These are bounded source-index searches, not novelty claims and not build evidence for the external repositories.  The current theorem is elementary enough that adding a modal/semantic-embedding dependency would be disproportionate.

### Same-topic interpretation / source route

The already registered Shane Mackinlay and Brock Mason page crosswalks are the important comparison baseline: their reconstructions distinguish a phenomenon requiring one horizon, additional/multiple horizons, and the stronger claim that no combination of horizons suffices.  That prior work directly motivates keeping finite-family failure separate from domain-invariant or combination-invariant failure.

A fresh lawful source search again located the official bibliographic records for Marion's revised §21 (`Being Given`, pp. 199–212, DOI `10.1515/9780804785723-024`) and the authorized `Essential Writings` reprint route (`Sketch of the Saturated Phenomenon`, pp. 108–134, DOI `10.1515/9780823292905-006`).  Public retrieval still exposed metadata rather than the target revised body.  Mason's BYU/Aporia PDF remains direct-access *secondary* exact-page evidence for BG 210–211, not a substitute for reading Marion's revised primary text.  Unauthorized book mirrors surfaced in web search and were not used as source evidence.

Murga (2024), already registered in `docs/PRIOR_ART.md`, remains relevant because it argues against reading Marion as simply abandoning horizonality.  This reinforces the project discipline that adding an ideal horizon in a model is a semantic pressure test rather than a historical attribution.

No new primary-text claim is made here, and this round does not change the still-open revised-§21 direct-body gate in `docs/MARION_HORIZON_GATE.md`.

## Existing project results reused

No new primitive or model was introduced.  The original wrapper reuses exactly:

- `expandingModel_no_finite_list_cover`: no finite list of the open model's natural-number horizons covers every presented aspect;
- `finite_horizon_agrees`: each old finite horizon has exactly the same admission behaviour after embedding as `some n` in `completedModel`;
- `completedModel_capture`: after adding the ideal horizon `none`, the completed model has universal capture.

The first project-level theorem is:

```text
first_question_finite_named_horizon_failure_is_domain_relative
```

and packages the three facts into one statement.

## First-pass formal meaning

The theorem proves, in one verified witness family, all three of the following simultaneously:

1. every old finite horizon is preserved extensionally under the embedding into the completed model;
2. every finite list of old horizons fails to cover all aspects in the open model;
3. the enlarged model nevertheless contains a new ideal horizon that captures everything.

Therefore `no finite list of current horizons covers` is not invariant under enlargement of the horizon domain.  It cannot by itself formalize a claim of the form `no possible or ideal horizon (or semantic combination) could exhaust the phenomenon`.

This does **not** weaken the existing first-question result.  It narrows its interpretation: finite-family non-exhaustibility is a statement about the quantified horizon domain, not an automatic modal claim about every possible extension of that domain.

## Follow-up reverse review: strongest local baseline and same-model check

The reverse review first compared the candidate against the strongest already-available local baseline rather than against a weaker finite-family theorem.

`horizon_domain_changes_exhaustibility` had already proved the outcome-level separation

```text
expandingModel.HasExcess ∧ ¬ completedModel.HasExcess.
```

So the new wrapper is **not** a new logical discovery that domain extension can flip exhaustibility.  Its only additional value is causal/quantifier localization: it records that all old horizons keep their admission behaviour and that the change comes from enlarging the horizon domain.

That first wrapper still split its finite-family failure and universal-capture claims across two presentations.  The follow-up therefore performs the stronger same-object check inside `completedModel` itself.

New theorem:

```text
completedModel_no_finite_old_horizon_list_cover
```

For every finite `List Nat`, the corresponding embedded old horizons `some n` still fail to cover every aspect **inside `completedModel`**.  The proof transports a hypothetical completed-model old-horizon cover back through `finite_horizon_agrees` and contradicts `expandingModel_no_finite_list_cover`.

Project-level packaging:

```text
first_question_domain_extension_same_model_guardrail
```

simultaneously states:

1. every finite family drawn from the embedded old horizon subdomain fails to cover `completedModel`;
2. `completedModel.UniversalCapture` nevertheless holds because the new ideal horizon `none` is available.

This removes the easy reverse-review objection that the finite-family failure and the successful capture were being compared only across two separately defined presentations.  The phenomenon, aspect domain, `presents`, and ambient completed presentation are now fixed; only the permitted horizon subdomain differs.

The result still does **not** prove any modal thesis about every possible completion, and it does not identify `none` with Marion's historical `combination of horizons`.  It is one explicit model showing that quantification over a currently named horizon domain cannot silently be upgraded to quantification over all possible/ideal horizons.

## Verification / stop-gate status

`FormalPhenomenology/FirstQuestionDomainExtension.lean` is imported from the project root.  Both same-model declarations are registered in `Audit.lean` under the unchanged zero-axiom policy.  Exact-head Actions after the final documentation/checkpoint commit determine the kernel verdict; static source inspection alone is not treated as successful verification.

The research question remains open on the historical stop gate until an authorized revised-text body route for the tracked Marion passages is directly checked.  This round neither satisfies nor relaxes that requirement.
