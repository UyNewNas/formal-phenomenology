import FormalPhenomenology.Horizon.SituatedExcess

set_option autoImplicit false

namespace FormalPhenomenology
open Presentation

/--
A second layer for asking whether a horizon *conditions* a phenomenon.

`base.situated p h` says only that `h` is a horizon relevant to the appearing
of `p` in the base presentation.  `conditions p h` is deliberately distinct:
it marks a horizon as a prior condition or constraint on the phenomenality of
`p`.  The distinction is interpretive infrastructure, not a definition of
Marion's saturated phenomenon.
-/
structure HorizonConditioning where
  base : Presentation
  conditions : (p : base.Phenomenon) → base.Horizon → Prop

namespace HorizonConditioning

/-- Some admitted horizon conditions the phenomenon. -/
def Conditioned (M : HorizonConditioning) (p : M.base.Phenomenon) : Prop :=
  ∃ h, M.conditions p h

/-- No admitted horizon conditions the phenomenon. -/
def Independent (M : HorizonConditioning) (p : M.base.Phenomenon) : Prop :=
  ∀ h, ¬ M.conditions p h

/--
A coherence condition for readings where only horizons already related to the
phenomenon are eligible to condition it.
-/
def ConditioningIsSituated (M : HorizonConditioning) : Prop :=
  ∀ p h, M.conditions p h → M.base.situated p h

/--
A pressure-test bridge: if a horizon is related to a phenomenon and exhausts
all of its encoded aspects, then that horizon counts as conditioning the
phenomenon.  This is deliberately an explicit hypothesis, not an attribution
to Marion or Merleau-Ponty.
-/
def ExhaustiveCaptureConditions (M : HorizonConditioning) : Prop :=
  ∀ p h, M.base.situated p h → M.base.Exhausts p h → M.conditions p h

/--
There is an appearing phenomenon which has a related horizon but is independent
of every horizon admitted as a conditioning relation.
-/
def HasStructuredIndependentAppearance (M : HorizonConditioning) : Prop :=
  ∃ p, M.base.appears p ∧ M.base.Structured p ∧ M.Independent p

/--
A neutral compatibility profile combining all three axes used in the first
research question: the phenomenon has a related horizon, is independent of
horizons as conditioning relations, and is not exhausted by any related
horizon.

This is deliberately *not* named `Saturated`: it is a model-theoretic profile,
not a definition or attribution of Marion's saturated phenomenon.
-/
def HasSituatedIndependentExcess (M : HorizonConditioning) : Prop :=
  ∃ p,
    M.base.appears p ∧ M.base.Structured p ∧ M.Independent p ∧
      M.base.NonExhaustible p

end HorizonConditioning

/-- Horizon independence is exactly the negation of existential conditioning. -/
theorem horizonIndependent_iff_not_conditioned
    (M : HorizonConditioning) (p : M.base.Phenomenon) :
    M.Independent p ↔ ¬ M.Conditioned p := by
  constructor
  · intro hi hc
    obtain ⟨h, hh⟩ := hc
    exact hi h hh
  · intro hn h hh
    exact hn ⟨h, hh⟩

/-- Under the coherence condition, being conditioned entails having a related horizon. -/
theorem conditioningIsSituated_conditioned_implies_structured
    (M : HorizonConditioning) (hc : M.ConditioningIsSituated)
    (p : M.base.Phenomenon) (hp : M.Conditioned p) : M.base.Structured p := by
  obtain ⟨h, hh⟩ := hp
  exact ⟨h, hc p h hh⟩

/-- Under the same coherence condition, a horizonless phenomenon is independent. -/
theorem conditioningIsSituated_notStructured_implies_independent
    (M : HorizonConditioning) (hc : M.ConditioningIsSituated)
    (p : M.base.Phenomenon) (hn : ¬ M.base.Structured p) : M.Independent p := by
  intro h hh
  exact hn ⟨h, hc p h hh⟩

/--
With the exhaustive-capture bridge made explicit, independence does imply
non-exhaustibility.  The proof isolates exactly the premise missing from the
otherwise invalid implication.
-/
theorem exhaustiveCaptureConditions_independent_implies_nonExhaustible
    (M : HorizonConditioning) (hb : M.ExhaustiveCaptureConditions)
    (p : M.base.Phenomenon) (hi : M.Independent p) :
    M.base.NonExhaustible p := by
  intro h hs he
  exact hi h (hb p h hs he)

/--
At one fixed phenomenon, the exact logical condition needed to turn horizon
independence into non-exhaustibility is simply that capture excludes
independence there.  This theorem does not add a philosophical bridge: it
normalizes the target implication using `NonExhaustible p ↔ ¬ Captured p`.

`ExhaustiveCaptureConditions` is one sufficient structural mechanism for this
pointwise incompatibility, but it is stronger than the right-hand side below
and remains a separate interpretive question.
-/
theorem independent_implies_nonExhaustible_iff_capture_refutes_independence
    (M : HorizonConditioning) (p : M.base.Phenomenon) :
    (M.Independent p → M.base.NonExhaustible p) ↔
      (M.base.Captured p → ¬ M.Independent p) := by
  constructor
  · intro h hc hi
    exact (nonExhaustible_iff_not_captured M.base p).mp (h hi) hc
  · intro h hi
    exact (nonExhaustible_iff_not_captured M.base p).mpr (fun hc => h hc hi)

/--
A captured phenomenon that is nevertheless horizon-independent refutes the
exhaustive-capture bridge.  This is the pointwise dual of the previous theorem:
it records the bridge failure at the exact witness where capture and
independence coexist, without identifying `Captured` with Marion's phrase
"saturates a horizon".
-/
theorem captured_independent_refutes_exhaustiveCaptureConditions
    (M : HorizonConditioning) (p : M.base.Phenomenon)
    (hc : M.base.Captured p) (hi : M.Independent p) :
    ¬ M.ExhaustiveCaptureConditions := by
  intro hb
  obtain ⟨h, hs, he⟩ := hc
  exact hi h (hb p h hs he)

/--
An appearing structured-independent witness becomes a non-vacuous situated
excess witness under the same explicit bridge.
-/
theorem exhaustiveCaptureConditions_structuredIndependent_implies_situatedExcess
    (M : HorizonConditioning) (hb : M.ExhaustiveCaptureConditions)
    (hs : M.HasStructuredIndependentAppearance) :
    M.base.HasSituatedExcess := by
  obtain ⟨p, hp, hstruct, hi⟩ := hs
  exact ⟨p, hp, hstruct,
    exhaustiveCaptureConditions_independent_implies_nonExhaustible M hb p hi⟩

/-- The joint profile contains the previously separated structured-independent profile. -/
theorem situatedIndependentExcess_implies_structuredIndependentAppearance
    (M : HorizonConditioning) (hs : M.HasSituatedIndependentExcess) :
    M.HasStructuredIndependentAppearance := by
  obtain ⟨p, hp, hstruct, hi, _⟩ := hs
  exact ⟨p, hp, hstruct, hi⟩

/-- The joint profile also contains a non-vacuous situated-excess witness. -/
theorem situatedIndependentExcess_implies_situatedExcess
    (M : HorizonConditioning) (hs : M.HasSituatedIndependentExcess) :
    M.base.HasSituatedExcess := by
  obtain ⟨p, hp, hstruct, _, hn⟩ := hs
  exact ⟨p, hp, hstruct, hn⟩

end FormalPhenomenology
