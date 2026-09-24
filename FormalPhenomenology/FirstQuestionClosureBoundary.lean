import FormalPhenomenology.FirstQuestion

set_option autoImplicit false

namespace FormalPhenomenology
open Presentation

/--
Constructive normal form for the *absence* of a situated-excess counterexample.

`¬ HasSituatedExcess` does not by itself construct a capturing horizon.  What it gives,
exactly, is double-negated capture for every actually appearing, structured phenomenon.
The proof uses only the existing equivalence `NonExhaustible p ↔ ¬ Captured p` and does
not introduce a new model, primitive, classical principle, or historical attribution.

This theorem is an encoding/proof-theoretic guardrail for the first question.  In
particular, it prevents the meta-level phrase “no counterexample exists” from being read
constructively as the positive bridge `ClosureBridge` without an additional stability
principle for `Captured`.
-/
theorem first_question_no_situatedExcess_iff_double_negated_capture
    (M : Presentation) :
    (¬ M.HasSituatedExcess) ↔
      ∀ p, M.appears p → M.Structured p → ¬ ¬ M.Captured p := by
  constructor
  · intro hNoExcess p hp hStructured hNotCaptured
    apply hNoExcess
    refine ⟨p, hp, hStructured, ?_⟩
    exact (nonExhaustible_iff_not_captured M p).2 hNotCaptured
  · intro hDouble hExcess
    rcases hExcess with ⟨p, hp, hStructured, hNonExhaustible⟩
    exact (hDouble p hp hStructured)
      ((nonExhaustible_iff_not_captured M p).1 hNonExhaustible)

/--
Exact constructive decomposition of the positive closure bridge.

For the current relation language, `ClosureBridge` is equivalent to two ingredients:

1. there is no actually appearing, structured, non-exhaustible witness; and
2. `Captured` is double-negation stable on the very same appearing/structured domain.

The forward direction makes stability trivial because closure already supplies capture.
The reverse direction first obtains `¬¬ Captured p` from the absence of situated excess,
then uses the localized stability premise to construct the capture witness.

This is a FORMAL theorem about the repository encoding only.  It is not attributed to
Merleau-Ponty or Marion, and it does not identify `Captured` with Marion's saturated
phenomenon or claim that the historical texts provide the required stability principle.
-/
theorem first_question_closureBridge_iff_no_situatedExcess_and_captured_stability
    (M : Presentation) :
    M.ClosureBridge ↔
      (¬ M.HasSituatedExcess) ∧
        (∀ p, M.appears p → M.Structured p →
          (¬ ¬ M.Captured p → M.Captured p)) := by
  constructor
  · intro hClosure
    constructor
    · intro hExcess
      exact (situatedExcess_refutes_closureBridge M hExcess) hClosure
    · intro p hp hStructured _
      exact hClosure p hp hStructured
  · rintro ⟨hNoExcess, hStable⟩ p hp hStructured
    exact hStable p hp hStructured
      ((first_question_no_situatedExcess_iff_double_negated_capture M).1
        hNoExcess p hp hStructured)

/--
Natural-language form of the same constructive boundary once horizon structure is fixed.

If `UniversalStructure` says that every actually appearing phenomenon is in the encoded
horizon structure, then saying that every appearing phenomenon is positively `Captured`
is equivalent to two requirements: there is no appearing structured non-exhaustible
counterexample, and `Captured` is double-negation stable on appearing phenomena.

This is the exact formal premise boundary for the repository's narrow question
"appearance in a horizon structure → exhaustive capture".  The theorem adds no new
primitive and does not attribute the stability requirement to Merleau-Ponty or Marion.
In particular, it keeps the historical source question separate from the constructive
logic needed to turn absence of a counterexample into a positive capture witness.
-/
theorem first_question_universalStructure_appearance_capture_iff_no_situatedExcess_and_stability
    (M : Presentation) (hStructure : M.UniversalStructure) :
    (∀ p, M.appears p → M.Captured p) ↔
      (¬ M.HasSituatedExcess) ∧
        (∀ p, M.appears p → (¬ ¬ M.Captured p → M.Captured p)) := by
  constructor
  · intro hCapture
    constructor
    · intro hExcess
      rcases hExcess with ⟨p, hp, _, hNonExhaustible⟩
      exact ((nonExhaustible_iff_not_captured M p).1 hNonExhaustible)
        (hCapture p hp)
    · intro p hp _
      exact hCapture p hp
  · rintro ⟨hNoExcess, hStable⟩ p hp
    have hStructured : M.Structured p := hStructure p hp
    have hDouble : ¬ ¬ M.Captured p :=
      (first_question_no_situatedExcess_iff_double_negated_capture M).1
        hNoExcess p hp hStructured
    exact hStable p hp hDouble

/--
Localized decidability is a sufficient source of the capture stability required above.

If `Captured p` is decidable only on the actually appearing, structured domain relevant
to `ClosureBridge`, then absence of a situated-excess counterexample is equivalent to the
positive closure bridge.  No global classical logic or global decidability assumption is
needed; the local `Decidable` instance is introduced exactly at the point where double
negation is eliminated.

This is a proof-theoretic corollary only.  The decidability premise has no historical
attribution, and the theorem must not be read as saying that phenomenological horizons
are effectively decidable in Merleau-Ponty or Marion.
-/
theorem first_question_closureBridge_iff_no_situatedExcess_of_captured_decidable
    (M : Presentation)
    (hDecidable :
      ∀ p, M.appears p → M.Structured p → Decidable (M.Captured p)) :
    M.ClosureBridge ↔ ¬ M.HasSituatedExcess := by
  constructor
  · intro hClosure hExcess
    exact (situatedExcess_refutes_closureBridge M hExcess) hClosure
  · intro hNoExcess p hp hStructured
    have hDouble : ¬ ¬ M.Captured p :=
      (first_question_no_situatedExcess_iff_double_negated_capture M).1
        hNoExcess p hp hStructured
    letI : Decidable (M.Captured p) := hDecidable p hp hStructured
    exact (Decidable.not_not).1 hDouble

/--
Question-shaped decidability corollary on the actual-appearance domain.

Once `UniversalStructure` is fixed, local decidability of `Captured p` only for actually
appearing phenomena removes the constructive stability residue from the exact boundary:
"every appearance is captured" is then equivalent to the absence of a situated-excess
counterexample.  The decidability hypothesis is deliberately narrower than the preceding
`ClosureBridge` corollary because `UniversalStructure` already supplies `Structured p`.

This is a FORMAL proof-theoretic corollary.  It adds no philosophical primitive and does
not attribute decidability, exhaustive capture, or classical reasoning to Merleau-Ponty
or Marion.
-/
theorem first_question_universalStructure_appearance_capture_iff_no_situatedExcess_of_captured_decidable
    (M : Presentation) (hStructure : M.UniversalStructure)
    (hDecidable : ∀ p, M.appears p → Decidable (M.Captured p)) :
    (∀ p, M.appears p → M.Captured p) ↔ ¬ M.HasSituatedExcess := by
  constructor
  · intro hCapture hExcess
    rcases hExcess with ⟨p, hp, _, hNonExhaustible⟩
    exact ((nonExhaustible_iff_not_captured M p).1 hNonExhaustible)
      (hCapture p hp)
  · intro hNoExcess p hp
    have hStructured : M.Structured p := hStructure p hp
    have hDouble : ¬ ¬ M.Captured p :=
      (first_question_no_situatedExcess_iff_double_negated_capture M).1
        hNoExcess p hp hStructured
    letI : Decidable (M.Captured p) := hDecidable p hp
    exact (Decidable.not_not).1 hDouble

end FormalPhenomenology
