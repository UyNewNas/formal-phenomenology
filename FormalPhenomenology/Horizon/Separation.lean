import FormalPhenomenology.Horizon.Basic

set_option autoImplicit false

namespace FormalPhenomenology
open Presentation

theorem captured_implies_structured (M : Presentation) (p : M.Phenomenon)
    (hc : M.Captured p) : M.Structured p := by
  obtain ⟨h, hs, _⟩ := hc
  exact ⟨h, hs⟩

theorem nonExhaustible_iff_not_captured (M : Presentation) (p : M.Phenomenon) :
    M.NonExhaustible p ↔ ¬ M.Captured p := by
  constructor
  · intro hn hc
    obtain ⟨h, hs, he⟩ := hc
    exact hn h hs he
  · intro hn h hs he
    exact hn ⟨h, hs, he⟩

theorem captured_implies_individuallyCoverable
    (M : Presentation) (p : M.Phenomenon) (hc : M.Captured p) :
    M.IndividuallyCoverable p := by
  obtain ⟨h, hs, he⟩ := hc
  intro a ha
  exact ⟨h, hs, he a ha⟩

theorem universalCapture_iff_structure_and_bridge (M : Presentation) :
    M.UniversalCapture ↔ M.UniversalStructure ∧ M.ClosureBridge := by
  constructor
  · intro hc
    constructor
    · intro p hp
      exact captured_implies_structured M p (hc p hp)
    · intro p hp _
      exact hc p hp
  · intro hab p hp
    exact hab.2 p hp (hab.1 p hp)

/-- The three named principles cannot hold together. -/
theorem structure_bridge_excess_inconsistent (M : Presentation)
    (ha : M.UniversalStructure) (hb : M.ClosureBridge) (hc : M.HasExcess) :
    False := by
  obtain ⟨p, hp, hn⟩ := hc
  exact (nonExhaustible_iff_not_captured M p).mp hn (hb p hp (ha p hp))

theorem universalCapture_excludes_excess (M : Presentation)
    (hu : M.UniversalCapture) : ¬ M.HasExcess := by
  intro hc
  obtain ⟨ha, hb⟩ := (universalCapture_iff_structure_and_bridge M).mp hu
  exact structure_bridge_excess_inconsistent M ha hb hc

theorem structure_excludes_horizonless (M : Presentation)
    (ha : M.UniversalStructure) : ¬ M.HasHorizonlessAppearance := by
  intro hx
  obtain ⟨p, hp, hn⟩ := hx
  exact hn (ha p hp)

/-- Explicitly exposes the vacuity of NonExhaustible without a situated horizon. -/
theorem horizonless_implies_excess (M : Presentation)
    (hx : M.HasHorizonlessAppearance) : M.HasExcess := by
  obtain ⟨p, hp, hn⟩ := hx
  refine ⟨p, hp, ?_⟩
  intro h hs _
  exact hn ⟨h, hs⟩

theorem structure_excess_has_situated_witness (M : Presentation)
    (ha : M.UniversalStructure) (hc : M.HasExcess) :
    ∃ p, M.appears p ∧ M.Structured p ∧ M.NonExhaustible p := by
  obtain ⟨p, hp, hn⟩ := hc
  exact ⟨p, hp, ha p hp, hn⟩

end FormalPhenomenology
