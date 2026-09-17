# Working on Formal Phenomenology

## Goal

Study precise inferential relations inspired by phenomenological questions. Keep textual evidence, interpretive choices, formal definitions, and verified consequences distinguishable. The v0.1 scope is horizon structure versus exhaustive capture.

## Research workflow

- Read `docs/INTERPRETATION.md`, `docs/SOURCES.md`, `docs/ROADMAP.md`, and `docs/PRIOR_ART.md` before changing philosophical assumptions.
- An author name is not an axiom. Use descriptive hypothesis names and explicit theorem parameters; do not introduce global philosophical axioms.
- Attribute a claim only after identifying a passage, edition, and access status. Secondary interpretation is not a direct quotation. Record alternative readings and structures lost by the encoding.
- Do not silently change the meaning of a philosophical term to make a theorem true. Introduce a named competing encoding and a model comparison instead.
- Basic logical separation is useful groundwork, not by itself evidence of a novel historical or philosophical discovery.

## Prior-art gate

Before adding a non-trivial definition, lemma/API, model family, or philosophical attribution, perform a targeted external-work audit and update `docs/PRIOR_ART.md` when the scope or evidence changes.

Check three layers rather than only searching this repository:

1. **Proof infrastructure:** Lean/Core and the pinned environment, relevant Mathlib APIs when needed, related Lean repositories, and Isabelle/HOL / AFP work; inspect Rocq/Coq or Agda only when the proposed structure makes them relevant.
2. **Formal-philosophy method:** computational metaphysics, computational hermeneutics, semantic embeddings, argument reconstruction, automated countermodel work, and existing formal-phenomenology projects.
3. **Same-topic interpretation:** Merleau-Ponty / Marion / Husserl literature on horizon, horizontality, givenness, saturation, condition of possibility, exhaustibility, intentionality, including relevant French/Spanish terminology.

For a proposed substantial addition, record the source version or commit, exact module/theorem or textual claim, original quantifiers/assumptions, what was actually read or rebuilt, and the reuse decision: direct reuse, thin adaptation, attributed minimal port, methodological precedent, reproduction of an existing interpretation, uncovered gap, or access-limited item.

If an external result is same-shaped or stronger, prefer reuse or a minimal adapter. A different prover or Lean version is not automatically importable: preserve provenance, state the semantic bridge, and re-verify any port in the pinned environment. Do not add a large dependency for an elementary theorem if the external work only supplies methodological precedent.

Theorem count, zero `sorry`, a renamed philosophical vocabulary, or an unconstrained pair of predicates does not establish novelty. In particular, if two predicates are introduced independently, a finite model separating them proves model-theoretic consistency in that language; it does not by itself prove that the corresponding historical concepts are independent. Textual constraints must be audited separately.

If the prior-art search is incomplete or primary access is blocked, mark that limitation rather than claiming no prior work exists. Do not start a new large proof line until the relevant audit is sufficient to decide whether it should be reused, adapted, or implemented locally.

## Lean workflow

Use the version in `lean-toolchain`. Prefer Lean core; add dependencies only when a concrete module requires them. Do not change the pinned toolchain merely because a newer version exists.

```sh
lake build
python3 scripts/check.py
```

All library modules must be explicitly imported in `FormalPhenomenology.lean`. Every named theorem or lemma must be listed in `Audit.lean`; keep theorem names unique within the current root namespace. The current audit policy is zero axiom dependencies for listed proofs. Do not introduce proof placeholders, unproved axioms, `native_decide`, or unsafe proof shortcuts.

`--static-only` checks source structure without invoking Lean. Report that status separately from kernel-checked success. The Python scanner is a lightweight project hygiene check, not a complete Lean parser; the Lean build and dependency reports are the proof checks.

## Model review

Check empty domains, vacuous implications, quantifier order, and changes to the domain of horizons. State whether a model uses actual, accessible, possible, or ideal horizons. A countermodel to a formal implication does not automatically refute a philosopher's view.

When changing a definition, update `docs/RESULTS.md` and the interpretation ledger. Preserve finite witnesses when possible; do not assume that inexhaustibility requires an infinite domain. If strengthening C to require an actually situated witness, re-evaluate minimality of the A/B/C conflict rather than preserving the old claim by wording alone.

## Git and reporting

Inspect the current branch and changes before writing. Use focused commits, preserve other contributors' work, and do not force-push. For subsequent substantive changes, prefer a reviewable branch and pull request unless the user specifies another workflow. Never report a green build without checking the corresponding commit's results.

Do not add a license or make legal licensing claims on behalf of the owner without an explicit choice.
