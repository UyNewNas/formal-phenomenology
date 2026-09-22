# First-question domain-extension guardrail audit

Date: 2026-09-22

Branch: `research/first-question-main-theorem-20260918`.

## Research object

This round checks one remaining quantifier/domain ambiguity around the first horizon question:

> does failure of every finite *named* family of currently available horizons remain a failure after the horizon domain itself is enlarged by an ideal/completion horizon?

This is an encoding guardrail, not a new historical thesis.  It is especially relevant because the Marion literature already distinguishes one horizon, several horizons (including an infinite plurality in the secondary reconstruction), and the stronger claim that no combination of horizons tolerates the phenomenon.  A finite `List Horizon` theorem must therefore not be promoted into the strongest reading.

## External-first check

### Formal repositories

Targeted GitHub code searches were run before adding the wrapper theorem.

- `novaspivack/phenomenology-lean`: query `horizon` returned no indexed match.
- `alexoltean61/msphml-lean` and `cbenzmueller/LogiKEy`: query `finite cover horizon` returned no indexed match.
- A combined search over those repositories for `horizon NonExhaustible Captured expandingModel` also returned no same-shaped API.

These are bounded source-index searches, not novelty claims and not build evidence for the external repositories.  LogiKEy / computational hermeneutics remain method precedents, while the current theorem is elementary enough that adding a semantic-embedding dependency would be disproportionate.

### Same-topic interpretation

The already registered Shane Mackinlay page crosswalk is the important comparison baseline: its reconstruction distinguishes the case where a phenomenon requires an unbounded/infinite plurality of horizons from the stronger case where no combination of horizons suffices.  That prior work directly motivates keeping finite-family failure separate from domain-invariant or combination-invariant failure.

Murga (2024), already registered in `docs/PRIOR_ART.md`, is also relevant because it argues against reading Marion as simply abandoning horizonality.  This reinforces the project discipline that adding an ideal horizon in a model is a semantic pressure test rather than a historical attribution.

No new primary-text claim is made here, and this round does not change the still-open revised-§21 direct-body gate in `docs/MARION_HORIZON_GATE.md`.

## Existing project results reused

No new primitive or model was introduced.  The wrapper reuses exactly:

- `expandingModel_no_finite_list_cover`: no finite list of the open model's natural-number horizons covers every presented aspect;
- `finite_horizon_agrees`: each old finite horizon has exactly the same admission behaviour after embedding as `some n` in `completedModel`;
- `completedModel_capture`: after adding the ideal horizon `none`, the completed model has universal capture.

The new project-level theorem is:

```text
first_question_finite_named_horizon_failure_is_domain_relative
```

and packages the three facts into one statement.

## Formal meaning

The theorem proves, in one verified witness family, all three of the following simultaneously:

1. every old finite horizon is preserved extensionally under the embedding into the completed model;
2. every finite list of old horizons fails to cover all aspects in the open model;
3. the enlarged model nevertheless contains a new ideal horizon that captures everything.

Therefore `no finite list of current horizons covers` is not invariant under enlargement of the horizon domain.  It cannot by itself formalize a claim of the form `no possible or ideal horizon (or semantic combination) could exhaust the phenomenon`.

This does **not** weaken the existing first-question result.  It narrows its interpretation: finite-family non-exhaustibility is a statement about the quantified horizon domain, not an automatic modal claim about every possible extension of that domain.

## Verification plan / stop-gate status

The new module is imported from the project root and the theorem is added to `Audit.lean` for the repository's zero-axiom policy.  Exact-head Actions after the commit determine the kernel verdict; static source inspection alone is not treated as successful verification.

The research question remains open on the historical stop gate until an authorized revised-text body route for the tracked Marion passages is directly checked.  This round neither satisfies nor relaxes that requirement.
