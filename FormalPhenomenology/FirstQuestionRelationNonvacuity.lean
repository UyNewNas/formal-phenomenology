import FormalPhenomenology.FirstQuestionNonvacuousConditioning

set_option autoImplicit false

namespace FormalPhenomenology
open Presentation HorizonConditioning

/--
A nonvacuous strengthening of the source-controlled distinction between a
horizon being *related* to an appearance and that same horizon *conditioning*
the appearance.

The witness reuses `mixedConditioningWitness`.  It removes two simple loopholes
at once: every horizon is related to every actual appearance, and every horizon
genuinely conditions some actual appearance.  Nevertheless the `false`
appearance still has a concrete related horizon which does not condition it.
Thus neither dense relatedness nor nonempty conditioning use collapses
`situated` into `conditions`.

This is a FORMAL pressure test only.  It introduces no new primitive or model
family and makes no historical attribution to Merleau-Ponty or Marion.  The
revised-primary source gate still controls whether either project relation is a
faithful historical mapping.
-/
theorem first_question_total_relatedness_nonvacuous_conditioning_still_separates_relations :
    ∃ M : HorizonConditioning,
      M.base.UniversalStructure ∧
        M.ConditioningIsSituated ∧
          (∀ (p : M.base.Phenomenon) (h : M.base.Horizon),
            M.base.appears p → M.base.situated p h) ∧
            (∀ h : M.base.Horizon,
              ∃ q : M.base.Phenomenon,
                M.base.appears q ∧ M.conditions q h) ∧
              ∃ p : M.base.Phenomenon, ∃ h : M.base.Horizon,
                M.base.appears p ∧ M.base.situated p h ∧ ¬ M.conditions p h := by
  refine ⟨mixedConditioningWitness,
    mixedConditioningWitness_universalStructure,
    mixedConditioningWitness_coherent,
    mixedConditioningWitness_total_relatedness,
    mixedConditioningWitness_every_horizon_conditions_appearing, ?_⟩
  refine ⟨false, false, True.intro, True.intro, ?_⟩
  intro hcondition
  change (false : Bool) = true at hcondition
  cases hcondition

end FormalPhenomenology
