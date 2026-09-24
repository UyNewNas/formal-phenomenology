import FormalPhenomenology.FirstQuestionPerHorizonConditioning
import FormalPhenomenology.Models.Conditioning

set_option autoImplicit false

namespace FormalPhenomenology
open Presentation HorizonConditioning

/--
The converse local guardrail to the existing conditioning-without-exhaustion witness.

Even for an actually appearing, already structured phenomenon and a horizon that is
related to it, that horizon's being exhaustive does not by itself imply that the same
horizon is marked as conditioning.  The existing `displacedCaptureConditioning`
model witnesses the separation: the `false` horizon is related and exhaustive, while
conditioning is carried by the distinct `true` horizon.

This is a FORMAL separation in the current relation language.  It does not claim that
a historical phenomenological notion of horizon-conditioning is exhausted by the
`conditions` relation, and it does not identify exhaustive aspect coverage with a
full theory of saturation.
-/
theorem first_question_appearing_structured_related_exhaustive_does_not_force_horizon_conditioning :
    ¬ (∀ (M : HorizonConditioning) (p : M.base.Phenomenon) (h : M.base.Horizon),
      M.base.appears p →
        M.base.Structured p →
          M.base.situated p h →
            M.base.Exhausts p h →
              M.conditions p h) := by
  intro hbridge
  have he : displacedCaptureConditioning.base.Exhausts () false := by
    intro a _
    cases a
    rfl
  have hc : displacedCaptureConditioning.conditions () false :=
    hbridge displacedCaptureConditioning () false True.intro
      ⟨false, True.intro⟩ True.intro he
  cases hc

end FormalPhenomenology
