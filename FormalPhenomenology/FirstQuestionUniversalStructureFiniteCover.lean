import FormalPhenomenology.FirstQuestionFiniteFamily
import FormalPhenomenology.FirstQuestionStructureNormalization

set_option autoImplicit false

namespace FormalPhenomenology
open Presentation

/--
Under `UniversalStructure`, the explicit `Structured p` conjunct in the project-level
finite-cover normal form for `HasSituatedExcess` is redundant: actual appearance already
supplies a related horizon.  Thus the same counterexample notion can be stated using only
an appearing witness plus the finite-cover/common-dominator obstruction.

This is a FORMAL quantifier normalization of existing results.  It introduces no new
semantic primitive, model, classical principle, or historical attribution.  In particular,
a finite `List Horizon` remains merely a finite list of named horizons in the current
extensional language, not Marion's stronger historical notion of a semantic "combination
of horizons".
-/
theorem first_question_universalStructure_hasSituatedExcess_iff_exists_finite_cover_obstruction
    (M : Presentation) (hstructure : M.UniversalStructure) :
    M.HasSituatedExcess ↔
      ∃ p, M.appears p ∧
        ∀ hs : List M.Horizon,
          (∀ a, M.presents p a →
            ∃ h, h ∈ hs ∧ M.situated p h ∧ M.admits h a) →
          ¬ ∃ hStar, M.situated p hStar ∧
            ∀ h, h ∈ hs → ∀ a, M.admits h a → M.admits hStar a := by
  constructor
  · rintro ⟨p, happ, _, hnonExhaustible⟩
    exact ⟨p, happ,
      (first_question_nonExhaustible_iff_every_finite_cover_has_no_dominator M p).1
        hnonExhaustible⟩
  · rintro ⟨p, happ, hObstruction⟩
    exact ⟨p, happ, hstructure p happ,
      (first_question_nonExhaustible_iff_every_finite_cover_has_no_dominator M p).2
        hObstruction⟩

/--
Exact constructive finite-cover normal form for the first question once
`UniversalStructure` is fixed.

The positive `ClosureBridge` is equivalent to two independent ingredients on actual
appearances:

1. there is no phenomenon witnessing the finite-cover/common-dominator obstruction; and
2. `Captured` is double-negation stable on the actual-appearance domain.

This theorem only composes the already audited `HasSituatedExcess` finite-cover normal
form with the already audited constructive closure/stability boundary.  It adds no new
notion of horizon combination, no classical principle, and no historical attribution.
The finite list below therefore remains an extensional family of named horizons rather
than an encoding of Marion's semantic phrase "combination of horizons".
-/
theorem first_question_universalStructure_closureBridge_iff_no_finite_cover_obstruction_and_stability
    (M : Presentation) (hstructure : M.UniversalStructure) :
    M.ClosureBridge ↔
      (¬ ∃ p, M.appears p ∧
        ∀ hs : List M.Horizon,
          (∀ a, M.presents p a →
            ∃ h, h ∈ hs ∧ M.situated p h ∧ M.admits h a) →
          ¬ ∃ hStar, M.situated p hStar ∧
            ∀ h, h ∈ hs → ∀ a, M.admits h a → M.admits hStar a) ∧
      (∀ p, M.appears p → (¬ ¬ M.Captured p → M.Captured p)) := by
  constructor
  · intro hClosure
    have hBoundary :=
      (first_question_universalStructure_closureBridge_iff_no_situatedExcess_and_stability
        M hstructure).1 hClosure
    refine ⟨?_, hBoundary.2⟩
    intro hObstruction
    exact hBoundary.1
      ((first_question_universalStructure_hasSituatedExcess_iff_exists_finite_cover_obstruction
        M hstructure).2 hObstruction)
  · rintro ⟨hNoObstruction, hStable⟩
    apply
      (first_question_universalStructure_closureBridge_iff_no_situatedExcess_and_stability
        M hstructure).2
    refine ⟨?_, hStable⟩
    intro hExcess
    exact hNoObstruction
      ((first_question_universalStructure_hasSituatedExcess_iff_exists_finite_cover_obstruction
        M hstructure).1 hExcess)

end FormalPhenomenology
