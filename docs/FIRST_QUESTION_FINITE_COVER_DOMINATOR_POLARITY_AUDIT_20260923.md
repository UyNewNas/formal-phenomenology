# First-question finite-cover / dominator polarity audit

Date: 2026-09-23

Branch: `research/first-question-main-theorem-20260918`

## Object reviewed

This round did not add a new philosophical primitive or a new model family.  It rechecked the already-existing finite-family normal form around:

- `first_question_captured_iff_exists_finite_family_with_dominator`;
- `first_question_nonExhaustible_iff_no_finite_family_with_dominator`;
- `first_question_finite_family_cover_alone_does_not_force_capture`;
- the more recent project-level closure exactness result.

The bounded question was whether the negative result is best exposed only as `¬ ∃ (finite cover + dominator)` or whether a family-by-family form is useful for the first-question interpretation boundary.

## External-first / reuse check

The current direct Lean formal-phenomenology baseline is still:

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163` (main, 2026-05-20).

A targeted GitHub code search for `horizon exhaust captured saturation Marion` returned no same-shaped finite-cover/dominator API in that repository.  This is a bounded reuse decision, not a novelty claim.

The computational-philosophy baseline is still:

- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759` (master, 2026-09-13).

Its shallow/deep semantic embeddings, model search, and argument-reconstruction workflow remain methodological prior art; they do not supply this project's phenomenon-relative `situated` / `admits` finite-family theorem.

The registered modal-logic Lean baseline is still:

- `alexoltean61/msphml-lean@9d6559db6502bc9813dcf028d7ea26ae80e9dc93` (branch `itp2026`, 2026-02-20).

No dependency is introduced for this theorem.  The new proof is a direct constructive rearrangement of an already verified project theorem, so Lean Core is sufficient.  Generic directedness / finite-upper-bound machinery in Mathlib remains method/API precedent only; importing Mathlib would add no value for this consumer.

## Same-topic source recheck

The revised-book primary gate was retried before strengthening any historical interpretation.

- Google Books still identifies Jean-Luc Marion, *Being Given* (Stanford University Press, 2002), and exposes the chapter starts §21 p. 199, §22 p. 212, §23 p. 221.  The public page still does not expose the target pp. 209-212 body in the current runtime.
- PDCnet search still surfaces the 1996 `The Saturated Phenomenon` author text, but direct opening of the publisher PDF URL again returned HTTP 403 in this round.  The repository therefore keeps the 1996 item at `PRIMARY-DIRECT-INDEXED`, not PDF/page-image reviewed.
- No access control, borrow-only route, or unauthorized full-book mirror was used.

Accordingly the historical boundary is unchanged: current `List Horizon` covers and `admits`-dominators are formal surrogates only and are not identified with Marion's one/several/combination-of-horizons vocabulary.

## Formal increment

`FormalPhenomenology/FirstQuestionFiniteFamily.lean` now adds:

`first_question_nonExhaustible_iff_every_finite_cover_has_no_dominator`.

It states constructively:

```text
NonExhaustible p
↔
∀ finite family hs,
  (hs jointly covers every encoded aspect of p using situated horizons)
  →
  no situated horizon dominates every member of hs.
```

This is exactly the family-by-family polarity of the existing theorem
`first_question_nonExhaustible_iff_no_finite_family_with_dominator`; no stronger mathematical or philosophical content is claimed.

The point of the formulation is interpretive discipline.  Finite plurality and finite joint coverage can coexist with `NonExhaustible`; what would collapse such a cover back to ordinary single-horizon `Captured` is a common situated dominator.  That remains weaker and more extensional than Marion's strongest secondary-reconstructed claim that no semantic combination of horizons can suffice.

## Proof / axiom status

The theorem is registered in `Audit.lean`.  It uses only the already-audited finite-family equivalence and constructive introduction/elimination of `∃`, `∀`, implication, and negation.  No `Classical`, `sorry`, `admit`, `sorryAx`, custom axiom, unsafe shortcut, or new dependency was introduced.

Exact kernel/build status must be taken only from GitHub Actions on the final branch SHA after these commits.  A successful earlier head does not count as validation of this round.

## Stop-gate effect

None.  This theorem sharpens an internal formal normal form but does not satisfy the remaining revised-primary-body gate.  The first research question must not be marked complete until the authorized revised text is directly checked and the final exact SHA is rebuilt and axiom-audited.
