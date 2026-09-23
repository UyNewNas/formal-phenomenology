# Finite-conditioning-cover reverse audit — 2026-09-24

## Object

This round re-checks the newest mutual-conditioning finite-cover result against the strongest already available negative baseline before adding another theorem.

The candidate packaging would have said that, even under explicit mutual identification `situated ↔ conditions`, merely giving every appearing structured phenomenon a nonempty finite family of conditioning horizons that jointly covers all presented aspects does **not** force `ClosureBridge` unless some extra common-dominator / upper-bound mechanism is supplied.

That candidate is mathematically correct in the current language, but this audit records a **NO-GO for adding it as another named Lean theorem**: the repository already contains both the exact positive boundary and a same-witness negative result strong enough to recover the candidate immediately. Adding a new wrapper would increase theorem count without changing the first-question answer.

## Strongest internal baselines

The current branch already proves:

1. `first_question_mutual_conditioning_closureBridge_iff_finite_conditioning_cover_of_pairwise_upper_bounds` — under `SituatedImpliesConditioning + ConditioningIsSituated` and the explicit pairwise situated-upper-bound premise on the appearing/structured domain, `ClosureBridge` is exactly nonempty finite conditioning coverage.
2. `first_question_finite_family_cover_alone_does_not_force_capture` — finite situated coverage alone does not force single-horizon capture.
3. `first_question_mutual_conditioning_two_horizons_joint_cover_still_nonExhaustible` — in the concrete `splitDependentConditioning` witness, `situated` and `conditions` coincide in both directions, two distinct conditioning horizons jointly cover every presented aspect, and the actual phenomenon is nevertheless `NonExhaustible`.
4. `first_question_open_mutual_conditioning_no_finite_cover` — the open `expandingModel` pressure test shows the different failure mode in which even finite coverage itself is unavailable despite maximal simple mutual conditioning.
5. `first_question_nonExhaustible_iff_every_finite_cover_has_no_dominator` and `first_question_captured_iff_exists_finite_family_with_dominator` — the exact finite-family/common-dominator boundary independently identifies what collapses plural finite coverage back to the project’s single-horizon `Captured` predicate.

Hence the proposed new universal non-implication would be only a thin repackaging of item 3 (or item 2 after relabelling by mutual conditioning), while the newest positive theorem already displays the needed additional premise. The best reuse decision is therefore to keep the theorem graph unchanged and treat the missing pairwise-upper-bound/common-dominator structure as already closed at the formal level.

This also supplies the requested reverse check against the strongest baseline: the positive theorem is not being compared merely with a weaker “no finite cover” example. The finite Boolean witness has an actual finite conditioning cover and still fails capture; the open model separately shows failure of finite coverage. These are distinct obstructions.

## Mandatory external-work gate

### Formal / engineering reuse

Fresh targeted GitHub code searches on 2026-09-24 used combinations of:

- `horizon finite cover capture exhaustion conditioning`;
- `horizon combination finite list upper bound`.

Repositories checked at their current registered commits:

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163`;
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759`;
- `alexoltean61/msphml-lean@9d6559db6502bc9813dcf028d7ea26ae80e9dc93`.

The scoped searches returned no same-shaped reusable finite-cover / horizon-conditioning API. This is a bounded reuse result, not a nonexistence or novelty claim. Those external repositories were not rebuilt in this runtime.

No new generic finite-set, order, modal, or semantic-embedding infrastructure is required. The current result remains a Lean-Core relation-level specialization, so importing a larger Mathlib/LogiKEy/AFP stack would add dependency cost without changing the consumer proof.

### Method overlap

Fuenmayor / Benzmüller computational-hermeneutic work remains the method baseline for the overall pattern “interpretive choice → formal encoding → theorem/countermodel comparison”. The present reverse audit does not claim that method as a project contribution.

### Same-topic interpretation and primary-source route

The historical boundary is unchanged: a finite `List Horizon` in this repository is only a finite family of named horizons with disjunctive aspect coverage. It is **not** Marion’s stronger semantic notion of a “combination of horizons”. Existing Mason / Leung / Mackinlay / Murga / Djian / Deketelaere material remains secondary interpretive prior art for the one/several/no-combination and horizon-as-condition distinctions.

Fresh lawful retrieval on 2026-09-24 rechecked the official De Gruyter Brill record for *Being Given* (`https://www.degruyterbrill.com/document/doi/10.1515/9780804785723/html`): it exposes the table of contents and confirms §21 `Sketch of the Saturated Phenomenon: The Horizon` begins at p. 199 and §22 begins at p. 212, but the ordinary public route used here did not expose the tracked BG 209–212 / 225–226 author body.

The current PUF/Lavoisier 2025 *Étant donné* route (`https://e.lavoisier.fr/produit/72567/9782130807490/etant-donne`) likewise confirms the authorized edition / excerpt route but does not, in the retrieval available here, expose the mapped ED 292–297 / 314–315 target body. No login, purchase, loan, preview restriction, or other access control was bypassed.

Therefore the revised-primary stop gate remains open. This access limitation is not evidence for either interpretation.

## Lean / proof decision

No new definition, primitive, axiom, model family, or named theorem is added in this round. This is deliberate de-duplication, not inactivity: the candidate theorem was checked against the exact existing positive and negative baselines and rejected as redundant.

The Lean task for this round is regression verification of the already root-reachable theorem graph at the new audit commit. In particular, the exact-head CI must still execute the repository’s `python3 scripts/check.py`, full `lake build`, root/source coverage, forbidden-placeholder scan, and kernel axiom dependency audit. A documentation commit is not treated as proof verification until that exact commit’s Actions run succeeds.

## Remaining stop condition / next entry

The formal side of the finite-cover/common-dominator boundary is closed for the narrow first question; further wrappers should not be added unless they change the logical object or are required by direct text.

The only material completion gate remains lawful direct review of a revised Marion body route: BG pp. 209–212 plus the tracked later passage, early ED pp. 292–297 plus 314–315, or an authorized reliably mapped revised reprint/translation exposing the corresponding body. If that direct body preserves the current `related horizon` versus `horizon as prior condition` distinction, freeze the interpretation and run the final exact-SHA proof/audit stack; if it forces a mismatch, add only the smallest text-required interface.
