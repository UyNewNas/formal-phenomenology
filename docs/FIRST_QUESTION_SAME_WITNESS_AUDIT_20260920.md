# First-question same-witness audit — 2026-09-20

This checkpoint tightens only the project-level packaging of the already proved first-question countermodel. It introduces no new philosophical primitive, no new generic logic API, and no historical attribution.

## External-first recheck

Before changing the first-question theorem, the relevant formal-phenomenology baseline was rechecked. `novaspivack/phenomenology-lean` is still at commit `75230e4eab333ad0fc47573747521ccc1a31a163` (2026-05-20). A targeted repository search for horizon / exhaustion / cover terminology still found no API that directly replaces this repository's `Structured` / `NonExhaustible` / `IndividuallyCoverable` relation layer. The existing LogiKEy / AFP / computational-hermeneutics entries in `docs/PRIOR_ART.md` remain method precedents rather than same-shaped first-question theorems.

The source-side gate was also rechecked against the current authorized routes. The official Marion 2007 *Filozofia* page still supplies author-primary abstract-level corroboration that horizon functions as a constitutive condition of givenness, but its linked PDF body was not retrieved in this runtime. Official De Gruyter Brill metadata continues to locate *Being Given* §21 as `Sketch of the Saturated Phenomenon: The Horizon`, pp. 199–212, without exposing the target body. No unauthorized mirror was used as evidence. Therefore the direct-primary stop gate in `docs/FIRST_QUESTION_SOURCE_GATE_20260920.md` is unchanged.

Reuse decision: **thin local strengthening only**. No dependency, model family, or new predicate is warranted.

## Formal scope correction

The previous project-level guardrail theorem stated that there exists an appearing phenomenon that is `NonExhaustible` and `IndividuallyCoverable`. Its proof already came from `splitModel_situatedExcess`, whose witness additionally satisfies `Structured p`, but the theorem statement discarded that component.

For the literal first question this omission was unnecessarily weak: the counterexample should display on the *same phenomenon* that

1. it actually appears;
2. it has at least one situated horizon (`Structured p`);
3. no single situated horizon exhausts all presented aspects (`NonExhaustible p`);
4. each aspect can nevertheless be covered by some situated horizon chosen for that aspect (`IndividuallyCoverable p`).

`first_question_nonExhaustible_allows_aspectwise_horizon_cover` now retains `Structured p`, and `first_question_complete_formal_answer` retains the same stronger conjunct. The proof still reuses the existing finite `splitModel`; no new countermodel or logical assumption was added.

This is a FORMAL packaging improvement, not a historical claim that `Structured`, `NonExhaustible`, or `IndividuallyCoverable` by itself captures Marion's one/several/combined-horizon taxonomy. `Structured` means only existence of a `situated` horizon in the repository's weak relation language.

## Verification gate

The code change is commit `713ff91e5b73bc7c48678141bee8356ab7115403`. This documentation commit must not be treated as proof verification. The branch's final SHA must separately pass the repository workflow, including pinned Lean build, `scripts/check.py`, root import coverage, forbidden-placeholder scan, and the `Audit.lean` zero-axiom checks before this checkpoint is called verified.

The first research question remains open because the Marion direct-primary body-text stop gate is still unresolved.
