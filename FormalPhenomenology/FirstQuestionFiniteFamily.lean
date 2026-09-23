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
Equivalently, non-exhaustibility says that *every* finite situated cover of the encoded
aspect-domain lacks a common situated dominator.

This is the family-by-family polarity of
`first_question_nonExhaustible_iff_no_finite_family_with_dominator`.  It is useful for
keeping two claims separate: a phenomenon may admit a finite plurality of related
horizons that jointly cover all currently encoded aspects, while non-exhaustibility
requires that no situated horizon dominate such a cover.  The latter missing dominator
is exactly what would collapse the finite cover back to single-horizon `Captured`.

The proof is constructive and adds no horizon-combination primitive, external
dependency, or historical attribution.  In particular, "finite cover with no common
dominator" remains an extensional guardrail in this model language and is not identified
with Marion's stronger semantic claim that no combination of horizons can suffice.
-/
theorem first_question_nonExhaustible_iff_every_finite_cover_has_no_dominator
    (M : Presentation) (p : M.Phenomenon) :
    M.NonExhaustible p ↔
      ∀ hs : List M.Horizon,
        (∀ a, M.presents p a →
          ∃ h, h ∈ hs ∧ M.situated p h ∧ M.admits h a) →
        ¬ ∃ hStar, M.situated p hStar ∧
          ∀ h, h ∈ hs → ∀ a, M.admits h a → M.admits hStar a := by
  constructor
  · intro hn hs hcover hdom
    exact
      ((first_question_nonExhaustible_iff_no_finite_family_with_dominator M p).1 hn)
        ⟨hs, hcover, hdom⟩
  · intro hNoDominator
    apply (first_question_nonExhaustible_iff_no_finite_family_with_dominator M p).2
    rintro ⟨hs, hcover, hdom⟩
    exact hNoDominator hs hcover hdom

/--
Project-level witness normal form for situated excess in the finite-family language.

`HasSituatedExcess` is exactly the existence of an actually appearing, structured
phenomenon for which every finite situated cover lacks a common situated dominator.
This is a direct lifting of the pointwise theorem above; it introduces no new model,
primitive, classical principle, or historical attribution.

The formulation is useful for keeping the scope of the negative result explicit.  It
says that the obstruction to the repository's single-horizon `Captured` predicate can
be read family-by-family as failure of a common situated dominator.  A finite list is
still only a list of named horizons in this encoding, not Marion's semantic notion of a
"combination of horizons".
-/
theorem first_question_hasSituatedExcess_iff_exists_finite_cover_obstruction
    (M : Presentation) :
    M.HasSituatedExcess ↔
      ∃ p, M.appears p ∧ M.Structured p ∧
        ∀ hs : List M.Horizon,
          (∀ a, M.presents p a →
            ∃ h, h ∈ hs ∧ M.situated p h ∧ M.admits h a) →
          ¬ ∃ hStar, M.situated p hStar ∧
            ∀ h, h ∈ hs → ∀ a, M.admits h a → M.admits hStar a := by
  constructor
  · rintro ⟨p, happ, hstructured, hnonExhaustible⟩
    exact ⟨p, happ, hstructured,
      (first_question_nonExhaustible_iff_every_finite_cover_has_no_dominator M p).1
        hnonExhaustible⟩
  · rintro ⟨p, happ, hstructured, hObstruction⟩
    exact ⟨p, happ, hstructured,
      (first_question_nonExhaustible_iff_every_finite_cover_has_no_dominator M p).2
        hObstruction⟩

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

/--
Finite joint coverage by related horizons alone does not force single-horizon capture.

The witness is the already verified split model: two distinct situated horizons jointly
cover every presented aspect, while no single situated horizon exhausts the appearing
phenomenon.  Repackaging that pair as the finite list `[h₀, h₁]` makes the negative
baseline explicit next to the positive dominator theorem above: the common situated
dominator is genuine extra structure, not something supplied merely by finiteness.

This theorem adds no model, primitive, dependency, classical principle, or historical
attribution.  In particular, a finite `List Horizon` is only a list of named horizons
in the current relation language and is not identified with Marion's semantic phrase
"combination of horizons".
-/
theorem first_question_finite_family_cover_alone_does_not_force_capture :
    ¬ (∀ (M : Presentation) (p : M.Phenomenon) (hs : List M.Horizon),
      M.appears p →
        hs ≠ [] →
          (∀ h, h ∈ hs → M.situated p h) →
            (∀ a, M.presents p a →
              ∃ h, h ∈ hs ∧ M.admits h a) →
              M.Captured p) := by
  intro h
  rcases first_question_two_horizons_can_cover_without_single_horizon_capture with
    ⟨M, p, h₀, h₁, _, hp, hs₀, hs₁, hn, hcover⟩
  have hc := h M p [h₀, h₁] hp (by
    intro hNil
    cases hNil) (by
      intro h' hh
      cases hh with
      | head => exact hs₀
      | tail _ hhTail =>
          cases hhTail with
          | head => exact hs₁
          | tail _ hNil => cases hNil) (by
            intro a ha
            rcases hcover a ha with ha₀ | ha₁
            · exact ⟨h₀, List.Mem.head _, ha₀⟩
            · exact ⟨h₁, List.Mem.tail _ (List.Mem.head _), ha₁⟩)
  exact ((nonExhaustible_iff_not_captured M p).mp hn) hc

end FormalPhenomenology
