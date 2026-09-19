# First-question horizon-quantifier boundary audit — 2026-09-20

This checkpoint records the external-first review, source check, and formal reuse decision behind the project-level theorem `first_question_aspectwise_cover_is_strictly_weaker_than_capture`.

It does **not** add a philosophical primitive, identify the project's `Captured` predicate with Marion's saturation language, or relax the remaining direct-primary stop gate.

## 1. Formal object and strongest internal baseline

The model already distinguishes:

```text
Captured p
:= ∃ h, situated p h ∧ ∀ a, presents p a → admits h a

IndividuallyCoverable p
:= ∀ a, presents p a → ∃ h, situated p h ∧ admits h a
```

So the exact logical issue is the quantifier order

```text
∃ h, ∀ a    versus    ∀ a, ∃ h.
```

The strongest existing reusable facts are already in the repository:

- `captured_implies_individuallyCoverable`: one exhaustive related horizon always supplies aspectwise cover;
- `individual_cover_does_not_imply_capture`: the converse universal implication fails by the finite `splitModel`;
- `first_question_nonExhaustible_allows_aspectwise_horizon_cover`: an **actually appearing** split-model witness is situated, non-exhaustible, and still aspectwise coverable;
- `nonExhaustible_iff_not_captured`: converts that actual witness to `¬ Captured` without changing the model.

The new theorem therefore adds no general logic API. It packages the first implication together with an actual-appearance counterexample to the converse:

```text
(∀ M p, Captured p → IndividuallyCoverable p)
∧
(∃ M p, appears p ∧ IndividuallyCoverable p ∧ ¬ Captured p).
```

Reuse decision: **thin project-level packaging only**. No new predicate, model family, dependency, axiom, or classical principle is introduced.

## 2. Proof-infrastructure / external formalization gate

Before adding the wrapper, the run rechecked the direct Lean formal-phenomenology baseline `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163` using `horizon`, `captured`, `independent`, `exhaustible`, `conditioning`, `saturated`, and `Marion`. GitHub code search returned no same-shaped Marion/horizon API replacing the current elementary relation layer.

That negative search is narrow evidence only; it is not a claim that the external project lacks relevant phenomenological content.

The method baseline is unchanged: LogiKEy / AFP computational metaphysics and computational hermeneutics already establish semantic embeddings, interpretation variants, theorem proving, and countermodel workflows. The present theorem is elementary quantifier bookkeeping over already-audited local predicates and makes no methodological novelty claim. Because the proof reuses existing Lean-Core-level project theorems, importing a modal-logic or Mathlib stack would add no needed capability.

## 3. Same-topic interpretation recheck

Fresh searches on 2026-09-20 again recovered Shane Mackinlay's secondary exact-page reconstruction of *Being Given* BG 209–211 / early *Étant donné* 292–295: Marion distinguishes a phenomenon saturating a particular horizon, overflow requiring further horizons, and the strongest case in which no combination of horizons can tolerate the phenomenon's absoluteness. Brock Mason and other already-registered secondary literature reconstruct the same three-way sequence.

This is relevant to the formal guardrail but does not license an identification:

- `Captured` means one related horizon covers every **encoded aspect**;
- `IndividuallyCoverable` means the horizon may vary with the aspect;
- the formal theorem proves only that the second condition is strictly weaker in this model language;
- Marion's one/several/combined-horizon distinctions involve saturation, bedazzlement, hermeneutics, intuition, and phenomenality that are intentionally absent from this narrow model.

Accordingly the theorem is tagged FORMAL/model-theoretic, not a theorem *about Marion*.

## 4. Primary-source route recheck

The official *Filozofia* author page and article page for Jean-Luc Marion, “A Saturated Phenomenon,” 62(5), 2007, 378–402 were rechecked. The publisher page still exposes the official PDF route and its abstract still describes horizon as a constitutive condition of givenness, together with intuitive surplus and reversal of the constituting subject.

The article PDF fetch again timed out in this runtime. Search on the official `filozofia.sav.sk` domain returned the article/author metadata but not the internal body passage needed to establish textual identity with revised *Being Given* §21. Therefore the evidence state remains author-primary **metadata/abstract corroboration**, not direct body review of the stop-gate pages.

No unauthorized mirror was used to upgrade source status, and no access control was bypassed.

## 5. Interpretation consequence

This round tightens one claim already implicit in the repository:

> “No single related horizon exhausts the phenomenon” does not mean “its aspects cannot all be horizon-covered.”

That is now available as one audited project-level theorem with an actual appearing counterexample to the converse. It is useful because it prevents the first research question from silently exchanging `∃h∀a` with `∀a∃h` while discussing “one horizon” versus multiple horizon-relative presentations.

It does **not** solve the stronger historical question of how Marion's one / several / combined horizons should be represented, and therefore it does not justify adding a horizon-family or combination primitive before the direct-primary gate is satisfied.

## 6. Verification and stop-gate status

`Audit.lean` now includes `first_question_aspectwise_cover_is_strictly_weaker_than_capture`. The branch root already imports `FormalPhenomenology.FirstQuestion`, so the theorem remains on the normal build path.

This checkpoint is not considered verified until the exact final branch SHA completes the repository's `Lean verification` workflow, including build, source/root coverage, forbidden-placeholder scan, and axiom audit.

The first research question remains open. The material stop gate is unchanged: lawful direct body review of BG 209–212 (plus the tracked BG 225–226 check), early ED 292–297 / 314–315, the reliably mapped Spanish target, or an authorized revised reprint/translation whose body can be textually anchored to the same revised section.
