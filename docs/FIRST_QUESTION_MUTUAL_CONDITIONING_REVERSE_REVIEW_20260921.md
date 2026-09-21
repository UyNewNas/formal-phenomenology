# First-question mutual-conditioning reverse review

Date: 2026-09-21

Branch: `research/first-question-main-theorem-20260918`

## Purpose

This is the required later-round reverse review of the candidate result introduced at commit `f0c91224d8909f923d5492b674a51fbe0fd9a3fd`.

The question checked here is deliberately stronger than the earlier unconstrained-conditioning separation:

> If the current model identifies `situated` and `conditions` in both directions, does universal horizon structure then force exhaustive closure?

The answer in the current relation language is still no.

## Strongest simple internal baseline

The relevant hypotheses are all imposed simultaneously:

```text
UniversalStructure
ConditioningIsSituated       -- conditions -> situated
SituatedImpliesConditioning  -- situated -> conditions
```

The witness is not a new model. It is exactly `splitDependentConditioning`, whose base is `splitModel`.

Reverse checks:

1. **No empty/vacuous horizon trick.** The sole phenomenon actually appears and `splitModel_structure` gives a related horizon.
2. **The two relations really coincide on the witness.** `splitModel.situated` is `True` for both horizons and `splitDependentConditioning.conditions` is also `True` for both horizons, so both bridge directions hold extensionally.
3. **The separation does not use weak `Independent`.** The same model already proves `splitDependentConditioning_not_independent`; the closure failure survives after independence is false.
4. **The failure is genuinely exhaustion-level.** The two Bool horizons each admit only their matching Bool aspect, so each is partial; `splitModel_situatedExcess` supplies an actually appearing, structured, non-exhaustible witness.
5. **Quantifier scope matches the theorem.** The theorem refutes a universal implication over all `HorizonConditioning` models; one explicit non-vacuous model with all three hypotheses and failed `ClosureBridge` is sufficient.
6. **No source claim is smuggled into the model.** The two bridge directions remain named MODEL hypotheses; no theorem states that Merleau-Ponty or Marion endorses their conjunction.

Thus the candidate is not merely another countermodel obtained by leaving `conditions` independent of `situated`.

## External-first recheck

Fresh targeted GitHub searches on 2026-09-21 were run against:

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163`, with horizon / conditioning / exhaust / capture / saturated / Marion terms;
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759`, with horizon / conditioning / exhaustive / capture / countermodel / semantics terms.

No same-shaped theorem or API was located in those bounded searches. The first repository remains direct Lean formal-phenomenology prior art; LogiKEy remains methodological prior art for explicit competing encodings and model assessment. Neither repository was rebuilt in this round, and no nonexistence claim is made beyond the recorded search scope.

Same-topic web recheck again located the De Gruyter/PhilPapers bibliographic route for Marion's §21 (`Sketch of the Saturated Phenomenon: The Horizon`, *Being Given*, pp. 199–212, DOI `10.1515/9780804785723-024`) and public table-of-contents metadata for the Stanford English edition. Those routes did not expose the target revised body pages in this runtime. Secondary literature remains useful for competing readings but does not close the direct-primary gate.

## Formal packaging added in this review round

`FormalPhenomenology/FirstQuestionRobustness.lean` adds only the project-level wrapper

```lean
theorem first_question_mutual_conditioning_robustness :
    (¬ (∀ M : Presentation, M.UniversalStructure → M.ClosureBridge)) ∧
      (¬ (∀ M : HorizonConditioning,
        M.base.UniversalStructure →
          M.ConditioningIsSituated →
            M.SituatedImpliesConditioning →
              M.base.ClosureBridge))
```

The proof is thin reuse of `first_question_formal_answer.1` and `mutualSituatedConditioning_does_not_force_closure`. It adds no primitive, model, logical principle, external dependency, or historical attribution. The root module imports it and `Audit.lean` includes it in the zero-axiom dependency check.

## Interpretation consequence

The formal result now survives the strongest simple identification currently expressible between horizonal relatedness and horizon-conditioning. Therefore a positive route from universal horizon structure to exhaustive closure still requires an additional premise that connects the relevant horizon to **capture/exhaustion**, not merely a premise that calls every related horizon a conditioning horizon.

This is a local model-theoretic robustness result only. It does not identify `NonExhaustible` with Marion's full saturated phenomenon and does not settle which bridge, if any, the revised primary text warrants.

## Remaining stop gate

The first research question is not yet marked complete. The remaining material gate is still lawful direct review of the revised Marion body (BG pp. 209–212 and the tracked later comparison, early ED pp. 292–297 / 314–315, or an authorized reliably mapped revised reprint/translation). The formal target should not be enlarged again unless that body forces an interpretation change.

## Verification status

The candidate commit `f0c91224d8909f923d5492b674a51fbe0fd9a3fd` already has exact-head `Lean verification` run `35560003917` = `success`, including checkout, pinned Lean setup, and `Build, source coverage, and kernel axiom audit`.

The wrapper/root/audit changes in this review round require their own exact-final-SHA workflow verdict. Until that run succeeds, this document does not claim final kernel verification for the new wrapper.
