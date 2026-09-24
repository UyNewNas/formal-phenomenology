# First-question bilateral conditioning nonvacuity audit

Date: 2026-09-24

Branch: `research/first-question-main-theorem-20260918`

## Research target

The previous relation-separation guardrail removed two simple loopholes: relatedness was total on actual appearances and every horizon was genuinely used as a conditioning horizon.  One residual objection remained: the concrete appearance used to separate `situated` from `conditions` was itself unconditioned.  This round checks whether the distinction and the failure of exhaustive closure survive after removing that empty-fiber loophole too.

The proposed strengthening is deliberately model-theoretic.  It does **not** claim that Merleau-Ponty's or Marion's historical horizon relation is a left/right-total binary relation, nor that the project predicates are historically independent merely because a finite model separates them.

## External-first check

A fresh scoped reuse search was performed before adding the witness.

### Lean / formal-philosophy repositories

- `novaspivack/phenomenology-lean`: GitHub code search for combinations of `horizon`, `conditioning`, `exhaustibility`, `situated`, `related`, and `capture` returned no same-shaped reusable API.
- `alexoltean61/msphml-lean`: the same targeted vocabulary did not locate a reusable horizon/conditioning relation-separation result.
- Existing registered LogiKEy / AFP computational-hermeneutic work remains method precedent for relation semantics and countermodel pressure-testing; no large semantic-embedding dependency is warranted for this elementary finite witness.

This is a bounded reuse check, not a novelty claim.  The logical content is elementary: a binary relation can be nonempty on every left and right fiber without coinciding with a larger relation.

### Same-topic philosophy / primary-source gate

The registered source-first search was also refreshed.  Public web results still expose secondary exact quotation of *Being Given* pp. 210–212 and publisher/book metadata, but not an authorized direct-body route for the revised target pages.  In particular, Leung 2022 reproduces the pp. 211–212 claim that the saturated phenomenon does not depend on horizon as a condition of possibility, and Mason gives the one/multiple/no-combination horizon distinctions, but both remain secondary evidence.  An unrestricted third-party reproduction of related Marion text was found during search and was **not** used to close the direct-primary gate.

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

packages these facts together with `¬ ClosureBridge`.  This closes the specific objection that relation separation depended on an unconditioned appearance or on an unused conditioning horizon.

## Interpretation boundary

The result says only that **within the current extensional relation language**, full use of both projections of `conditions` does not identify it with `situated`, and neither nonvacuity condition forces exhaustive capture.  It does not establish historical independence of philosophical concepts, does not identify `conditions` with Marion's full `delimiting anteriority`, and does not identify `NonExhaustible` with the saturated phenomenon.

The existing Marion revised-primary stop gate remains decisive for the historical mapping.

## Verification handoff

The code and `Audit.lean` entries must be checked at the final exact branch head by the repository workflow.  A green run for an earlier SHA is not substituted for the final head.  Required verdict remains: source coverage, full `lake build`, and kernel axiom audit with no unapproved dependencies.
