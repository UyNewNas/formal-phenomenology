/-!
# A relational language for the horizon question

These are model definitions, not attributed statements by a philosopher.
`Horizon` ranges over the contexts admitted by a particular model.
`admits` is an extensional surrogate; no metric of intuitive intensity is used.
See docs/INTERPRETATION.md for the translation ledger.
-/
set_option autoImplicit false

namespace FormalPhenomenology

structure Presentation where
  Phenomenon : Type
  Horizon : Type
  Aspect : Type
  appears : Phenomenon → Prop
  situated : Phenomenon → Horizon → Prop
  presents : Phenomenon → Aspect → Prop
  admits : Horizon → Aspect → Prop

namespace Presentation

def Structured (M : Presentation) (p : M.Phenomenon) : Prop :=
  ∃ h, M.situated p h

def Exhausts (M : Presentation) (p : M.Phenomenon) (h : M.Horizon) : Prop :=
  ∀ a, M.presents p a → M.admits h a

def Captured (M : Presentation) (p : M.Phenomenon) : Prop :=
  ∃ h, M.situated p h ∧ M.Exhausts p h

/-- Relative to every situated horizon in the model, not every imaginable horizon. -/
def NonExhaustible (M : Presentation) (p : M.Phenomenon) : Prop :=
  ∀ h, M.situated p h → ¬ M.Exhausts p h

/-- A: every appearing phenomenon has some horizon. -/
def UniversalStructure (M : Presentation) : Prop :=
  ∀ p, M.appears p → M.Structured p

/-- B: an appearing, situated phenomenon has an exhaustive situated horizon. -/
def ClosureBridge (M : Presentation) : Prop :=
  ∀ p, M.appears p → M.Structured p → M.Captured p

/-- C: there is an appearing phenomenon not exhausted by a situated horizon. -/
def HasExcess (M : Presentation) : Prop :=
  ∃ p, M.appears p ∧ M.NonExhaustible p

def UniversalCapture (M : Presentation) : Prop :=
  ∀ p, M.appears p → M.Captured p

/-- Stronger than failure of exhaustive capture. -/
def HasHorizonlessAppearance (M : Presentation) : Prop :=
  ∃ p, M.appears p ∧ ¬ M.Structured p

/-- The horizon is permitted to depend on the particular aspect. -/
def IndividuallyCoverable (M : Presentation) (p : M.Phenomenon) : Prop :=
  ∀ a, M.presents p a → ∃ h, M.situated p h ∧ M.admits h a

end Presentation
end FormalPhenomenology
