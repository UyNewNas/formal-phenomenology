# First-question aggregate / reuse audit — 2026-09-21

Scope: `research/first-question-main-theorem-20260918`, first horizon/exhaustibility question only.

## Why this round changes the aggregate theorem

The branch already contains and kernel-audits
`first_question_two_horizons_can_cover_without_single_horizon_capture`.
That theorem reuses the existing finite `splitModel` to witness an actually
appearing, non-exhaustible phenomenon with two fixed distinct related horizons
whose disjunctive coverage reaches every encoded aspect, while no single related
horizon exhausts the phenomenon.

`first_question_complete_formal_answer` still advertised and packaged only seven
facts, omitting that already-verified finite-family guardrail. This round does
not add a new primitive, model family, logical principle, or historical
attribution. It only makes the existing aggregate target consume the strongest
already-present first-question guardrail so that the project-level “complete
narrow formal answer” and the public entry points no longer diverge.

The added aggregate conjunct is deliberately only the existing fixed-two-horizon
statement. It is **not** a horizon-combination operation and is **not** identified
with Marion's one / several / combined-horizon taxonomy.

## External-first recheck

Before changing the aggregate API, the two live formal baselines were rechecked.

- `novaspivack/phenomenology-lean`, `main@75230e4eab333ad0fc47573747521ccc1a31a163`
  (2026-05-20), remains unchanged. A targeted code search for horizon / exhaust /
  capture / Marion / saturation combinations returned no same-shaped API that
  would replace the current `situated / Exhausts / Captured` layer.
- `cbenzmueller/LogiKEy`, `master@b29954b0876d7991baf12f17378f31700f9de759`
  (2026-09-13), remains the relevant computational-hermeneutic / semantic-
  embedding methodological baseline, not a sensible dependency for this finite
  Lean-Core witness or its aggregate wrapper. The same targeted search returned
  no matching horizon/exhaustibility API.

No external repository was rebuilt in this runtime, so their own build claims
are not reported as this round's verification. The reuse decision is therefore:
**thin local aggregation of an already-audited theorem; no new generic API and
no dependency import.**

## Same-topic / primary-source recheck

The source gate was rechecked rather than using the formal refinement to smuggle
in a historical claim.

- Fordham University Press / JSTOR metadata for Jean-Luc Marion, *The Visible and
  the Revealed* (2008), confirms the book and its chapter “The Saturated
  Phenomenon” (pp. 18–48), but the available JSTOR surface explicitly reports no
  institutional book access and exposes only metadata / an opening snippet, not
  the target horizon passage. No authentication, reader API, DRM, or access
  control was bypassed.
- Secondary exact-page reconstructions of *Being Given* pp. 210–211 again
  distinguish one horizon, further/multiple horizons, and a stronger combined
  case. They motivate keeping the fixed-pair theorem as a **quantifier/model
  guardrail**, but they do not license identifying the theorem with Marion's
  taxonomy and do not close the revised-book direct-body gate.

Accordingly the remaining historical stop gate is unchanged: lawful direct
body-text review of revised §21 (BG pp. 209–212 / early ED pp. 292–297 / a
reliably mapped authorized revised translation or reprint), together with the
already tracked later intention/intuition passage. Source inaccessibility is not
used as evidence for an interpretation.

## Formal delta

`first_question_complete_formal_answer` is updated from seven to eight packaged
facts by inserting the existing theorem
`first_question_two_horizons_can_cover_without_single_horizon_capture` after the
aspectwise-cover conjunct. The proof remains a constructor-only aggregation of
already-proved results.

`Audit.lean` already contains `#print axioms` entries for both the two-horizon
theorem and `first_question_complete_formal_answer`, so no audit exception or
whitelist change is required.

## Verification status

The pre-change branch head was
`37c39b44c0bdb2bcbd29ca63c7ac342ae0e0339e`, whose workflow run
`35541092358` had already succeeded with the full build, root/source coverage,
and 82/82 zero-axiom audit.

The aggregate code commit is
`5b9427ed6cfadd0026979f16b894eab27c39d070`. Both exact-code-SHA workflow paths
completed successfully:

- push run `35543244712`: `success`;
- pull-request run `35543247246`: `success`.

The PR run's `verify` job completed checkout, pinned Lean setup, and
`Build, source coverage, and kernel axiom audit` successfully. No audit rule,
whitelist, theorem target, or source-coverage requirement was weakened.

The local container could not resolve `github.com`, so no local build is claimed;
the recorded verification is the actual GitHub Actions result for the exact code
SHA. This documentation follow-up changes no Lean source, so its own final SHA is
still required to pass the same regression workflow before the round is handed
off as fully verified.
