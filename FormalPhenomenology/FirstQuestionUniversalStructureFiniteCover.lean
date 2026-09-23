import FormalPhenomenology.FirstQuestionFiniteFamily

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

end FormalPhenomenology
