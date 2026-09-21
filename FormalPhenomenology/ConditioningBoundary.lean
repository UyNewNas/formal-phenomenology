import FormalPhenomenology.Models.Conditioning

set_option autoImplicit false

namespace FormalPhenomenology
open Presentation HorizonConditioning

/--
A finite witness showing that even the strongest simple identification of the
current `situated` and `conditions` relations does not force exhaustive closure.

The witness reuses `splitDependentConditioning`: every horizon is related and
every horizon conditions the sole appearing phenomenon, while the underlying
split presentation is still non-exhaustible.  Thus this theorem does not obtain
its separation from the weak `Independent` predicate; in fact the same model is
already proved not independent.

This is a FORMAL pressure-test for an explicit competing encoding.  It makes no
historical claim that Merleau-Ponty or Marion identifies relatedness and
conditioning in both directions.
-/
theorem mutualSituatedConditioning_allows_situatedExcess :
    ∃ M : HorizonConditioning,
      M.base.UniversalStructure ∧
        M.ConditioningIsSituated ∧
          M.SituatedImpliesConditioning ∧
            M.base.HasSituatedExcess := by
  refine ⟨splitDependentConditioning, splitModel_structure, ?_, ?_, ?_⟩
  · intro _ _ _
    exact True.intro
  · intro _ _ _
    exact True.intro
  · exact splitModel_situatedExcess

/--
The same countermodel can be stated with a *positive* conditioning witness,
not merely with failure of `Independent`.  In `splitDependentConditioning` the
sole appearing phenomenon has a related horizon, is actually conditioned by a
horizon, and is nevertheless not exhausted by any related horizon; moreover
`situated` and `conditions` coincide extensionally in both directions.

This is a constructive pressure-test of the first question's middle notion:
"conditioned by a horizon" still does not mean "exhausted by some horizon" in
the current relation language.  No historical attribution is made.
-/
theorem mutualSituatedConditioning_allows_conditioned_situatedExcess :
    ∃ M : HorizonConditioning,
      M.base.UniversalStructure ∧
        M.ConditioningIsSituated ∧
          M.SituatedImpliesConditioning ∧
            ∃ p, M.base.appears p ∧
              M.base.Structured p ∧
                M.Conditioned p ∧
                  M.base.NonExhaustible p := by
  refine ⟨splitDependentConditioning, splitModel_structure, ?_, ?_, ?_⟩
  · intro _ _ _
    exact True.intro
  · intro _ _ _
    exact True.intro
  · refine ⟨(), True.intro, ?_, ?_, splitDependentConditioning_nonExhaustible⟩
    · exact splitModel_structure () True.intro
    · exact ⟨false, True.intro⟩

/--
Even under mutual identification of the current relatedness and conditioning
relations, actual conditioning does not force exhaustive capture.  This is the
implication-level form of `mutualSituatedConditioning_allows_conditioned_situatedExcess`.

The theorem is deliberately about the present relation language only.  In
particular it does not identify `Conditioned`, `Captured`, or `NonExhaustible`
with Marion's full saturated-phenomenon vocabulary.
-/
theorem mutualSituatedConditioning_conditioned_does_not_force_capture :
    ¬ (∀ M : HorizonConditioning,
      M.base.UniversalStructure →
        M.ConditioningIsSituated →
          M.SituatedImpliesConditioning →
            ∀ p, M.base.appears p →
              M.Conditioned p →
                M.base.Captured p) := by
  intro hall
  obtain ⟨M, hStructure, hBackward, hForward, p, hp, _, hConditioned,
      hNonExhaustible⟩ :=
    mutualSituatedConditioning_allows_conditioned_situatedExcess
  exact (nonExhaustible_iff_not_captured M.base p).mp hNonExhaustible
    (hall M hStructure hBackward hForward p hp hConditioned)

/--
Even if every conditioning horizon is situated and every situated horizon is
conditioning, universal horizon structure still does not entail the closure
bridge.  The obstruction is the already verified split presentation: two
partial horizons jointly witness structure while neither exhausts the appearing
phenomenon.

This strengthens the first question's model-theoretic guardrail without adding
a new primitive or model.  The conclusion is only about the current relation
language; it does not identify `NonExhaustible` with Marion's full saturated
phenomenon.
-/
theorem mutualSituatedConditioning_does_not_force_closure :
    ¬ (∀ M : HorizonConditioning,
      M.base.UniversalStructure →
        M.ConditioningIsSituated →
          M.SituatedImpliesConditioning →
            M.base.ClosureBridge) := by
  intro hall
  obtain ⟨M, hStructure, hBackward, hForward, hExcess⟩ :=
    mutualSituatedConditioning_allows_situatedExcess
  exact situatedExcess_refutes_closureBridge M.base hExcess
    (hall M hStructure hBackward hForward)

end FormalPhenomenology
