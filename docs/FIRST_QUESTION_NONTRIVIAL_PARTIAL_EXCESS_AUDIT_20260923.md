# First-question nontrivially partial excess audit

Date: 2026-09-23

Branch: `research/first-question-main-theorem-20260918`

## Scope

This round continues the narrow first research question rather than opening a fuller theory of saturation. The immediate formal check is whether the previously verified non-vacuity witness can be packaged with the project's actual `NonExhaustible` predicate, so that the countermodel simultaneously says:

1. the phenomenon actually appears and is structured;
2. every admitted horizon is related and conditioning;
3. every horizon positively admits at least one presented aspect;
4. every horizon misses at least one presented aspect; and
5. the phenomenon is `NonExhaustible` relative to all situated horizons.

The source-side check remains the revised Marion body gate. No textual access result below is used as evidence for a stronger historical attribution.

## External-first / reuse check

Before adding the wrapper theorem, a targeted code search was rerun across the already pinned comparison repositories:

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163`;
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759`;
- `alexoltean61/msphml-lean@9d6559db6502bc9813dcf028d7ea26ae80e9dc93`.

Query: `horizon partial exhaust presents admits`.

No same-shaped reusable declaration was located. This is a bounded reuse check, not a novelty claim. The new theorem is therefore implemented as a thin composition of existing project facts; no generic relation API, modal logic layer, Mathlib dependency, or new model family is introduced.

Same-topic interpretation remains constrained by the already registered Marion/Merleau-Ponty literature. In particular, this finite witness is not treated as a transcription of Marion's saturated phenomenon, and `NonExhaustible` remains only an extensional single-horizon notion in the selected aspect language.

## Formal increment

`FormalPhenomenology/FirstQuestionPerHorizonConditioning.lean` now adds:

`first_question_nontrivially_partial_horizons_support_nonExhaustible`.

It reuses exactly `splitDependentConditioning`, `splitModel_structure`, and `splitDependentConditioning_nonExhaustible`. The witness is the same Boolean split model used by the preceding horizon-by-horizon theorem. For horizon `false`, presented aspect `false` is admitted and `true` is missed; for horizon `true`, presented aspect `true` is admitted and `false` is missed. Both aspects are presented by the unique actual phenomenon.

The theorem therefore closes a packaging gap rather than a new logical gap: the preceding theorem already gave the positive/missed-aspect profile, while the model theorem already gave `NonExhaustible`. The new project-level entry point states both at once without strengthening the semantics.

`Audit.lean` lists the new declaration explicitly. No `sorry`, `admit`, `sorryAx`, custom axiom, unsafe shortcut, or global classical principle is introduced.

## Revised-primary source routing refresh

Three lawful/public routes were rechecked for the revised Marion body:

1. **PUF/Lavoisier eBook route** — the publisher-distributor page for EAN `9782130807490` still exposes `Télécharger un extrait`; the link resolves to `https://e.lavoisier.fr/extract/523630` with media type `application/epub+zip`. The current web reader rejects that binary content type, and the container download path also failed. No target passage was counted as read.
2. **Rakuten Kobo route** — the PUF eBook page exposes `Preview Now` / `Save Preview`, identifies book ID `9782130807490`, 540 pages, and print-equivalent page numbering. The accessible text surface does not expose the preview body or the §21 target passage in this runtime. This is preview-routing metadata only.
3. **Open Library / Internet Archive route for the 1997 PUF edition** — Open Library identifies `OL305529M`, ISBN `2130486770`, 452 pages, and Internet Archive item `etantdonneessaid0000mari_w5n7`, with a `Preview` control. In this runtime the preview control stays on the edition page and the linked item is still a borrow-controlled route; no login, loan, or restriction was bypassed and no target body was read.

Google Books continues to expose the 1997 edition's bibliographic/index surface, including the internal heading `Lhorizon`, but not the required target body. These routes narrow acquisition possibilities but do not satisfy the `PRIMARY-DIRECT-PAGE` stop gate.

## Reverse check / strongest baseline

The strongest internal logical baseline remains stronger than this wrapper in the dimensions that matter for the first question:

- `first_question_every_related_conditioning_horizon_still_nonexhaustive` already states per-horizon non-exhaustion;
- `first_question_every_related_conditioning_horizon_is_nontrivially_partial` already rules out empty/uninformative horizons;
- the finite-family/dominator and domain-extension theorems remain the stronger guardrails for horizon combination and idealized-domain objections.

Accordingly, this round does **not** report a new entailment result or historical discovery. It only provides a single audited witness entry point joining non-vacuity with the project's actual `NonExhaustible` predicate.

## Validation / handoff

Code commit: `7cffe48f392db1ee55bd5ff2573a81b05f1ba80d`.

Audit registration commit: `a149e3065757b63bf4690c7e1c96ff829e9a0e00`.

Final exact-head CI must be read after this documentation commit. The first research question remains open unless and until a revised Marion body route is lawfully read and mapped to the tracked BG/ED passages, after which the interpretation can be frozen and the full proof/audit stack rerun on the same final SHA.
