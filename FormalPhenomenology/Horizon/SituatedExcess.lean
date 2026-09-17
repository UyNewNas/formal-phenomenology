import FormalPhenomenology.Horizon.Separation

set_option autoImplicit false

namespace FormalPhenomenology
open Presentation

namespace Presentation

/--
A non-vacuous excess profile: an actually appearing phenomenon both has a
situated horizon and is not exhausted by any situated horizon in the model.

This is still a model predicate, not a definition of Marion's saturated
phenomenon and not an attribution to Merleau-Ponty.
-/
def HasSituatedExcess (M : Presentation) : Prop :=
  ∃ p, M.appears p ∧ M.Structured p ∧ M.NonExhaustible p

end Presentation

/-- Situated excess implies the weaker excess predicate. -/
theorem hasSituatedExcess_implies_excess (M : Presentation)
    (hs : M.HasSituatedExcess) : M.HasExcess := by
  obtain ⟨p, hp, _, hn⟩ := hs
  exact ⟨p, hp, hn⟩

/-- Universal horizon structure turns any excess witness into a situated one. -/
theorem structure_and_excess_implies_situatedExcess (M : Presentation)
    (ha : M.UniversalStructure) (hc : M.HasExcess) : M.HasSituatedExcess := by
  obtain ⟨p, hp, hn⟩ := hc
  exact ⟨p, hp, ha p hp, hn⟩

/--
One actually situated, non-exhaustible appearance is already enough to reject
ClosureBridge. UniversalStructure is not needed for this stronger witness.
-/
theorem situatedExcess_refutes_closureBridge (M : Presentation)
    (hs : M.HasSituatedExcess) : ¬ M.ClosureBridge := by
  intro hb
  obtain ⟨p, hp, hstruct, hn⟩ := hs
  exact (nonExhaustible_iff_not_captured M p).mp hn (hb p hp hstruct)

/-- Universal capture is incompatible with a situated excess witness. -/
theorem situatedExcess_refutes_universalCapture (M : Presentation)
    (hs : M.HasSituatedExcess) : ¬ M.UniversalCapture := by
  intro hu
  obtain ⟨p, hp, _, hn⟩ := hs
  exact (nonExhaustible_iff_not_captured M p).mp hn (hu p hp)

end FormalPhenomenology
