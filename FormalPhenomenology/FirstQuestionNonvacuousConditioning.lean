import FormalPhenomenology.Models.Conditioning

set_option autoImplicit false

namespace FormalPhenomenology
open Presentation HorizonConditioning

/--
A small finite pressure-test in which the conditioning relation is genuinely used.

Both phenomena appear and both have related horizons.  The `false` phenomenon is
independent of every conditioning horizon, while the `true` phenomenon is positively
conditioned.  Each horizon admits exactly the matching Boolean aspect, so neither
phenomenon is exhausted by a single horizon.

This model exists only to rule out the objection that the project's
`Structured ∧ Independent ∧ NonExhaustible` compatibility witness depends on making
`conditions` globally empty.  It does not identify any Boolean component with a
historical phenomenological category.
-/
def mixedConditioningWitness : HorizonConditioning where
  base :=
    { Phenomenon := Bool
      Horizon := Bool
      Aspect := Bool
      appears := fun _ => True
      situated := fun _ _ => True
      presents := fun _ _ => True
      admits := fun h a => h = a }
  conditions := fun p _ => p = true

/-- The mixed witness respects the one-way coherence condition. -/
theorem mixedConditioningWitness_coherent :
    mixedConditioningWitness.ConditioningIsSituated := by
  intro _ _ _
  exact True.intro

/--
The `false` phenomenon is actually appearing, structured, independent of conditioning,
and non-exhaustible even though the same model has nonempty conditioning elsewhere.
-/
theorem mixedConditioningWitness_hasSituatedIndependentExcess :
    mixedConditioningWitness.HasSituatedIndependentExcess := by
  refine ⟨false, True.intro, ?_, ?_, ?_⟩
  · exact ⟨false, True.intro⟩
  · intro h hh
    change (false : Bool) = true at hh
    cases hh
  · intro h _
    cases h with
    | false =>
        intro hexhausts
        have hbad := hexhausts true True.intro
        change (false : Bool) = true at hbad
        cases hbad
    | true =>
        intro hexhausts
        have hbad := hexhausts false True.intro
        change (true : Bool) = false at hbad
        cases hbad

/-- The same model contains an actually appearing phenomenon with a conditioning witness. -/
theorem mixedConditioningWitness_hasConditionedAppearance :
    ∃ p : mixedConditioningWitness.base.Phenomenon,
      mixedConditioningWitness.base.appears p ∧ mixedConditioningWitness.Conditioned p := by
  refine ⟨true, True.intro, ?_⟩
  exact ⟨false, rfl⟩

/--
Project-facing robustness statement: relatedness + independence + non-exhaustibility
remain jointly satisfiable under `ConditioningIsSituated` in a model whose conditioning
relation is itself inhabited by an actually appearing phenomenon.

This strengthens only the model-theoretic robustness of the first-question separation.
It does not show that Marion's or Merleau-Ponty's historical horizon concepts are
independent predicates.
-/
theorem first_question_nonvacuous_conditioning_profile :
    ∃ M : HorizonConditioning,
      M.ConditioningIsSituated ∧
        M.HasSituatedIndependentExcess ∧
          ∃ p : M.base.Phenomenon, M.base.appears p ∧ M.Conditioned p := by
  exact ⟨mixedConditioningWitness,
    mixedConditioningWitness_coherent,
    mixedConditioningWitness_hasSituatedIndependentExcess,
    mixedConditioningWitness_hasConditionedAppearance⟩

/--
The robustness witness does not merely use `conditions` somewhere: every horizon in
its horizon domain conditions an actually appearing phenomenon (the `true` one).

This closes a stronger finite-model vacuity objection without changing the language or
adding a historical attribution.  The independent/non-exhaustible witness remains the
separate `false` phenomenon.
-/
theorem mixedConditioningWitness_every_horizon_conditions_appearing :
    ∀ h : mixedConditioningWitness.base.Horizon,
      ∃ p : mixedConditioningWitness.base.Phenomenon,
        mixedConditioningWitness.base.appears p ∧ mixedConditioningWitness.conditions p h := by
  intro h
  exact ⟨true, True.intro, rfl⟩

/--
Horizonwise-nonvacuous strengthening of the first-question pressure test: the model has
an actually appearing structured/independent/non-exhaustible phenomenon while every
horizon is also genuinely used as a conditioning horizon for some actual appearance.

This remains a model-theoretic consistency result only.  In particular, it does not
infer historical independence from the freedom of the two project relations.
-/
theorem first_question_horizonwise_nonvacuous_conditioning_profile :
    ∃ M : HorizonConditioning,
      M.ConditioningIsSituated ∧
        M.HasSituatedIndependentExcess ∧
          ∀ h : M.base.Horizon,
            ∃ p : M.base.Phenomenon, M.base.appears p ∧ M.conditions p h := by
  exact ⟨mixedConditioningWitness,
    mixedConditioningWitness_coherent,
    mixedConditioningWitness_hasSituatedIndependentExcess,
    mixedConditioningWitness_every_horizon_conditions_appearing⟩

/-- Every appearance in the mixed witness has a related horizon. -/
theorem mixedConditioningWitness_universalStructure :
    mixedConditioningWitness.base.UniversalStructure := by
  intro _ _
  exact ⟨false, True.intro⟩

/--
Reverse-check the horizonwise-nonvacuous conditioning profile against the actual B-target.
Even after requiring universal horizon structure, one-way conditioning coherence, and
real conditioning use by every horizon in the model, exhaustive closure still need not
follow.

The counterexample is the same finite witness already used above.  Thus this theorem
adds no philosophical primitive or new model; it only prevents the nonvacuity condition
from being mistaken for the missing `ClosureBridge` premise.
-/
theorem first_question_horizonwise_conditioning_does_not_force_closure :
    ∃ M : HorizonConditioning,
      M.base.UniversalStructure ∧
        M.ConditioningIsSituated ∧
          (∀ h : M.base.Horizon,
            ∃ p : M.base.Phenomenon, M.base.appears p ∧ M.conditions p h) ∧
            ¬ M.base.ClosureBridge := by
  refine ⟨mixedConditioningWitness,
    mixedConditioningWitness_universalStructure,
    mixedConditioningWitness_coherent,
    mixedConditioningWitness_every_horizon_conditions_appearing,
    ?_⟩
  intro hclosure
  obtain ⟨p, hp, hstructured, _, hnonexhaustible⟩ :=
    mixedConditioningWitness_hasSituatedIndependentExcess
  have hcaptured := hclosure p hp hstructured
  exact ((nonExhaustible_iff_not_captured mixedConditioningWitness.base p).mp
    hnonexhaustible) hcaptured

/--
The same finite witness has *maximal* relatedness on actual appearances: every horizon is
related to every appearing phenomenon.  This records explicitly that the failure of
`ClosureBridge` above is not caused by a sparse `situated` relation.
-/
theorem mixedConditioningWitness_total_relatedness :
    ∀ (p : mixedConditioningWitness.base.Phenomenon)
      (h : mixedConditioningWitness.base.Horizon),
      mixedConditioningWitness.base.appears p → mixedConditioningWitness.base.situated p h := by
  intro _ _ _
  exact True.intro

/--
A stronger reverse-check against a simple relational loophole: even when every actual
appearance is related to every horizon, every horizon genuinely conditions some actual
appearance, and conditioning is coherent with relatedness, horizon structure still does
not force exhaustive closure.

This is only a model-theoretic pressure test of the project's relation language.  It does
not attribute total relatedness, the conditioning relation, or the countermodel to either
Merleau-Ponty or Marion.
-/
theorem first_question_total_relatedness_horizonwise_conditioning_does_not_force_closure :
    ∃ M : HorizonConditioning,
      (∀ (p : M.base.Phenomenon) (h : M.base.Horizon),
        M.base.appears p → M.base.situated p h) ∧
        M.ConditioningIsSituated ∧
          (∀ h : M.base.Horizon,
            ∃ p : M.base.Phenomenon, M.base.appears p ∧ M.conditions p h) ∧
            ¬ M.base.ClosureBridge := by
  refine ⟨mixedConditioningWitness,
    mixedConditioningWitness_total_relatedness,
    mixedConditioningWitness_coherent,
    mixedConditioningWitness_every_horizon_conditions_appearing,
    ?_⟩
  intro hclosure
  obtain ⟨p, hp, hstructured, _, hnonexhaustible⟩ :=
    mixedConditioningWitness_hasSituatedIndependentExcess
  have hcaptured := hclosure p hp hstructured
  exact ((nonExhaustible_iff_not_captured mixedConditioningWitness.base p).mp
    hnonexhaustible) hcaptured

/--
Reverse-check the latest total-relatedness result against the stronger mutual-identification
baseline.  The existing `splitDependentConditioning` witness has maximal relatedness and
maximal conditioning on its actual appearance: every horizon is related and every horizon
conditions it.  Thus `situated` and `conditions` coincide in both directions, yet the two
partial horizons still fail to produce exhaustive capture.

This removes the remaining simple objection that the closure failure above depends on
one-way freedom between the two relations.  The result remains a FORMAL pressure test of
the current extensional language; it does not attribute total relatedness or mutual
identification to Merleau-Ponty or Marion.
-/
theorem first_question_total_relatedness_mutual_conditioning_does_not_force_closure :
    ∃ M : HorizonConditioning,
      (∀ (p : M.base.Phenomenon) (h : M.base.Horizon),
        M.base.appears p → M.base.situated p h) ∧
        M.ConditioningIsSituated ∧
          M.SituatedImpliesConditioning ∧
            (∀ (p : M.base.Phenomenon) (h : M.base.Horizon),
              M.base.appears p → M.conditions p h) ∧
              ¬ M.base.ClosureBridge := by
  refine ⟨splitDependentConditioning, ?_, ?_, ?_, ?_, ?_⟩
  · intro _ _ _
    exact True.intro
  · intro _ _ _
    exact True.intro
  · intro _ _ _
    exact True.intro
  · intro _ _ _
    exact True.intro
  · intro hclosure
    have hstructured : splitDependentConditioning.base.Structured () :=
      splitModel_structure () True.intro
    have hcaptured := hclosure () True.intro hstructured
    exact ((nonExhaustible_iff_not_captured splitDependentConditioning.base ()).mp
      splitDependentConditioning_nonExhaustible) hcaptured

/--
The same maximal mutual-conditioning witness also exhibits the failure positively rather
than only through `¬ ClosureBridge`: its actual phenomenon is both `Conditioned` and
`NonExhaustible` while every horizon is related to it and the two horizon relations agree
in both directions.

This is a thin pressure-test wrapper around `splitDependentConditioning`.  It adds no new
model, primitive, logical principle, or historical attribution, and it does not identify
`NonExhaustible` with Marion's full saturated-phenomenon notion.
-/
theorem first_question_total_relatedness_mutual_conditioning_has_conditioned_excess :
    ∃ M : HorizonConditioning,
      (∀ (p : M.base.Phenomenon) (h : M.base.Horizon),
        M.base.appears p → M.base.situated p h) ∧
        M.ConditioningIsSituated ∧
          M.SituatedImpliesConditioning ∧
            ∃ p : M.base.Phenomenon,
              M.base.appears p ∧ M.base.Structured p ∧
                M.Conditioned p ∧ M.base.NonExhaustible p := by
  refine ⟨splitDependentConditioning, ?_, ?_, ?_, ?_⟩
  · intro _ _ _
    exact True.intro
  · intro _ _ _
    exact True.intro
  · intro _ _ _
    exact True.intro
  · refine ⟨(), True.intro, splitModel_structure () True.intro, ?_,
      splitDependentConditioning_nonExhaustible⟩
    exact ⟨false, True.intro⟩

end FormalPhenomenology
