# First-question conditioned fixed-pair cover audit

Date: 2026-09-22

Scope: first research question only. This audit asks whether the existing finite witness can simultaneously carry (i) positive horizon conditioning, (ii) two distinct horizons jointly covering all encoded aspects, and (iii) failure of single-horizon exhaustive capture, without introducing a horizon-combination primitive.

## External-work gate

A fresh targeted check was performed before adding the wrapper theorem.

### Proof / formal-philosophy reuse

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163`: targeted repository search for `horizon`, `exhaust`, `capture`, and `conditioning` did not locate a same-shaped horizon/exhaustibility/fixed-pair API. This run did not rebuild that external repository, so no external build claim is made.
- Existing project registrations for LogiKEy / AFP computational metaphysics remain methodological precedents for semantic embeddings and countermodel analysis; no new generic modal, set, relation, or finite-family infrastructure is needed for the present wrapper.

### Same-topic interpretation check

- Ezequiel Daniel Murga (2024), *La posibilidad de una horizonticidad no metafísica en Jean-Luc Marion*, DOI `10.5209/asem.94542`, continues to be a direct same-topic secondary baseline: Marion's critique is not adequately represented as simple elimination of every horizon, and the paper explicitly distinguishes multiple senses of horizontality.
- Hilaire Ngoma Tassoulou (2023), *Le problème de l'horizon chez Husserl et Merleau-Ponty*, DOI `10.5281/zenodo.10083785`, describes the Merleau-Pontian horizon as inexhaustible in a way compatible with the project's already registered primary-text reading. It does not supply the present finite-pair formal claim.
- Brock Mason's discussion of *Being Given* pp. 210–211 and King-Ho Leung's 2022 discussion of pp. 211–212 remain secondary page-specific evidence for distinguishing one horizon, several horizons, and stronger excess beyond prior horizon limitation. These sources do not provide a formal theorem, and they do not replace the revised-book direct-primary stop gate.
- Google Books' official limited-preview record for Stanford's 2002 *Being Given* was rechecked. It confirms chapter XXI beginning at p. 199 and chapter XXII at p. 212, but the runtime still did not lawfully expose the target body of pp. 209–212. Therefore source status remains metadata/secondary-crosswalk rather than direct revised-primary review.

Reuse decision: **thin local wrapper only**. The new theorem reuses `splitDependentConditioning` and the existing split-presentation facts. It introduces no model family, no horizon-combination operator, no modal logic dependency, and no historical attribution.

## Formal result

New entry point:

`first_question_mutual_conditioning_two_horizons_joint_cover_still_nonExhaustible`

It exhibits one `HorizonConditioning` model and one actually appearing phenomenon with two distinct horizons `h₀`, `h₁` such that:

1. `UniversalStructure` holds;
2. `ConditioningIsSituated` and `SituatedImpliesConditioning` both hold, so the current `situated` and `conditions` relations coincide extensionally;
3. both `h₀` and `h₁` are situated and conditioning horizons for the phenomenon;
4. every presented aspect is admitted by one of the two fixed horizons;
5. the phenomenon is nevertheless `NonExhaustible`, so no single situated horizon captures all aspects.

The witness is exactly `splitDependentConditioning` over the existing `splitModel`; no new primitive is used.

## Interpretive boundary

This theorem is a quantifier/model guardrail only. The disjunction

`admits h₀ a ∨ admits h₁ a`

means joint coverage by two named horizons. It is **not** a semantic operation that combines horizons, and therefore is weaker than Marion's stronger historical language about no combination of horizons being able to receive an absolutely saturated phenomenon.

Likewise, positive `conditions` in this repository remains a weak project relation. The theorem must not be read as identifying `Conditioned`, `NonExhaustible`, or the split-model witness with a complete Marionian saturated phenomenon.

## Validation status at write time

Code commit: `cc266b8ede87f89b21c2f3e5b6f862ac2698f750`.

Audit registration commit: `cd8256b5e4ad1f3e0b6fa6d5fefc444b2e48d673`.

The new theorem is registered in `Audit.lean`. Exact-head GitHub Actions status must be checked after this documentation commit; this file does not pre-claim `lake build`, `scripts/check.py`, root coverage, or axiom-audit success.

## Remaining stop gate / next entry

The first research question remains source-gated, not proof-gated: obtain lawful direct body review of the revised §21 route (BG 209–212 plus tracked later passage, or mapped ED/reprint equivalent). If that text preserves the current distinction between horizon relatedness and prior limiting condition, freeze interpretation and rerun the full final proof/audit stack. If it forces a mismatch, add only the smallest text-required first-question interface.
