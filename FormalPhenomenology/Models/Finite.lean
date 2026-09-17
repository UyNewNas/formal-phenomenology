import FormalPhenomenology.Horizon.SituatedExcess

set_option autoImplicit false

namespace FormalPhenomenology
open Presentation

/-- Two aspects, two partial horizons, and an actually appearing phenomenon. -/
def splitModel : Presentation where
  Phenomenon := Unit
  Horizon := Bool
  Aspect := Bool
  appears := fun _ => True
  situated := fun _ _ => True
  presents := fun _ _ => True
  admits := fun h a => a = h

theorem splitModel_structure : splitModel.UniversalStructure := by
  intro _ _
  exact ⟨false, True.intro⟩

theorem splitModel_excess : splitModel.HasExcess := by
  refine ⟨(), True.intro, ?_⟩
  intro h _ he
  cases h with
  | false =>
    have bad : true = false := he true True.intro
    cases bad
  | true =>
    have bad : false = true := he false True.intro
    cases bad

theorem splitModel_situatedExcess : splitModel.HasSituatedExcess := by
  exact structure_and_excess_implies_situatedExcess
    splitModel splitModel_structure splitModel_excess

theorem splitModel_individual : splitModel.IndividuallyCoverable () := by
  intro a _
  exact ⟨a, True.intro, rfl⟩

/-- Every aspect is admitted by the only horizon. -/
def closedModel : Presentation where
  Phenomenon := Unit
  Horizon := Unit
  Aspect := Unit
  appears := fun _ => True
  situated := fun _ _ => True
  presents := fun _ _ => True
  admits := fun _ _ => True

theorem closedModel_capture : closedModel.UniversalCapture := by
  intro _ _
  exact ⟨(), True.intro, fun _ _ => True.intro⟩

/-- All three sorts are nonempty, but no phenomenon is situated. -/
def unsituatedModel : Presentation where
  Phenomenon := Unit
  Horizon := Unit
  Aspect := Unit
  appears := fun _ => True
  situated := fun _ _ => False
  presents := fun _ _ => True
  admits := fun _ _ => True

theorem unsituatedModel_bridge : unsituatedModel.ClosureBridge := by
  intro _ _ hs
  obtain ⟨_, hf⟩ := hs
  exact False.elim hf

theorem unsituatedModel_horizonless : unsituatedModel.HasHorizonlessAppearance := by
  refine ⟨(), True.intro, ?_⟩
  intro hs
  obtain ⟨_, hf⟩ := hs
  exact hf

/-- Minimality is relative to the three displayed principles, not all possible theories. -/
theorem minimal_conflict :
    (∀ M : Presentation,
      ¬ (M.UniversalStructure ∧ M.ClosureBridge ∧ M.HasExcess)) ∧
    (∃ M : Presentation, M.UniversalStructure ∧ M.ClosureBridge) ∧
    (∃ M : Presentation, M.UniversalStructure ∧ M.HasExcess) ∧
    (∃ M : Presentation, M.ClosureBridge ∧ M.HasExcess) := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · intro M hs
    exact structure_bridge_excess_inconsistent M hs.1 hs.2.1 hs.2.2
  · exact ⟨closedModel,
      (universalCapture_iff_structure_and_bridge closedModel).mp closedModel_capture⟩
  · exact ⟨splitModel, splitModel_structure, splitModel_excess⟩
  · exact ⟨unsituatedModel, unsituatedModel_bridge,
      horizonless_implies_excess unsituatedModel unsituatedModel_horizonless⟩

/-- Even a finite two-aspect model refutes exchanging these quantifiers. -/
theorem individual_cover_does_not_imply_capture :
    ¬ (∀ (M : Presentation) (p : M.Phenomenon),
      M.IndividuallyCoverable p → M.Captured p) := by
  intro h
  obtain ⟨p, _, hn⟩ := splitModel_excess
  cases p
  exact (nonExhaustible_iff_not_captured splitModel ()).mp hn
    (h splitModel () splitModel_individual)

/--
The first research question, stated model-theoretically: universal horizon
structure alone does not entail the closure bridge. The split model is a
finite counterexample with an actually situated excess witness.
-/
theorem horizon_structure_does_not_entail_closure :
    ¬ (∀ M : Presentation, M.UniversalStructure → M.ClosureBridge) := by
  intro h
  exact situatedExcess_refutes_closureBridge splitModel splitModel_situatedExcess
    (h splitModel splitModel_structure)

/--
Non-exhaustibility need not be produced by a horizonless appearance. This
finite witness has situated excess and no horizonless appearing phenomenon.
-/
theorem situated_excess_need_not_be_horizonless :
    ∃ M : Presentation, M.HasSituatedExcess ∧ ¬ M.HasHorizonlessAppearance := by
  exact ⟨splitModel, splitModel_situatedExcess,
    structure_excludes_horizonless splitModel splitModel_structure⟩

end FormalPhenomenology
