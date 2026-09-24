# First-question bilateral conditioning nonvacuity audit

Date: 2026-09-24

Branch: `research/first-question-main-theorem-20260918`

## Research target

The previous relation-separation guardrail removed two simple loopholes: relatedness was total on actual appearances and every horizon was genuinely used as a conditioning horizon. One residual objection remained: the concrete appearance used to separate `situated` from `conditions` was itself unconditioned. This round checks whether the distinction and the failure of exhaustive closure survive after removing that empty-fiber loophole too.

The proposed strengthening is deliberately model-theoretic. It does **not** claim that Merleau-Ponty's or Marion's historical horizon relation is a left/right-total binary relation, nor that the project predicates are historically independent merely because a finite model separates them.

## External-first check

A fresh scoped reuse search was performed before adding the witness.

### Lean / formal-philosophy repositories

- `novaspivack/phenomenology-lean`: GitHub code search for combinations of `horizon`, `conditioning`, `exhaustibility`, `situated`, `related`, and `capture` returned no same-shaped reusable API.
- `alexoltean61/msphml-lean`: the same targeted vocabulary did not locate a reusable horizon/conditioning relation-separation result.
- Existing registered LogiKEy / AFP computational-hermeneutic work remains method precedent for relation semantics and countermodel pressure-testing; no large semantic-embedding dependency is warranted for this elementary finite witness.

This is a bounded reuse check, not a novelty claim. The logical content is elementary: a binary relation can be nonempty on every left and right fiber without coinciding with a larger relation.

### Same-topic philosophy / primary-source gate

The registered source-first search was also refreshed. Public web results still expose secondary exact quotation of *Being Given* pp. 210–212 and publisher/book metadata, but not an authorized direct-body route for the revised target pages. In particular, Leung 2022 reproduces the pp. 211–212 claim that the saturated phenomenon does not depend on horizon as a condition of possibility, and Mason gives the one/multiple/no-combination horizon distinctions, but both remain secondary evidence. An unrestricted third-party reproduction of related Marion text was found during search and was **not** used to close the direct-primary gate.

Therefore the historical stop condition is unchanged: this round may strengthen only the formal pressure test.

## Formal increment

`FormalPhenomenology/FirstQuestionRelationNonvacuity.lean` now defines the finite `balancedConditioningWitness` by reusing the already-audited presentation layer of `mixedConditioningWitness` and changing only the conditioning relation to the Boolean diagonal:

```text
conditions p h  :=  p = h
```

Hence:

1. every actual appearance has a conditioning horizon (`h := p`);
2. every horizon conditions an actual appearance (`p := h`);
3. conditioning remains a subrelation of relatedness;
4. every horizon remains related to every appearance;
5. off-diagonal related pairs are still not conditioning pairs;
6. every appearance remains non-exhaustible because each Boolean horizon admits only its matching aspect while each appearance presents both aspects.

The project-facing theorem

`first_question_bidirectionally_nonvacuous_conditioning_still_separates_relations`

packages these facts together with `¬ ClosureBridge`. This closes the specific objection that relation separation depended on an unconditioned appearance or on an unused conditioning horizon.

## Interpretation boundary

The result says only that **within the current extensional relation language**, full use of both projections of `conditions` does not identify it with `situated`, and neither nonvacuity condition forces exhaustive capture. It does not establish historical independence of philosophical concepts, does not identify `conditions` with Marion's full `delimiting anteriority`, and does not identify `NonExhaustible` with the saturated phenomenon.

The existing Marion revised-primary stop gate remains decisive for the historical mapping.

## Exact-head verification

The code plus audit head `761dbb01a22848d0152b328e93fde9949f389d96` was checked by GitHub Actions run `35961973948`. The workflow checked PR merge ref `2aa893231b33405677d994e756fd7689e4cd0987`, explicitly merging that exact branch head into base `c6f527875c0a905c33dac68176ed01a2c64b97c3`, and completed `success`.

The hosted log reports:

- `python3 scripts/check.py`: **28 modules / 177 audited theorems**;
- full `lake build`: **31 jobs**, successful;
- kernel axiom audit: **177/177 theorems without axiom dependencies**;
- all eight new balanced-witness declarations were individually reached by `Audit.lean` and reported without axiom dependencies.

`FormalPhenomenology/FirstQuestionRelationNonvacuity.lean` is already imported by the root module, so the new theorem is root-reachable on the verified head.

This documentation follow-up is intentionally separate from that code/audit verification record. Its own final branch SHA must retain the ordinary exact-head workflow verdict before it is treated as the handoff head; the earlier green code SHA is not silently substituted for the final branch head.

## Remaining stop condition

The first research question remains open only at the historical mapping gate: legal direct-body review of the revised *Being Given* target pages, the mapped early *Étant donné* pages, or an authorized reliably mapped reprint. This formal strengthening does not change that gate and does not justify extending the project into a full saturation ontology.
