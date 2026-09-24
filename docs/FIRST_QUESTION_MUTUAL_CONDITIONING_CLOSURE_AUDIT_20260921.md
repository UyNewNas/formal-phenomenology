# First-question mutual-conditioning / closure audit

Date: 2026-09-21

Branch: `research/first-question-main-theorem-20260918`

Purpose: turn a prose boundary from the preceding competing-conditioning audit into a small kernel-checkable statement, after a targeted prior-art and interpretation recheck.  The question is deliberately narrow: if the model identifies related horizons and conditioning horizons in **both directions**, does that stronger encoding make horizon structure entail exhaustive closure?

## 1. Target and strongest simple baseline

The preceding audit introduced the optional converse bridge

```text
SituatedImpliesConditioning : situated p h -> conditions p h
```

alongside the older coherence direction

```text
ConditioningIsSituated : conditions p h -> situated p h.
```

The strongest simple reading available in the current relation language is therefore to assume **both** bridges.  Before adding any new model or philosophical primitive, this round checked the existing finite models.  `splitDependentConditioning` is already stronger than needed for the test:

- its base is `splitModel`, hence every appearing phenomenon has a related horizon;
- `splitModel` has two partial horizons and an actual situated/non-exhaustible witness;
- `splitDependentConditioning.conditions` is identically `True`;
- because `splitModel.situated` is also identically `True`, both relation directions hold literally;
- the repository already proves `splitDependentConditioning_not_independent`, so the counterexample does **not** obtain its force from the freedom of the weak `Independent` predicate.

Thus reusing the existing model is the strongest and simplest countermodel check.  No new finite model is justified.

## 2. External-first recheck

### Direct Lean formal-phenomenology prior art

Repository: `novaspivack/phenomenology-lean`.

- exact `main` commit rechecked on 2026-09-21: `75230e4eab333ad0fc47573747521ccc1a31a163`;
- targeted GitHub code-search terms in this round included `horizon conditioning exhaust` and the relation concepts used by the present theorem;
- no same-shaped horizon/conditioning/exhaustive-closure API was located;
- the external repository was **not rebuilt** in this round, so no build claim is imported from it.

Reuse decision: it remains direct Lean formal-phenomenology prior art and a terminology caution, but the present result should be a two-line reuse of this repository's existing finite model rather than a port or dependency.

### Computational-hermeneutics / logic method baseline

Repository: `cbenzmueller/LogiKEy`.

- exact `master` commit rechecked on 2026-09-21: `b29954b0876d7991baf12f17378f31700f9de759`;
- scope relevant here is competing semantic encodings and model/countermodel assessment;
- no drop-in Marion horizon/exhaustibility theorem is being claimed or imported.

Reuse decision: methodological precedent only.  The pattern “state the competing encoding explicitly, then test it by a model” is not claimed as a new formal-philosophy method.

### Same-topic interpretation recheck

Fresh web queries on 2026-09-21 combined `Jean-Luc Marion`, `horizon`, `condition of possibility`, `saturated phenomenon`, `exhaustion`, and the already tracked Llorente/Murga papers.

- Jaime Llorente Cardo (2025), *Pensar al margen del horizonte y en el horizonte de los márgenes*, DOI `10.5209/asem.101681`: the official UCM route remains a secondary source for the stronger reading in which horizonal manifestation is conditioned by prior determination/constitution.  The page-image review supporting that interpretation was recorded in the preceding audit; this round only rechecked the official article route and metadata.
- Ezequiel Daniel Murga (2024), *La posibilidad de una horizonticidad no metafísica en Jean-Luc Marion*, DOI `10.5209/asem.94542`: the official UCM abstract explicitly argues that Marion does not simply abandon horizon but admits a non-metaphysical horizontality.  This remains a competing reading against treating all horizonal relatedness as antecedent delimitation.

These sources constrain how the optional bridges may be interpreted.  Neither is used as a premise that would make exhaustive capture follow from relatedness/conditioning.

The revised Marion book-body gate remains open.  This search did not lawfully expose *Being Given* pp. 209–212 / 225–226, early *Étant donné* pp. 292–297 / 314–315, or a reliably mapped authorized revised reprint body.  That access result is **not** evidence that the text is absent and is not used as originality evidence.

## 3. Minimal formal result

New module: `FormalPhenomenology/ConditioningBoundary.lean`.

It adds no new structure or model and proves only two thin consequences of existing verified objects.

### 3.1 Mutual relatedness/conditioning still permits situated excess

```lean
theorem mutualSituatedConditioning_allows_situatedExcess :
    ∃ M : HorizonConditioning,
      M.base.UniversalStructure ∧
        M.ConditioningIsSituated ∧
          M.SituatedImpliesConditioning ∧
            M.base.HasSituatedExcess
```

The witness is exactly `splitDependentConditioning`.

### 3.2 Mutual relatedness/conditioning still does not force closure

```lean
theorem mutualSituatedConditioning_does_not_force_closure :
    ¬ (∀ M : HorizonConditioning,
      M.base.UniversalStructure →
        M.ConditioningIsSituated →
          M.SituatedImpliesConditioning →
            M.base.ClosureBridge)
```

The proof applies the existing `situatedExcess_refutes_closureBridge` to the same witness.  No classical axiom, new semantic primitive, or stronger model is introduced.

## 4. Reverse check and interpretation boundary

The important reverse check is that this is **not** another separation manufactured by leaving `conditions` unconstrained.  In the witness, both `situated` and `conditions` are everywhere true, so they coincide extensionally.  The sole phenomenon is explicitly not independent, while non-exhaustibility survives because each related/conditioning horizon covers only one of the two encoded aspects.

Accordingly the exact formal lesson is limited but useful:

```text
UniversalStructure
+ (conditions -> situated)
+ (situated -> conditions)
DOES NOT ENTAIL
ClosureBridge.
```

What still would be needed for a positive implication is a premise connecting the relevant horizon to **exhaustion/capture** (for example the separately tracked `ExhaustiveCaptureConditions` direction), not merely an identification of “related” with “conditioning”.

This does **not** show that Marion endorses the two-way identification, and it does **not** identify `NonExhaustible` with the full saturated phenomenon.  It is a model-theoretic guardrail for comparing competing encodings while the revised primary-text gate remains open.

## 5. Verification target and handoff

The new module is imported from the repository root and both declarations are added to `Audit.lean`.  The required verification target is the exact commit produced by this audit: root build/source coverage plus the repository's kernel axiom audit.  This document deliberately does not pre-claim a green result; the actual exact-SHA Actions verdict is to be recorded in the existing Issue #1 checkpoint after the run completes.

If exact-head verification succeeds, this result should be kept as a **candidate interpretive-boundary increment**.  Under the project's reverse-review rule it should not be promoted to a major research notification in the same round.  The next substantive research entry remains direct lawful review of the revised Marion body, or an independent later-round re-derivation of this boundary if the source gate is still inaccessible.
