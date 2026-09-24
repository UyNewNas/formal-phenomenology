# Mutual-conditioning finite-cover exactness audit — 2026-09-24

## Object

This round checks a narrow strengthening of the first horizon/exhaustibility question after the open-horizon finite-cover countermodel was already in place.

The competing encoding being pressure-tested is explicit:

- `ConditioningIsSituated`: every conditioning horizon is a related/situated horizon;
- `SituatedImpliesConditioning`: every related/situated horizon is also a conditioning horizon;
- hence `situated` and `conditions` coincide extensionally for the fixed phenomenon;
- the existing pairwise situated-upper-bound premise is retained as the structural mechanism that can collapse finite plural coverage to one situated dominator.

The question is whether, under those *explicit* assumptions, ordinary `Captured p` is exactly the existence of a nonempty finite family of conditioning horizons whose members jointly cover all currently encoded aspects.

## Mandatory external-work gate

### Formal / engineering reuse

Targeted GitHub code search on 2026-09-24 used the terms `finite cover conditioning horizon` against the already registered baselines:

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163`;
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759`;
- `alexoltean61/msphml-lean@9d6559db6502bc9813dcf028d7ea26ae80e9dc93`.

The scoped search returned no same-shaped reusable API. This is a bounded reuse result, not a novelty claim, and those external repositories were not rebuilt in this runtime.

No new generic finite-set/order infrastructure is required. The repository already contains the stronger reusable core theorem

`first_question_captured_iff_nonempty_finite_situated_cover_of_pairwise_upper_bounds`

in `FirstQuestionFiniteCoverExactness.lean`. The new theorem is therefore deliberately a thin adapter that only transports the finite family between `situated` and `conditions` using the two already-existing mutual-conditioning hypotheses. No Mathlib/LogiKEy/AFP dependency is added.

### Same-topic interpretation

Fresh source-first checking retained the existing interpretation boundary rather than creating a new philosophical primitive.

- Nikolaas Deketelaere, “Givenness and existence: On the possibility of a phenomenological philosophy of religion,” *Palgrave Communications* 4, 127 (2018), DOI `10.1057/s41599-018-0184-7`, is openly available from Springer Nature. Its discussion cites Marion, *The Visible and the Revealed* (2008), distinguishing a horizon as an a-priori condition/limit from a phenomenon that nevertheless presents itself in a horizon by saturating it. The article’s references identify the relevant Marion items as “The Possible and Revelation,” pp. 1–17, and “The Saturated Phenomenon,” pp. 18–48. This is SECONDARY-DIRECT-HTML and remains prior art for keeping `situated` and `conditions` separable; it does not supply the current extensional finite-cover theorem.
- Ezequiel Daniel Murga (2024), official UCM open-access PDF, p. 321, cites *Étant donné* 1997 p. 293 and distinguishes using horizon otherwise from treating its delimiting anteriority as the condition of phenomenal possibility. This is already registered same-topic prior art for the same separation.
- Brock Mason’s open Aporia article remains the exact-page secondary baseline for the one-horizon / multiple-horizon / no-combination distinction around *Being Given* 210–211. A finite `List Horizon` with disjunctive `admits` coverage is therefore still explicitly weaker than Marion’s semantic phrase about a “combination” of horizons.

Fresh web retrieval on 2026-09-24 again located publisher metadata, secondary exact quotations/crosswalks, and the open Springer Nature discussion, but did not lawfully expose the revised *Being Given* 209–212 / 225–226 or early *Étant donné* 292–297 / 314–315 author body. No access control was bypassed. The direct-primary stop gate is unchanged.

## Formal increment

`FormalPhenomenology/FirstQuestionFiniteCoverExactness.lean` now adds

`first_question_mutual_conditioning_captured_iff_nonempty_finite_conditioning_cover_of_pairwise_upper_bounds`.

For a fixed `p`, assuming both directions of `situated ↔ conditions` and the existing pairwise situated upper-bound hypothesis, Lean states:

```text
Captured p
↔
∃ hs : List Horizon,
  hs ≠ [] ∧
  (∀ h ∈ hs, conditions p h) ∧
  (∀ a, presents p a → ∃ h ∈ hs, admits h a).
```

Proof map:

1. `Captured → finite conditioning cover`: use the already proved situated finite-cover normal form; then map each situated member to conditioning via `SituatedImpliesConditioning`.
2. `finite conditioning cover → Captured`: map each conditioning member back to situated via `ConditioningIsSituated`; then consume the same existing situated finite-cover theorem.

No classical principle, new model family, new philosophical predicate, or new semantic horizon-combination operator is introduced.

## Reverse-check against strongest baseline

This theorem is not stronger than the previously available situated result; it is intentionally definition/assumption transport over that stronger baseline. Its value is to make the *competing mutual-conditioning encoding* consume the correct existing finite-cover theorem rather than silently treating “conditioning family” as a new notion of combination.

It also fits the immediately preceding open model result:

- `first_question_open_mutual_conditioning_no_finite_cover` shows that even maximal simple mutual conditioning in `expandingModel` does not itself produce any finite conditioning cover;
- the new exactness theorem says that **if** a nonempty finite conditioning cover *and* the explicit pairwise upper-bound structure are supplied, then under the same mutual-conditioning reading they are exactly enough for `Captured`.

Thus the remaining gap is located in finite coverage / upper-bound structure, not in a hidden inference from `conditions` to exhaustion.

## Validation / handoff

Code commits:

- `e81221a831992dfbd7d5d9fcbb7fc0943a594426` — theorem and provenance-preserving import;
- `ff6793979bab2347a919ffa8cd9315a9743dd0b0` — `Audit.lean` registration.

This documentation commit is written after those source changes. Exact-head GitHub Actions remains the kernel/build/root/audit verdict. Until the workflow for the final documentation head succeeds, the new theorem is recorded as **written + committed + audit-registered, pending exact-head kernel verification**.

## Remaining stop condition

The first research question is not complete in this round. The formal implication/compatibility map is increasingly closed, but the project’s material stop gate still requires lawful direct review of the revised Marion body (BG 209–212 plus the tracked later passage, early ED 292–297 plus 314–315, or an authorized reliably mapped revised reprint/translation). No new saturation vocabulary is justified before that source gate is satisfied.
