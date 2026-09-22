# First-question finite-family negative-baseline audit

Date: 2026-09-23

Branch: `research/first-question-main-theorem-20260918`

Pre-document code/audit head: `cc4bbfd9fcc05c6ff93dd64755f1276dc18a914d`.

## Object of this round

The repository already had both sides of the relevant finite-family boundary:

- a concrete **fixed pair** of situated horizons can jointly cover every presented aspect while no single situated horizon captures the phenomenon;
- a finite situated cover **with a common situated dominator** does imply `Captured`;
- existential finite-cover + dominator is extensionally equivalent to `Captured`.

What was missing was only the list-quantified negative baseline stated at exactly the same finite-family level as the dominator theorem. This round therefore adds the thin project-facing theorem

`first_question_finite_family_cover_alone_does_not_force_capture`.

It says that there is no general implication from an appearing phenomenon plus a nonempty finite list of situated horizons jointly covering all presented aspects to `Captured`.

The proof does not introduce a new countermodel. It repackages the existing two-horizon split-model witness as `[h₀, h₁]` and closes the contradiction with the already verified `NonExhaustible p ↔ ¬ Captured p` result. The strongest internal baseline is consequently still the explicit fixed-pair witness / finite-family-dominator boundary; this theorem is only a quantifier-aligned wrapper.

## External-first reuse check

Before adding the wrapper, a bounded code search was repeated for the current object with the terms

`horizon exhaustive exhaustibility captured combination horizons`

across the registered proof/formal-philosophy baselines:

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163` (current `main` at this check);
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759` (current `master` at this check);
- `alexoltean61/msphml-lean@9d6559db6502bc9813dcf028d7ea26ae80e9dc93` (current default branch `itp2026` at this check).

No same-shaped reusable horizon/exhaustibility API was returned by that scoped code search. This is a reuse decision, not a novelty claim. The generic logical fact that a finite family need not have a common upper bound is elementary, and the repository already records Mathlib directedness / finite-upper-bound infrastructure as method/API precedent; importing a larger order-theory dependency for this two-element witness would not improve the current consumer.

## Same-topic interpretation boundary

The already registered Marion literature distinguishes one horizon, several horizons, and the stronger no-combination case. That historical hierarchy is **not** encoded by a `List Horizon` here. A finite list only records finitely many named horizons and pointwise disjunctive coverage; it has no semantic combination operation.

Accordingly:

- the new theorem is not evidence that Marion's strongest no-combination claim follows from `NonExhaustible`;
- it does not identify finite joint coverage with a Marionian plurality/combination;
- it does not change the interpretation of `Captured`, `NonExhaustible`, `situated`, or `conditions`;
- it does not justify any new saturation primitive.

The lawful revised-primary-body stop gate remains unchanged. The public PUF/Lavoisier 2025 route still exposes a legal ePub excerpt endpoint but the current research runtime cannot ingest that `application/epub+zip` body; this route had already been registered previously and therefore is not treated as a new source result. Metadata, secondary exact-page crosswalks, and earlier-essay lineage do not substitute for direct review of the mapped revised body.

## Formal change

Code commit:

`294850a49b7efe5d734d43e21dd5a01f960f547a`

Audit registration commit:

`cc4bbfd9fcc05c6ff93dd64755f1276dc18a914d`

New declaration:

```text
first_question_finite_family_cover_alone_does_not_force_capture
```

No definition, model family, classical principle, axiom, unsafe feature, or external dependency was added.

## Validation status and handoff

The new declaration is registered in `Audit.lean`. The final documentation SHA produced by this file still requires its own exact-head GitHub Actions verdict before the round can be called build/source-coverage/kernel-audit verified. A successful earlier SHA must not be reused as that verdict.

If exact-head verification succeeds, the correct interpretation is still modest: finite joint coverage alone is explicitly insufficient, while the already-proved common situated dominator is the relevant stronger structural premise. The first research question itself remains open solely at the lawful revised-primary interpretation/source gate, not at this finite-family formal boundary.
