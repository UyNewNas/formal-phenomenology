# First-question local conditioning/exhaustion bidirectional audit

Date: 2026-09-24

Branch: `research/first-question-main-theorem-20260918`

## Object of this round

This round pressure-tests a deliberately local question inside the already registered relation language.  For one actually appearing, already structured phenomenon `p` and one related horizon `h`, do either of the following implications follow without an extra bridge?

```text
situated p h ∧ conditions p h  -> Exhausts p h
situated p h ∧ Exhausts p h   -> conditions p h
```

The first direction was already exposed by
`first_question_appearing_structured_related_conditioning_does_not_force_horizon_exhaustion`.
The new theorem in this round packages the converse failure:

```text
first_question_appearing_structured_related_exhaustive_does_not_force_horizon_conditioning
```

It reuses `displacedCaptureConditioning`: its sole phenomenon actually appears and is structured; every horizon is related; the `false` horizon exhausts the sole presented aspect; conditioning is instead carried by the distinct `true` horizon.  Hence the related/exhaustive `false` horizon is not, merely for those reasons, a conditioning horizon.

This is a thin local wrapper around an existing verified model, not a new model-theoretic discovery.  Its purpose is to close a symmetry in the first-question interface so neither direction between `conditions` and `Exhausts` is silently read off from vocabulary.

## External-first / reuse gate

The proposed theorem adds no generic logic, order, modal, or semantic API.  Nevertheless the relevant formal-philosophy baselines were rechecked before adding the wrapper.

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163` (current `main` on 2026-09-24): targeted repository search for `horizon conditioning exhaust capture` returned no same-shaped API.
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759` (current `master`): the same targeted search returned no matching horizon/exhaustion API.  LogiKEy remains methodological precedent for computational reconstruction rather than a dependency for this finite Lean-Core witness.
- `alexoltean61/msphml-lean@9d6559db6502bc9813dcf028d7ea26ae80e9dc93` (current `itp2026`): the same targeted search returned no matching horizon/conditioning/exhaustion API.

These are bounded reuse searches, not claims that no related work exists.  The generic method "choose an interpretation, formalize it, and test implication/countermodels" is already established computational-hermeneutic methodology and is not claimed as an invention of this project.

## Same-topic source boundary

The historical/source interpretation is unchanged.  The repository already has direct Marion 1996 author-text evidence motivating a distinction between horizon-related manifestation and horizon as an antecedent delimiting condition, plus secondary exact-page triangulation for the revised book.  Fresh official/publisher web checks in this round did not expose the target revised §21 body itself.  The direct-body stop gate therefore remains:

- *Being Given* pp. 209–212, with the tracked pp. 225–226 check; or
- early *Étant donné* pp. 292–297, with pp. 314–315; or
- an authorized, reliably mapped revised reprint/translation carrying the same body.

Metadata, search snippets, or secondary exact-page quotations are not counted as direct review of those pages.  No access restriction was bypassed.

## Strong internal baseline and interpretation

The strongest applicable internal baselines are not merely the older `UniversalStructure ↛ ClosureBridge` countermodel:

1. `first_question_appearing_structured_related_conditioning_does_not_force_horizon_exhaustion` already gives the local `conditions ↛ Exhausts` direction for an actual structured appearance;
2. `exact_appearing_condition_is_strictly_weaker_than_exhaustiveCaptureConditions` already uses `displacedCaptureConditioning` to show that an appearance may be captured and conditioned while the exhaustive horizon itself is not the conditioning horizon;
3. `ExhaustiveCaptureConditions` explicitly states the extra same-horizon bridge `situated ∧ Exhausts -> conditions` and remains a MODEL/QUESTION premise rather than an attributed historical theorem.

The new theorem therefore does not strengthen the philosophical language.  It only makes the converse local non-entailment directly queryable at the same quantifier scope as item 1.  Together, the two local guardrails establish formal bidirectional independence of `conditions` and extensional `Exhausts` **in the current relation language and absent an extra bridge**.  They do not show that the corresponding historical concepts are independent, and they do not identify `NonExhaustible`, `Captured`, or either local relation with Marion's full saturated phenomenon.

## Repository changes

- `dfa3f93df55f6ae46290120a7f2d1c475043704e` — add `FormalPhenomenology/FirstQuestionLocalConditioningExhaustionIndependence.lean` and the converse local non-entailment theorem.
- `e743e6bdaf72f3fc613ff175fa89deaf924db8a0` — make the new module root-reachable from `FormalPhenomenology.lean`.
- `5f58ae7e22233caef780130d942ebc3745e3c3d4` — register the theorem in `Audit.lean` for the zero-axiom dependency check.

No new primitive, model, external dependency, classical principle, historical attribution, `sorry`, `admit`, custom axiom, or unsafe shortcut was introduced.

## Verification status and next entry

The code/audit commits above require exact-head GitHub Actions verification after this documentation commit.  Until the exact final head succeeds, this note records the work as **written + committed + audit-registered, pending kernel/build verdict**; no prior green run is reused as evidence for the new theorem.

If the exact-head build and `scripts/check.py` succeed, the next research entry remains source-first: continue lawful direct retrieval of the revised §21 body and change the formal interface only if that text forces a mismatch.  This local symmetry closure is not by itself a completion event for the first research question.
