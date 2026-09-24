# First-question actual-witness reuse audit — 2026-09-20

This checkpoint records the external-first and internal-reuse decision behind the latest tightening of `first_question_complete_formal_answer`. It does not add a philosophical primitive or a new general logical theorem.

## Object under review

The aggregate previously recorded the weak separation

```text
¬ ∀ M p, Independent p → NonExhaustible p.
```

That statement is correct, but its quantifier scope is broader and less faithful to the research question than an already verified finite witness in this repository. The question concerns phenomena that actually appear and are situated in a horizon. The stronger existing theorem

```text
related_independent_captured_are_jointly_consistent
```

provides exactly such a witness:

```text
∃ M p,
  appears p ∧ Structured p ∧ Independent p ∧ Captured p.
```

Because `Captured p` entails `¬ NonExhaustible p` in the current relation language, this same witness is also the concrete countermodel behind the failure of weak `Independent → NonExhaustible`, but without dropping the `appears` / `Structured` information.

## External-work gate

A targeted GitHub code search was rerun on 2026-09-20 against the already registered direct Lean formal-phenomenology prior art `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163` with the terms `horizon`, `captured`, `independent`, `exhaustible`, `conditioning`, `saturated`, and `Marion`. No same-shaped Marion/horizon API was returned. This is only a search result, not a claim that the external repository has no relevant phenomenological content.

The method baseline is unchanged: LogiKEy / AFP computational-metaphysics work and computational hermeneutics already establish interpretation-to-formalization and countermodel workflows as prior art. The local change therefore makes no methodological novelty claim.

Same-topic literature also continues to constrain the reading. Murga, Djian, Falabretti, Pommier, Deketelaere, Leung, Mason, Mackinlay and the newer Llorente Cardo discussion all make it unsafe to identify the repository's independent `conditions` relation or its extensional `Captured` predicate with Marion's full saturated-phenomenon theory. No new historical attribution is introduced here.

## Reuse decision

**Thin internal reuse; no new API.** The aggregate now consumes `related_independent_captured_are_jointly_consistent` directly instead of consuming the weaker global negated implication. This keeps the same finite-model evidence while preserving the actual-appearance and horizon-situated scope in the project-level answer.

No new dependency, axiom, model family, predicate, or generic lemma is added. `Audit.lean` already audits both the reused witness theorem and the aggregate theorem.

## Primary-source route check in this round

The publisher-indexed PDCnet URL for Marion's 1996 *The Saturated Phenomenon* exposes a direct-looking `showfreearticle` PDF endpoint in search results, but a fresh direct fetch in this runtime again returned HTTP 403. Therefore the source status must **not** be upgraded from the repository's existing `PRIMARY-DIRECT-INDEXED` evidence to PDF/page-image review.

Fresh same-topic searches also recovered Spanish-language secondary material quoting the `Siendo dado` horizon sequence with exact page references, but these remain secondary quotations and do not satisfy the stop gate for direct review of the revised *Being Given* / *Étant donné* body.

## Interpretation consequence

The stronger finite witness sharpens only the model-scope warning:

- `Independent` means absence of a witness in the separately modelled `conditions` relation;
- a phenomenon may, under that weak definition, still actually appear, have a related horizon, and be `Captured`;
- therefore the formal countermodel must not be advertised as a refutation of a stronger historical Marion reading in which horizon-independence already carries substantive freedom from prior delimitation.

The exact positive condition remains the already verified appearing-domain exclusion of `Captured ∧ Independent`. The constructive witness boundary remains exact exclusion plus captured-domain double-negation stability of `Conditioned`.

## Remaining source gate

This tightening does not close the research question. The remaining material stop gate is still lawful direct body review of BG pp. 209–212 / early ED pp. 292–297 (plus the tracked pp. 225–226 / ED pp. 314–315 check), the reliably mapped Spanish target, or an authorized revised reprint/translation whose textual identity with that revised section is independently established.

After this commit the exact branch SHA must pass the repository's Lean build, root-import/source coverage, forbidden-placeholder scan, and `Audit.lean` axiom checks before the aggregate tightening is treated as verified.
