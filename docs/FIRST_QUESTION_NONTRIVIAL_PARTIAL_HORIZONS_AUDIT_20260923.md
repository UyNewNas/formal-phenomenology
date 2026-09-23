# First-question nontrivially partial horizons audit

Date: 2026-09-23

Branch: `research/first-question-main-theorem-20260918`

## Question reviewed

The previous per-horizon checkpoint showed that one actual phenomenon can be related to and conditioned by every admitted horizon while none of those horizons exhausts it. This round checks a simple reverse objection: perhaps that counterexample works only because one or more horizons are extensionally empty or otherwise fail to present any positive part of the phenomenon.

The target is therefore stronger in a different direction: at the same actual phenomenon and for every horizon, require both a positively admitted presented aspect and a presented aspect that the horizon misses.

## External-first reuse check

Before adding the wrapper theorem, targeted code searches were run against the already pinned comparison repositories:

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163`;
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759`;
- `alexoltean61/msphml-lean@9d6559db6502bc9813dcf028d7ea26ae80e9dc93`.

The query `horizon admits aspect exhaust presents partial` returned no same-shaped reusable horizon/exhaustibility API. This is a bounded reuse check, not a novelty claim. No new generic logical API or dependency was introduced.

The same-topic literature refresh also found no reason to strengthen the historical attribution. Deery 2025 describes Merleau-Ponty's horizon as opening an object to further exploration and alternative determinations; current secondary summaries likewise emphasize situated/partial perspective. These are interpretation constraints, not a theorem source. The project therefore continues to treat the finite Boolean witness as a formal pressure test rather than as a direct transcription of Merleau-Ponty.

For Marion, the official Lavoisier/PUF 2025 eBook record still exposes a public `Télécharger un extrait` link for EAN `9782130807490`. The link resolves to `https://e.lavoisier.fr/extract/523630` with content type `application/epub+zip`, but the current web runtime cannot render that binary payload and a second container download path could not resolve the host. No target passage was counted as read, and no access restriction was bypassed. The revised-primary stop gate therefore remains open.

## Formal increment

Commit `ee88e97356b12f41f79d4d75e236029213d0dba2` extends `FormalPhenomenology/FirstQuestionPerHorizonConditioning.lean` with

`first_question_every_related_conditioning_horizon_is_nontrivially_partial`.

It reuses the existing `splitDependentConditioning` model and gives one actually appearing structured phenomenon `p` such that for every horizon `h`:

1. `situated p h`;
2. `conditions p h`;
3. some presented aspect is admitted by `h`;
4. some presented aspect is not admitted by `h`.

Thus every horizon is extensionally nonempty on the presented-aspect domain while still being genuinely partial. The proof adds no model, primitive, classical principle, or semantic horizon-combination operation.

Commit `808cff3d9529b572fb121b98b20ce83f4186d348` registers the theorem in `Audit.lean`.

## Strongest baseline / reverse check

The strongest previous internal baseline is `first_question_every_related_conditioning_horizon_still_nonexhaustive`, which already quantifies over every horizon at the same actual phenomenon and states `¬ Exhausts p h`. The present theorem does **not** improve the logical non-entailment itself. Instead, it closes the narrower vacuity loophole that `¬ Exhausts` might arise because a horizon contributes no positive aspect at all.

The split witness is exact enough to show both sides directly: for horizon `false`, aspect `false` is admitted and `true` is missed; for horizon `true`, aspect `true` is admitted and `false` is missed. Both aspects are presented by the phenomenon.

This still says nothing about a semantic operation that combines or idealizes horizons. The existing finite-family/dominator and domain-extension modules remain the stronger baselines for that separate issue.

## Validation / handoff

The theorem is root-reachable because its containing module was already imported by `FormalPhenomenology.lean`; the new declaration is explicitly listed in `Audit.lean`. Final build, source-coverage, and kernel-axiom status must be read from the exact final branch SHA's GitHub Actions run after this document commit.

The first research question is not complete from this robustness increment. The material stop gate remains direct lawful review of a reliably mapped revised Marion body (BG 209–212 plus the tracked later passage; early ED 292–297 plus 314–315; or an authorized mapped revised reprint/translation).