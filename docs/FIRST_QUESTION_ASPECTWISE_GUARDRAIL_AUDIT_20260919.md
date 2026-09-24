# First-question aspectwise-cover guardrail audit — 2026-09-19

## Scope and starting point

This pass continues PR #31 from branch `research/first-question-main-theorem-20260918`, starting from head `29ed69645eacffece866e82cb969c38ffc4fa0f0`.  It does not change the historical attribution gate and does not introduce a new phenomenological primitive.

The narrow issue is a quantifier/scope guardrail already present in the project: `NonExhaustible p` means that no **single related horizon** exhausts every encoded aspect.  It does not imply that the aspects fail to admit horizon-by-horizon coverage when the horizon may depend on the aspect.  This distinction matters because the Marion literature separately discusses one horizon, several horizons, and stronger combined-horizon claims; the weak project predicate must not silently absorb those stronger readings.

## External-work gate

### Proof / formal-phenomenology reuse

Rechecked `novaspivack/phenomenology-lean` on 2026-09-19.  Its `main` still resolves to commit `75230e4eab333ad0fc47573747521ccc1a31a163`.  A targeted repository search for `horizon`, `Marion`, `saturated`, `conditioning`, and `exhaust` did not locate a same-shaped API replacing this project's already existing `IndividuallyCoverable` / `NonExhaustible` finite-model facts.  No external dependency or port is warranted for this aggregation.

The logical content is elementary quantifier/model bookkeeping, and the project already has the verified finite witness.  Reuse decision: **thin internal aggregation**, not a new logical framework and not an originality claim.

### Same-topic interpretation

Fresh search terms included `Jean-Luc Marion horizon multiple horizons saturated phenomenon one multiple combined horizon Being Given 211`.  The search again located Shane Mackinlay's *Interpreting Excess* and other same-topic literature in which saturation, excess and horizon limits are discussed as a stronger phenomenological thesis than the project's extensional single-horizon predicate.  This is prior-art pressure **against** over-reading the model, not support for a new historical attribution.

An author-primary corroborating route was also rechecked on the official *Filozofia* site:

- Jean-Luc Marion, “A Saturated Phenomenon,” *Filozofia* 62(5), 2007, pp. 378–402;
- official page: <https://filozofia.sav.sk/en/view/details/regular/2007/5/1739>;
- the official abstract describes horizon as a constitutive condition of givenness, a surplus of intuition, an unconditioned/irreducible phenomenon exceeding intentional comprehension, and reversal of the constituting subject;
- the page exposes an official PDF link, but the body was not successfully retrieved in this pass, so this remains **PRIMARY-OFFICIAL-PAGE/ABSTRACT**, not full-body/page review.

The official/public routes for the revised *Being Given* §21 body remain the decisive source gate.  No unofficial mirror or search snippet is counted as direct-primary evidence.

## Formal change

Commit `daa5939da341f826d4ec7ed4d885e1d1b510b3c7` changes only the aggregate theorem in `FormalPhenomenology/FirstQuestion.lean` (plus its explanatory docstring).  The theorem `first_question_nonExhaustible_allows_aspectwise_horizon_cover` already existed and was already listed in `Audit.lean`; this pass makes that existing guardrail an explicit conjunct of `first_question_complete_formal_answer`.

The aggregate now records seven narrow facts:

1. `UniversalStructure ↛ ClosureBridge`;
2. an actual situated/non-exhaustible finite witness exists;
3. an actual `NonExhaustible` appearance can nevertheless be `IndividuallyCoverable` aspect by aspect;
4. weak `Independent ↛ NonExhaustible` without an additional bridge;
5. on actual appearances the exact condition is absence of an appearing `Captured ∧ Independent` witness;
6. a conditioning witness is exactly conflict exclusion plus captured-domain double-negation stability;
7. relatedness + weak independence + non-exhaustibility is jointly consistent under `ConditioningIsSituated`.

No theorem asserts that `IndividuallyCoverable` formalizes Marion's several-horizon or combined-horizon language.  The new conjunct is deliberately only a **model-scope guardrail** showing that failure of `∃ h, ∀ aspect` does not entail failure of `∀ aspect, ∃ h`.

## Audit and source-coverage status

`Audit.lean` already contains both

- `#print axioms FormalPhenomenology.first_question_nonExhaustible_allows_aspectwise_horizon_cover`, and
- `#print axioms FormalPhenomenology.first_question_complete_formal_answer`.

`FormalPhenomenology.lean` already imports `FormalPhenomenology.FirstQuestion`.  No root import, audit-list, toolchain, dependency, or CI policy change is needed.

Local network access is not being substituted for the pinned toolchain verification.  The final branch SHA for this pass must be checked by GitHub Actions for the pinned Lean build, `scripts/check.py` source/root coverage, and the complete `#print axioms` audit before any kernel-success claim is made.

## Stop gate

This change does **not** complete the first research question.  The remaining material gate is still lawful direct body-text review of the revised §21 horizon passage: BG pp. 209–212 / early ED pp. 292–297 / mapped Spanish SD pp. 341–342, or a reliably mapped authorized reprint/translation carrying that passage.  Only after that review can the weak `Independent` mapping be frozen and the final same-SHA proof/audit chain rerun for completion.
