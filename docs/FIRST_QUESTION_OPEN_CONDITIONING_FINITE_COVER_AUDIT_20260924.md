# Open mutual-conditioning / finite-cover audit — 2026-09-24

## Object checked

This round pressure-tests a specific strengthening of the first horizon question without adding a semantic horizon-combination operator:

- every admitted horizon is related to the actual appearance;
- `situated` and `conditions` coincide in both directions;
- every horizon is therefore positively conditioning;
- ask whether some **finite list of named conditioning horizons** must jointly cover every encoded aspect.

The target is deliberately weaker than Marion's historical phrase about a *combination* of horizons. A `List Horizon` below is only a finite list whose members cover aspects disjunctively through the existing `admits` relation.

## Mandatory external-work gate

Date: 2026-09-24.

### Formal / engineering reuse

Targeted GitHub code searches for `horizon finite cover conditioning exhaust` were run against the three already registered formal baselines:

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163`;
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759`;
- `alexoltean61/msphml-lean@9d6559db6502bc9813dcf028d7ea26ae80e9dc93`.

No same-shaped reusable API was returned in those scoped searches. This is a bounded reuse decision, not a claim that no external formalization exists. None of those external repositories was rebuilt in this runtime.

The generic finite-upper-bound / directedness baseline already recorded from Mathlib remains method precedent only. This round does not need a new dependency: the repository's existing `expandingModel_no_finite_list_cover` already proves the exact finite-list fact needed for the current phenomenon-relative `admits` relation.

### Same-topic interpretive prior art

Brock Mason's open Aporia PDF, *Saturated Phenomena, the Icon, and Revelation*, p. 35, explicitly distinguishes (1) one horizon, (2) spilling into multiple horizons, and (3) the stronger case in which no combination of horizons can tolerate the phenomenon, while citing *Being Given* 210–211. This remains SECONDARY-EXACT navigation, not direct review of the revised book body.

Ezequiel Daniel Murga 2024, official UCM open-access PDF, p. 321, cites *Étant donné* 1997 p. 293 and distinguishes using horizon otherwise from treating the horizon's delimiting anteriority as the condition of phenomenal possibility. This remains a same-topic interpretive baseline for keeping `situated` and `conditions` conceptually separable unless an explicit competing reading identifies them.

Fresh web retrieval did not expose lawful direct revised BG 209–212 / early ED 292–297 body in this round. The direct-primary stop gate is therefore unchanged. Unauthorised full-book mirrors were not used.

## Reuse decision

No new philosophical primitive or model family is required. Reuse:

- `expandingModel` for the open natural-number horizon domain;
- `expandingModel_no_horizon_exhausts` for single-horizon failure;
- `expandingModel_no_finite_list_cover` for the finite-family baseline;
- the existing `HorizonConditioning` layer for the explicit competing reading `situated ↔ conditions`.

The new `expandingDependentConditioning` is only a thin wrapper setting `conditions := True` over the existing open model.

## Formal increment

`FormalPhenomenology/FirstQuestionOpenConditioningFiniteCover.lean` adds:

- `expandingDependentConditioning_mutual`;
- `expandingDependentConditioning_no_finite_conditioning_cover`;
- `first_question_open_mutual_conditioning_no_finite_cover`.

The project-level theorem exhibits an actual structured appearance for which:

1. `ConditioningIsSituated` and `SituatedImpliesConditioning` both hold;
2. every horizon is positively related and conditioning;
3. the appearance is `NonExhaustible`;
4. every finite list of named conditioning horizons still fails to cover all presented aspects.

This closes a narrow reverse-check: maximal simple conditioning plus open-ended horizons does not manufacture a finite exhaustive family. It does **not** prove Marion's stronger no-combination thesis, because the current language still has no semantic horizon-combination operation.

## Validation status

The code is committed only after preserving the existing zero-placeholder / root-import / `#print axioms` policy. Exact-SHA GitHub Actions is the kernel verdict; until that workflow succeeds, this file should be read as a source/proof handoff rather than a verified result.

## Remaining stop condition

The first research question remains open at the material source gate: lawful direct body review of the revised Marion passage (BG 209–212 plus the tracked later passage, early ED 292–297 plus 314–315, or an authorized reliably mapped revised reprint/translation). No additional saturation vocabulary is justified by this round.
