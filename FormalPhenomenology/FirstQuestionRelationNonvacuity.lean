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

/--
A balanced finite conditioning witness used only to close a stronger nonvacuity
loophole in the relation-separation pressure test.

It keeps the presentation layer of `mixedConditioningWitness`: both Boolean
phenomena appear, every horizon is related to every appearance, every appearance
presents both Boolean aspects, and a horizon admits exactly its matching aspect.
Conditioning is now the diagonal relation `p = h`.  Consequently every appearing
phenomenon is conditioned by some horizon and every horizon conditions some
appearing phenomenon, while off-diagonal related pairs remain genuinely
non-conditioning.

This is an elementary MODEL device, not a historical encoding claim.
-/
def balancedConditioningWitness : HorizonConditioning where
  base := mixedConditioningWitness.base
  conditions := fun p h => p = h

/-- Every conditioning edge in the balanced witness is also a related edge. -/
theorem balancedConditioningWitness_coherent :
    balancedConditioningWitness.ConditioningIsSituated := by
  intro _ _ _
  exact True.intro

/-- Every actual appearance in the balanced witness has a conditioning horizon. -/
theorem balancedConditioningWitness_every_appearance_conditioned :
    ∀ p : balancedConditioningWitness.base.Phenomenon,
      balancedConditioningWitness.base.appears p →
        balancedConditioningWitness.Conditioned p := by
  intro p _
  exact ⟨p, rfl⟩

/-- Every horizon conditions an actually appearing phenomenon. -/
theorem balancedConditioningWitness_every_horizon_used :
    ∀ h : balancedConditioningWitness.base.Horizon,
      ∃ p : balancedConditioningWitness.base.Phenomenon,
        balancedConditioningWitness.base.appears p ∧
          balancedConditioningWitness.conditions p h := by
  intro h
  exact ⟨h, True.intro, rfl⟩

/-- Relatedness remains maximal on actual appearances. -/
theorem balancedConditioningWitness_total_relatedness :
    ∀ (p : balancedConditioningWitness.base.Phenomenon)
      (h : balancedConditioningWitness.base.Horizon),
      balancedConditioningWitness.base.appears p →
        balancedConditioningWitness.base.situated p h := by
  intro _ _ _
  exact True.intro

/-- The two project relations still differ on an actual related pair. -/
theorem balancedConditioningWitness_separates_relations :
    ∃ p : balancedConditioningWitness.base.Phenomenon,
      ∃ h : balancedConditioningWitness.base.Horizon,
        balancedConditioningWitness.base.appears p ∧
          balancedConditioningWitness.base.situated p h ∧
            ¬ balancedConditioningWitness.conditions p h := by
  refine ⟨false, true, True.intro, True.intro, ?_⟩
  intro hcondition
  change (false : Bool) = true at hcondition
  cases hcondition

/-- Every appearance remains non-exhaustible despite being conditioned. -/
theorem balancedConditioningWitness_nonExhaustible
    (p : balancedConditioningWitness.base.Phenomenon) :
    balancedConditioningWitness.base.NonExhaustible p := by
  intro h _
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

/-- Exhaustive closure still fails in the balanced witness. -/
theorem balancedConditioningWitness_not_closureBridge :
    ¬ balancedConditioningWitness.base.ClosureBridge := by
  intro hclosure
  have hstructured : balancedConditioningWitness.base.Structured false :=
    ⟨false, True.intro⟩
  have hcaptured := hclosure false True.intro hstructured
  exact ((nonExhaustible_iff_not_captured balancedConditioningWitness.base false).mp
    (balancedConditioningWitness_nonExhaustible false)) hcaptured

/--
Bidirectionally nonvacuous relation-separation guardrail.

The model simultaneously has maximal relatedness on appearances, coherence of
conditioning with relatedness, a conditioning witness for every appearance, real
use of every horizon as a conditioning horizon, and an actual related pair that
is not a conditioning pair.  Closure nevertheless fails because no horizon
contains both presented aspects.

Hence the current relation language does not collapse `situated`, `conditions`,
and exhaustive capture even after removing the simple empty-fiber objections on
both sides of the conditioning relation.  This remains a FORMAL/model-theoretic
pressure test and makes no claim that either relation is already a faithful
historical reconstruction.
-/
theorem first_question_bidirectionally_nonvacuous_conditioning_still_separates_relations :
    ∃ M : HorizonConditioning,
      (∀ (p : M.base.Phenomenon) (h : M.base.Horizon),
        M.base.appears p → M.base.situated p h) ∧
        M.ConditioningIsSituated ∧
          (∀ p : M.base.Phenomenon,
            M.base.appears p → M.Conditioned p) ∧
            (∀ h : M.base.Horizon,
              ∃ p : M.base.Phenomenon,
                M.base.appears p ∧ M.conditions p h) ∧
              (∃ p : M.base.Phenomenon, ∃ h : M.base.Horizon,
                M.base.appears p ∧ M.base.situated p h ∧ ¬ M.conditions p h) ∧
                ¬ M.base.ClosureBridge := by
  exact ⟨balancedConditioningWitness,
    balancedConditioningWitness_total_relatedness,
    balancedConditioningWitness_coherent,
    balancedConditioningWitness_every_appearance_conditioned,
    balancedConditioningWitness_every_horizon_used,
    balancedConditioningWitness_separates_relations,
    balancedConditioningWitness_not_closureBridge⟩

end FormalPhenomenology
