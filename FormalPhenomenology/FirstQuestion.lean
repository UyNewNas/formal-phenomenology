import FormalPhenomenology.ConstructiveBridge

set_option autoImplicit false

namespace FormalPhenomenology
open Presentation HorizonConditioning

/--
A single formal entry point for the first research question.

The first conjunct records the negative answer to the bare horizon question:
having a horizon structure for every appearing phenomenon does not, by itself,
entail an exhaustive-capture bridge.

The second conjunct records the exact condition for the conditioning variant on
the domain actually mentioned by the question: weak `Independent` in this model
means absence of a `conditions` witness (not horizonlessness and not full
saturation), and it entails non-exhaustibility for every appearing phenomenon
exactly when there is no appearing phenomenon that is both captured and
`Independent` in that weak sense.

This theorem introduces no new philosophical primitive and makes no historical
attribution.  It only packages two already verified FORMAL results so the first
question has one kernel-checked main statement while the remaining primary-text
gate stays separate.
-/
theorem first_question_formal_answer :
    (¬ (∀ M : Presentation, M.UniversalStructure → M.ClosureBridge)) ∧
      (∀ M : HorizonConditioning,
        (∀ p, M.base.appears p → M.Independent p → M.base.NonExhaustible p) ↔
          ¬ ∃ p, M.base.appears p ∧ M.base.Captured p ∧ M.Independent p) := by
  constructor
  · exact horizon_structure_does_not_entail_closure
  · intro M
    exact appearing_independence_implies_nonExhaustible_iff_no_captured_independent_witness M

/--
The constructive boundary behind the conditioning half of the first question.

Producing an actual conditioning-horizon witness for every appearing captured
phenomenon is exactly the conjunction of the already identified conflict
exclusion and double-negation stability of `Conditioned` on that same
appearing/captured domain.  This is a FORMAL proof-theoretic packaging theorem;
it makes no claim that historical phenomenology supplies such stability.
-/
theorem first_question_witness_boundary (M : HorizonConditioning) :
    (∀ p, M.base.appears p → M.base.Captured p → M.Conditioned p) ↔
      ((∀ p, M.base.appears p → M.base.Captured p → ¬ M.Independent p) ∧
       (∀ p, M.base.appears p → M.base.Captured p →
         (¬ ¬ M.Conditioned p → M.Conditioned p))) := by
  exact appearing_witness_bridge_iff_exact_and_captured_stability M

/--
A project-level compatibility witness for the interpretive boundary used by the
first question.

There is a model in which conditioning horizons, when present, are required to
be related horizons, while an actually appearing phenomenon still has a related
horizon, is weakly `Independent` in the `conditions`-relation sense, and is not
exhausted by any related horizon.  This is only a thin re-export of the already
verified finite-model theorem.  It does not identify this profile with
horizonlessness or Marion's full saturated phenomenon and makes no historical
attribution.
-/
theorem first_question_compatibility_witness :
    ∃ M : HorizonConditioning,
      M.ConditioningIsSituated ∧ M.HasSituatedIndependentExcess := by
  exact related_independent_nonExhaustible_are_jointly_consistent

/--
A concrete witness for the bare first-question separation.

The finite `splitModel` contains an actually appearing phenomenon that has a
related horizon and is nevertheless not exhausted by any related horizon.  This
is a thin project-level re-export of `splitModel_situatedExcess`: it introduces
no new model, primitive, logical principle, or historical attribution.  Its
purpose is only to make the existential countermodel corresponding to the
negative implication available as an explicit first-question entry point.
-/
theorem first_question_situated_nonExhaustible_witness :
    ∃ M : Presentation, M.HasSituatedExcess := by
  exact ⟨splitModel, splitModel_situatedExcess⟩

/--
A semantic guardrail for reading `NonExhaustible` in the first-question model.

The same actually appearing witness has at least one situated horizon, is not
exhausted by any single situated horizon, and still has every encoded aspect
covered by some situated horizon that may depend on the aspect.  Retaining the
`Structured p` conjunct here makes the first-question counterexample explicit:
being in a horizon does not by itself imply that some one horizon exhausts the
phenomenon.

This is a thin re-use of the already verified split-model facts, not a new
historical claim and not a formalization of Marion's stronger language about
one, several, or combinations of horizons.  It exists to prevent the weak
single-horizon predicate from being over-read as that stronger thesis.
-/
theorem first_question_nonExhaustible_allows_aspectwise_horizon_cover :
    ∃ M : Presentation, ∃ p : M.Phenomenon,
      M.appears p ∧ M.Structured p ∧ M.NonExhaustible p ∧ M.IndividuallyCoverable p := by
  obtain ⟨p, hp, hs, hn⟩ := splitModel_situatedExcess
  refine ⟨splitModel, p, hp, hs, hn, ?_⟩
  cases p
  exact splitModel_individual

/--
The exact quantifier-order guardrail needed when the first question speaks of
"one horizon" versus horizons that may vary with the aspect.

A single exhaustive related horizon always gives aspectwise cover.  The converse
fails already for an actually appearing phenomenon: the existing split-model
witness is aspectwise coverable but no one related horizon captures it.

This is a FORMAL consequence of the current aspect language only.  It does not
identify either side with Marion's one/several/combined-horizon taxonomy and
introduces no new historical primitive.
-/
theorem first_question_aspectwise_cover_is_strictly_weaker_than_capture :
    (∀ (M : Presentation) (p : M.Phenomenon),
      M.Captured p → M.IndividuallyCoverable p) ∧
      (∃ M : Presentation, ∃ p : M.Phenomenon,
        M.appears p ∧ M.IndividuallyCoverable p ∧ ¬ M.Captured p) := by
  constructor
  · intro M p hc
    exact captured_implies_individuallyCoverable M p hc
  · obtain ⟨M, p, hp, _, hn, hi⟩ :=
      first_question_nonExhaustible_allows_aspectwise_horizon_cover
    exact ⟨M, p, hp, hi, (nonExhaustible_iff_not_captured M p).mp hn⟩

/--
A finite-family guardrail stronger than bare aspectwise cover.

The existing split model has two distinct related horizons.  No single related
horizon exhausts its appearing phenomenon, while those two fixed horizons
together cover every encoded aspect.  This remains deliberately weaker than a
formal "combination of horizons" operation: the disjunction below only says
that each aspect is admitted by one of the two named horizons.

The theorem is therefore a model-scope clarification of the current relation
language, not an attribution of Marion's stronger one/multiple/combined-horizon
taxonomy and not a new philosophical primitive.
-/
theorem first_question_two_horizons_can_cover_without_single_horizon_capture :
    ∃ M : Presentation, ∃ p : M.Phenomenon, ∃ h₀ h₁ : M.Horizon,
      h₀ ≠ h₁ ∧ M.appears p ∧ M.situated p h₀ ∧ M.situated p h₁ ∧
        M.NonExhaustible p ∧
        ∀ a, M.presents p a → (M.admits h₀ a ∨ M.admits h₁ a) := by
  refine ⟨splitModel, (), false, true, ?_, True.intro, True.intro, True.intro, ?_, ?_⟩
  · intro h
    cases h
  · obtain ⟨p, _, hn⟩ := splitModel_excess
    cases p
    exact hn
  · intro a _
    cases a
    · exact Or.inl rfl
    · exact Or.inr rfl

/--
The fixed-pair cover relation induced by the existing language is strictly
weaker than single-horizon capture.

For the forward direction, a captured phenomenon supplies one exhaustive
related horizon; using that same horizon twice gives a fixed pair whose
disjunctive coverage reaches every encoded aspect.  The converse fails in the
already verified split model, where two distinct related horizons jointly cover
every aspect while the appearing phenomenon remains `NonExhaustible`.

This theorem introduces no horizon-combination operator: repeated horizons are
allowed in the forward implication, while the counterexample happens to have a
distinct pair.  It is a quantifier/finitary-cover guardrail only and makes no
historical attribution to Marion's stronger multiple/combined-horizon taxonomy.
-/
theorem first_question_fixed_pair_cover_is_strictly_weaker_than_capture :
    (∀ (M : Presentation) (p : M.Phenomenon),
      M.Captured p →
        ∃ h₀ h₁ : M.Horizon,
          M.situated p h₀ ∧ M.situated p h₁ ∧
            ∀ a, M.presents p a → (M.admits h₀ a ∨ M.admits h₁ a)) ∧
      (∃ M : Presentation, ∃ p : M.Phenomenon, ∃ h₀ h₁ : M.Horizon,
        h₀ ≠ h₁ ∧ M.appears p ∧ M.situated p h₀ ∧ M.situated p h₁ ∧
          M.NonExhaustible p ∧
          ∀ a, M.presents p a → (M.admits h₀ a ∨ M.admits h₁ a)) := by
  constructor
  · intro M p hc
    rcases hc with ⟨h, hs, he⟩
    refine ⟨h, h, hs, hs, ?_⟩
    intro a ha
    exact Or.inl (he a ha)
  · exact first_question_two_horizons_can_cover_without_single_horizon_capture

/--
One kernel target collecting the complete *narrow formal* answer currently
needed for the first research question.

It combines nine independently verified facts without strengthening their
interpretation: bare horizon structure does not entail exhaustive closure; an
explicit situated/non-exhaustible finite witness exists; the same appearing
witness may have a situated horizon and fail single-horizon exhaustion even
while every encoded aspect is covered by some horizon; two fixed distinct
related horizons may jointly cover every encoded aspect while no single related
horizon captures the phenomenon; fixed-pair cover is itself strictly weaker
than single-horizon capture in the current relation language; there is also an
actually appearing structured witness that is weakly conditioning-independent
and nevertheless captured; the exact appearing-domain condition for
`Independent → NonExhaustible` is absence of such a captured-independent
witness; producing an actual conditioning witness requires exactly that
exclusion plus captured-domain double-negation stability; and the weak related /
independent / non-exhaustible profile is jointly consistent.

The aspectwise-cover and fixed-pair conjuncts are interpretation guardrails, not
models of Marion's stronger one/multiple/combined-horizon taxonomy. They record
only quantifier distinctions between one horizon covering every encoded aspect,
horizons varying with the aspect, and one fixed pair whose disjunctive coverage
reaches every aspect.

The explicit `Captured ∧ Independent` witness is important for scope: the
repository's `Independent` predicate means only that no horizon is marked by the
separate `conditions` relation.  It is therefore weaker than historical phrases
such as "does not depend on a horizon" when those phrases already carry a
substantive claim of freedom from horizon-imposed limitation.  Keeping the
witness inside the `appears` and `Structured` domain prevents a weaker global
counterexample from obscuring the quantifiers of the research question.

This is deliberately an aggregation theorem.  The existential conjuncts are
only already verified finite-model witnesses, and the fixed-pair strictness
conjunct is exactly
`first_question_fixed_pair_cover_is_strictly_weaker_than_capture`; it adds no
philosophical primitive, no classical axiom, and no attribution to Merleau-Ponty
or Marion.  The historical/source gate therefore remains separate from this
formal target.
-/
theorem first_question_complete_formal_answer :
    (¬ (∀ M : Presentation, M.UniversalStructure → M.ClosureBridge)) ∧
      (∃ M : Presentation, M.HasSituatedExcess) ∧
      (∃ M : Presentation, ∃ p : M.Phenomenon,
        M.appears p ∧ M.Structured p ∧ M.NonExhaustible p ∧ M.IndividuallyCoverable p) ∧
      (∃ M : Presentation, ∃ p : M.Phenomenon, ∃ h₀ h₁ : M.Horizon,
        h₀ ≠ h₁ ∧ M.appears p ∧ M.situated p h₀ ∧ M.situated p h₁ ∧
          M.NonExhaustible p ∧
          ∀ a, M.presents p a → (M.admits h₀ a ∨ M.admits h₁ a)) ∧
      ((∀ (M : Presentation) (p : M.Phenomenon),
        M.Captured p →
          ∃ h₀ h₁ : M.Horizon,
            M.situated p h₀ ∧ M.situated p h₁ ∧
              ∀ a, M.presents p a → (M.admits h₀ a ∨ M.admits h₁ a)) ∧
        (∃ M : Presentation, ∃ p : M.Phenomenon, ∃ h₀ h₁ : M.Horizon,
          h₀ ≠ h₁ ∧ M.appears p ∧ M.situated p h₀ ∧ M.situated p h₁ ∧
            M.NonExhaustible p ∧
            ∀ a, M.presents p a → (M.admits h₀ a ∨ M.admits h₁ a))) ∧
      (∃ M : HorizonConditioning, ∃ p : M.base.Phenomenon,
        M.base.appears p ∧ M.base.Structured p ∧
          M.Independent p ∧ M.base.Captured p) ∧
      (∀ M : HorizonConditioning,
        (∀ p, M.base.appears p → M.Independent p → M.base.NonExhaustible p) ↔
          ¬ ∃ p, M.base.appears p ∧ M.base.Captured p ∧ M.Independent p) ∧
      (∀ M : HorizonConditioning,
        (∀ p, M.base.appears p → M.base.Captured p → M.Conditioned p) ↔
          ((∀ p, M.base.appears p → M.base.Captured p → ¬ M.Independent p) ∧
           (∀ p, M.base.appears p → M.base.Captured p →
             (¬ ¬ M.Conditioned p → M.Conditioned p)))) ∧
      (∃ M : HorizonConditioning,
        M.ConditioningIsSituated ∧ M.HasSituatedIndependentExcess) := by
  constructor
  · exact first_question_formal_answer.1
  constructor
  · exact first_question_situated_nonExhaustible_witness
  constructor
  · exact first_question_nonExhaustible_allows_aspectwise_horizon_cover
  constructor
  · exact first_question_two_horizons_can_cover_without_single_horizon_capture
  constructor
  · exact first_question_fixed_pair_cover_is_strictly_weaker_than_capture
  constructor
  · exact related_independent_captured_are_jointly_consistent
  constructor
  · exact first_question_formal_answer.2
  constructor
  · intro M
    exact first_question_witness_boundary M
  · exact first_question_compatibility_witness

end FormalPhenomenology
