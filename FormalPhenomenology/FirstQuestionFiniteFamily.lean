import FormalPhenomenology.FirstQuestionRobustness

set_option autoImplicit false

namespace FormalPhenomenology
open Presentation

/--
The existential finite-family + dominator package is exactly as strong as the existing
single-horizon `Captured` predicate.

The forward direction uses a singleton family containing the capturing horizon itself;
the reverse direction is the already verified finite-family dominator theorem.  Thus,
when the finite family is existentially chosen, the dominator package should not be
read as a new plural-horizon notion: its extra structure collapses extensionally back
to single-horizon capture.

This is a FORMAL quantifier/encoding guardrail only.  In particular, a `List Horizon`
is not identified with Marion's historical "combination of horizons", and the theorem
adds no philosophical attribution or horizon-combination primitive.
-/
theorem first_question_captured_iff_exists_finite_family_with_dominator
    (M : Presentation) (p : M.Phenomenon) :
    M.Captured p ↔
      ∃ hs : List M.Horizon,
        (∀ a, M.presents p a →
          ∃ h, h ∈ hs ∧ M.situated p h ∧ M.admits h a) ∧
        ∃ hStar, M.situated p hStar ∧
          ∀ h, h ∈ hs → ∀ a, M.admits h a → M.admits hStar a := by
  constructor
  · rintro ⟨hStar, hsituated, hexhausts⟩
    refine ⟨[hStar], ?_, ⟨hStar, hsituated, ?_⟩⟩
    · intro a ha
      exact ⟨hStar, List.Mem.head _, hsituated, hexhausts a ha⟩
    · intro h hh a hadmits
      cases hh with
      | head => exact hadmits
      | tail _ hNil => cases hNil
  · rintro ⟨hs, hcover, hdom⟩
    exact first_question_finite_family_cover_with_dominator_implies_capture
      M p hs hcover hdom

/--
For a non-exhaustible phenomenon, the exact negated finite-family normal form is the
absence of any finite situated cover equipped with a single situated dominator.

This is just the De Morgan side of the already verified capture equivalence together
with `NonExhaustible p ↔ ¬ Captured p`.  It is useful because it states the structural
boundary directly in the polarity of the research question: non-exhaustibility rules
out not merely one exhaustive horizon, but every *finite named cover + common situated
dominator* package, while still saying nothing about an unconstrained semantic
"combination of horizons" operation.

The theorem introduces no new primitive, model, classical principle, or historical
attribution.  In particular the finite list and dominator remain features of the
current extensional encoding only, not an identification with Marion's stronger
one/several/no-combination distinction.
-/
theorem first_question_nonExhaustible_iff_no_finite_family_with_dominator
    (M : Presentation) (p : M.Phenomenon) :
    M.NonExhaustible p ↔
      ¬ ∃ hs : List M.Horizon,
        (∀ a, M.presents p a →
          ∃ h, h ∈ hs ∧ M.situated p h ∧ M.admits h a) ∧
        ∃ hStar, M.situated p hStar ∧
          ∀ h, h ∈ hs → ∀ a, M.admits h a → M.admits hStar a := by
  constructor
  · intro hn hpack
    have hCaptured : M.Captured p :=
      (first_question_captured_iff_exists_finite_family_with_dominator M p).2 hpack
    exact ((nonExhaustible_iff_not_captured M p).mp hn) hCaptured
  · intro hNoPackage
    apply (nonExhaustible_iff_not_captured M p).2
    intro hCaptured
    exact hNoPackage
      ((first_question_captured_iff_exists_finite_family_with_dominator M p).1 hCaptured)

/--
For a non-exhaustible phenomenon, a fixed two-horizon cover cannot secretly collapse
back to single-horizon capture through a common situated dominator.

The premise says the two named horizons jointly admit every presented aspect.  If a
situated `hStar` admitted everything admitted by either of them, `hStar` would exhaust
the phenomenon, contradicting `NonExhaustible`.  This pinpoints the exact structural
failure behind the recent fixed-pair counterexamples without introducing a semantic
horizon-combination operation.

This is a FORMAL encoding guardrail only.  It is not attributed to Merleau-Ponty or
Marion, and the two-horizon disjunction is not identified with Marion's historical
"combination of horizons" language.
-/
theorem first_question_nonExhaustible_fixed_pair_cover_has_no_dominator
    (M : Presentation) (p : M.Phenomenon) (h₀ h₁ : M.Horizon)
    (hn : M.NonExhaustible p)
    (hcover : ∀ a, M.presents p a →
      (M.admits h₀ a ∨ M.admits h₁ a)) :
    ¬ ∃ hStar, M.situated p hStar ∧
      (∀ a, M.admits h₀ a → M.admits hStar a) ∧
      (∀ a, M.admits h₁ a → M.admits hStar a) := by
  rintro ⟨hStar, hsituated, hdom₀, hdom₁⟩
  apply ((nonExhaustible_iff_not_captured M p).mp hn)
  refine ⟨hStar, hsituated, ?_⟩
  intro a ha
  rcases hcover a ha with ha₀ | ha₁
  · exact hdom₀ a ha₀
  · exact hdom₁ a ha₁

end FormalPhenomenology
