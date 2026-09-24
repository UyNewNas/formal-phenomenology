# First-question mutual-conditioning polarity audit — 2026-09-22

Branch: `research/first-question-main-theorem-20260918`.
Parent head inspected before this round: `6063f0df352bbdf7938c5721952bf4c5ef3b9c5e`.

## Question narrowed in this round

The previous four-quadrant guardrail showed that, under `ConditioningIsSituated`, both positive conditioning and weak independence can occur on either side of the `Captured` / `NonExhaustible` boundary. Its strongest obvious reverse objection was that `situated` and `conditions` were still allowed to differ extensionally in the captured positive-conditioning witness.

This round therefore pressure-tests only the positive-conditioning half under the stronger same-object assumptions

```text
UniversalStructure
ConditioningIsSituated
SituatedImpliesConditioning
```

so `situated p h` and `conditions p h` coincide extensionally on the witness models. The target is deliberately modest: check whether positive conditioning still underdetermines single-horizon exhaustibility once that simple free-relation objection is removed.

## External-work / reuse gate

Fresh code search used the query families `horizon conditioning capture exhaustibility` and `conditioned independent horizon` against the registered external baselines. No same-shaped reusable theorem or API was located in the bounded search.

Exact repository heads rechecked before implementation:

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163` (`main`, unchanged since 2026-05-20): direct Lean formal-phenomenology prior art, but no indexed horizon/conditioning/exhaustibility interface matching this theorem was found.
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759` (`master`, 2026-09-13): methodological precedent for shallow/deep semantic embeddings, computational metaphysics and countermodel work; not a dependency for this elementary finite-model packaging.
- `alexoltean61/msphml-lean@9d6559db6502bc9813dcf028d7ea26ae80e9dc93` (`itp2026`, 2026-02-20): modal-logic infrastructure; no same-shaped horizon/exhaustibility theorem was located.

This is a bounded search result, not a nonexistence or novelty claim. The reuse decision is to add no generic logic layer and no external dependency.

## Same-topic source refresh

A fresh web pass on `Marion horizon condition possibility saturated phenomenon 210 211`, `Merleau-Ponty horizon open unfinished perspectives inexhaustible`, and related terms located no lawful revised-primary body beyond the already registered access boundary.

- King-Ho Leung (2022), publisher HTML, continues to quote *Being Given* 211–212 for the claim that saturated phenomenality does not depend on a horizon understood as a condition of possibility. This supports keeping relatedness and conditioning distinct, but remains secondary exact evidence.
- Hilaire Ngoma Tassoulou (2023), journal page/abstract, continues to characterize the Merleau-Ponty world-horizon as inexhaustible. This corroborates the already directly checked Merleau-Ponty passages but does not provide a capture/conditioning bridge.
- Contemporary same-topic discussion continues to distinguish an appearing horizon from a priori delimiting conditions; none of the bounded sources located supplies the extensional theorem formalized below.

No unauthorized full-book mirror, paywall bypass or restricted loan content was used. The revised-primary completion gate therefore remains open.

## Formal increment

New theorem:

`first_question_mutual_conditioning_positive_polarity_underdetermines_exhaustibility`.

It proves the conjunction of two explicit witnesses. In both witnesses:

- the appearance is actual and `Structured`;
- `UniversalStructure` holds;
- every conditioning horizon is situated (`ConditioningIsSituated`);
- every situated horizon is conditioning (`SituatedImpliesConditioning`);
- hence `situated` and `conditions` coincide extensionally;
- the appearance is positively `Conditioned`.

But the first witness is `Captured`, while the second is `NonExhaustible`.

The captured witness is an inline `HorizonConditioning` wrapper over the already verified `closedModel`, with its sole horizon marked as conditioning. The non-exhaustible witness reuses `splitDependentConditioning`, where every horizon is both situated and conditioning. No new model family, philosophical primitive, classical principle or historical attribution is introduced.

This theorem is strictly a model-language pressure test. It does not identify positive conditioning, capture, or non-exhaustibility with Marionian saturation. It also does not claim that Merleau-Ponty or Marion makes `situated` and `conditions` extensionally identical; that mutual identification is a deliberately strong competing encoding used only to stress-test the previous guardrail.

## Reverse comparison with the strongest existing baseline

The stronger baseline already in the repository was `mutualSituatedConditioning_allows_conditioned_situatedExcess`, which supplied only the non-exhaustible side under mutual situated/conditioning coincidence. The new theorem adds the captured side under the same mutual-coincidence assumptions. Therefore the result is not obtained merely by comparing a mutual model against a weaker asymmetric model.

It also avoids the earlier weak-`Independent` freedom: both witnesses use positive `Conditioned`. The remaining variation is on the separate `Captured` / `NonExhaustible` axis itself.

This closes one natural presentation objection to the previous four-quadrant packaging, but it remains a current-round candidate under the project's reverse-review rule. It is not by itself a major philosophical result and does not close the revised-primary source gate.

## Verification checkpoint

Code commit: `05c5b6f0bb1523c4768c3f79baf0fb4e2144ef1e`.
Audit-list commit: `148040b1ff36e6a57611feee05c1872458ff6085`.

Exact-head workflow for `148040b1ff36e6a57611feee05c1872458ff6085` completed `success` as run `35641763813`. The job reached checkout, Lean setup, and the repository step `Build, source coverage, and kernel axiom audit`, all with `success`. The new declaration is listed in `Audit.lean`; no check was weakened or bypassed.

This documentation commit changes no Lean source. Its final SHA should still receive the ordinary exact-head workflow before the round is treated as fully handed off.

## Remaining stop gate / next entry

The first research question is not yet complete. Completion still requires lawful direct review of one mapped revised-primary route: BG 209–212 plus 225–226; early ED 292–297 plus 314–315; the mapped Spanish revised route; or an authorized reliably mapped revised reprint/translation.

If that source gate remains unavailable next round, the most useful reverse check is to ask whether any stronger bridge already present in the repository—especially one that links *capture itself* to conditioning rather than merely identifying the two horizon relations—collapses the two witnesses. Do not add another free predicate or model family merely to increase theorem count.
