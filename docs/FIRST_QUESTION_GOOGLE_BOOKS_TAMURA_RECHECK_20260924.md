# First-question Google Books / Tamura recheck — 2026-09-24

Branch: `research/first-question-main-theorem-20260918`.
Pre-round head: `0bbe1274e6708586f1198d1998f4dae4238c8ea3`.

## Scope

This round keeps the first-question work source-first. The formal finite-cover/common-dominator boundary was already reverse-audited at the pre-round head, so a new theorem is justified only if a fresh source or reuse check changes the logical object. The concrete targets were therefore: (1) one fresh external-work check for the current horizon/exhaustibility object; (2) a fresh lawful revised-text access route check; and (3) exact-head regression verification of the existing Lean graph after recording the audit.

## Mandatory external-work gate

A fresh GitHub code search on 2026-09-24 used the query family `horizon exhaustive exhaustible conditioning capture` over the registered code baselines:

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163`;
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759`;
- `alexoltean61/msphml-lean@9d6559db6502bc9813dcf028d7ea26ae80e9dc93`.

The scoped search returned no same-shaped reusable horizon/exhaustibility/conditioning API. This is a bounded search result, not a nonexistence or novelty claim, and none of those external repositories was rebuilt in this runtime. The current consumer remains a Lean-Core relation-level specialization; there is no new generic API worth importing or porting.

Methodologically, the already-registered computational-hermeneutic / computational-metaphysics literature remains the prior-art baseline for “interpretive choice → formal encoding → theorem/countermodel comparison”. Nothing in this round changes that attribution.

## Fresh same-topic secondary prior art: Tamura 2025

A fresh same-topic search located the official J-STAGE record for:

- 田村 正資 / TAMURA Tadashi, `真理の手前で — 知覚における世界のリアリティ` (`Just Before the Truth: The Reality of the World in Perception`), 2025, vol. 29, pp. 101–118;
- DOI `10.14937/merleaujp.29.101`;
- publication / J-STAGE release date: 2025-09-20;
- publisher metadata: The Merleau-Ponty Circle of Japan.

The official abstract says that Merleau-Ponty characterizes reality not as a collection of separable objective properties but as an indeterminate structure or field that **cannot be exhaustively described by perception**, while distinguishing the reality of individual perceived objects from that of the encompassing world.

Reuse / interpretation decision:

1. this is relevant **secondary** prior art for the Merleau-Ponty side of the first question, because it independently reinforces the already registered primary-text direction that perceptual/horizonal givenness should not be normalized into automatic exhaustive closure;
2. it does not supply a formal `Captured`, `Conditioned`, `ClosureBridge`, finite-family, or common-dominator theorem;
3. it therefore constrains historical novelty language but does not replace any Lean API and does not replace the already directly checked Merleau-Ponty primary pages;
4. no new philosophical primitive or theorem is licensed by this abstract alone.

This is an incremental prior-art registration, not a claim that Tamura states the repository’s formal theorem.

## Lawful revised-Marion route recheck: Google Books

The public Google Books record for Jean-Luc Marion, *Being Given: Toward a Phenomenology of Givenness*, Jeffrey L. Kosky trans., Stanford University Press, 2002 (`id=l0UkDwAAQBAJ`) was re-opened on 2026-09-24.

The currently retrievable public record directly exposes:

- Jean-Luc Marion / Stanford University Press / 2002 / 408 pages;
- ISBN `0804785724`, `9780804785723` on this Google Books record;
- a `Limited preview` edition marker;
- the table of contents with chapter XXI beginning at p. 199, XXII at p. 212, and XXIII at p. 221;
- `horizon`, `intention`, `intuition`, `manifestation`, and `saturated phenomenon` among indexed common terms and phrases.

That is useful route/index evidence, but it is **not** the tracked body text. In the public retrieval available to this run, the target BG pp. 209–212 and 225–226 were not exposed as readable author pages. No login, purchase, loan, anti-bot mechanism, preview restriction, or other access control was bypassed. Accordingly this route remains:

`BOOK-PREVIEW-METADATA / TOC-AND-TERM-INDEX / TARGET-BODY-NOT-REVIEWED`.

It does not upgrade the revised-text evidence to `PRIMARY-DIRECT-PAGE` and does not close the stop gate.

For comparison, the already-registered Leung 2022 open article still provides exact secondary quotations from BG 211–212 / 225–226, including horizon as a `condition of possibility`; those quotations remain `SECONDARY-EXACT`, not a substitute for direct review of the revised author body.

## Reverse check against the strongest formal baseline

Before adding code, this round re-used the immediately preceding reverse audit `FIRST_QUESTION_FINITE_CONDITIONING_COVER_REVERSE_AUDIT_20260924.md`. The strongest current internal baseline already contains both sides needed for the narrow question:

- a positive pairwise-upper-bound/common-dominator route from finite cover to single-horizon `Captured` / `ClosureBridge`;
- an actual finite two-horizon conditioning cover under explicit mutual `situated ↔ conditions` that still leaves the appearing phenomenon `NonExhaustible`;
- an open-model obstruction in which even finite cover fails;
- exact finite-family/common-dominator normal forms.

Therefore a new wrapper saying “finite conditioning cover alone does not force closure” would only duplicate an existing same-witness theorem plus the exact positive boundary. This round records **NO-GO for another named Lean theorem**. That is deliberate de-duplication, not a retreat from formal work.

## Lean / validation decision

No definition, theorem, model family, axiom, dependency, or audit exception is added in this round. The Lean task is regression verification of the unchanged, root-reachable first-question theorem graph at this audit commit. The repository workflow must again run `python3 scripts/check.py`, the full `lake build`, root/source coverage, forbidden-placeholder checks, and the kernel axiom dependency audit on the exact post-commit SHA before this round can call the branch verified.

The pre-round head `0bbe1274e6708586f1198d1998f4dae4238c8ea3` already has exact-head PR workflow `35921485580 = success`; that earlier success is not reused as verification of this new audit commit.

## Remaining stop condition

The narrow formal answer remains closed; the research question is still open only at the revised-primary interpretation gate. Completion still requires lawful direct body review of one of the tracked routes:

- BG pp. 209–212 plus the tracked later pp. 225–226 passage;
- early ED pp. 292–297 plus 314–315;
- the mapped authorized Spanish revised route;
- or another authorized, reliably mapped revised reprint/translation exposing the corresponding body.

If direct revised text preserves the current separation between related horizon, horizon as prior condition, and exhaustive capture, freeze the interpretation and rerun the final exact-SHA proof/audit stack. If it forces a mismatch, add only the smallest text-required interface. Until then PR #31 remains intentionally open and unmerged.
