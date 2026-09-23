# First-question public-excerpt route audit — 2026-09-24

Branch: `research/first-question-main-theorem-20260918`.

Pre-round exact head: `51638316af5dd087cb19ff6a369cac24f64d6402`.

## Scope

This round remains source-first. The narrow relation-level answer is already formalized and kernel-audited, so a fresh theorem is justified only if new source evidence or external formal work changes the object that must be proved. The concrete tasks were:

1. re-read the live first-question branch/PR, Issue #1, `AGENTS.md`, `ROADMAP`, `RESULTS`, `INTERPRETATION`, and the source/provenance ledger;
2. rerun the bounded external formal-work duplicate search for the current `horizon / exhaustibility / conditioning / capture` object;
3. test lawful public routes to a revised Marion text, especially the current PUF/Lavoisier edition and the 2025 collected edition;
4. compare any new evidence against the strongest existing formal baseline before adding code;
5. commit the audit and require exact-head Lean/build/source/axiom regression verification.

## Mandatory external-work gate

Fresh GitHub code searches used the query `horizon exhaustive exhaustible conditioning capture` against the registered live baselines:

- `novaspivack/phenomenology-lean`;
- `cbenzmueller/LogiKEy`;
- `alexoltean61/msphml-lean`.

The scoped searches returned no same-shaped reusable API. This is only a bounded reuse decision; it is not a claim that no related work exists. LogiKEy / AFP and computational-hermeneutic work remain method precedents, and the current consumer still does not justify importing a modal-logic or semantic-embedding stack for relation-level statements already handled by Lean Core.

No new generic definition, theorem, dependency, or proof infrastructure is introduced in this round.

## Lawful revised-text route recheck

### PUF/Lavoisier 2025 `Étant donné`

The official Lavoisier product route for Jean-Luc Marion, *Étant donné : Essai d'une phénoménologie de la donation*, PUF, February 2025, identifies the item as the second edition, ePub, 540 pages, EAN `9782130807490`, with paper EAN `9782130624813`:

- `https://e.lavoisier.fr/produit/72567/9782130807490/etant-donne`

The publisher-facing page exposes a public `Télécharger un extrait` link. Following that ordinary public link reaches an `application/epub+zip` payload. The current web retrieval frontend cannot ingest that content type, and the container runtime used for local inspection has no external DNS route. Therefore the excerpt body was **not** read in this round.

Evidence status remains:

- `PRIMARY-PUBLISHER-METADATA / PUBLIC-EXCERPT-ROUTE`;
- **not** `PRIMARY-DIRECT-BODY`;
- no login, purchase, loan, DRM, anti-bot mechanism, or preview restriction was bypassed.

This is a runtime-format/access-path limitation, not evidence that the publisher route lacks a public excerpt.

### 2025 collected edition `Le phénomène et le donné`

A fresh public search also checked the PUF collected edition *Le phénomène et le donné* (EAN `9782130886686`, publication 29 October 2025). FNAC exposes a `Feuilleter` surface and identifies the collection as including *Étant donné*; Decitre independently confirms the collected-volume metadata. In the ordinary retrieval path available here, neither surface exposed a target-body passage or a stable sample file that could be mapped to revised §21.

Status: `PUBLISHER/RETAIL-METADATA + SAMPLE-UI-ROUTE`, not direct body review.

## Exact-phrase/source comparison

Targeted searches for the revised horizon passage (`antériorité délimitatrice`, horizon saturation, several/combined horizons) again recovered secondary exact witnesses rather than an authorized revised-book body. In particular, the open Érudit PDF for Aurélien Djian (2018) reproduces the familiar horizon passage and remains secondary exact evidence. It does not replace the direct revised-primary stop gate.

The 2025/2026 same-topic literature found in this pass does not strengthen the formal target beyond the already registered Lind/Murga/Djian baseline: broad claims that saturated givenness exceeds anticipation, constitution, or horizonal delimitation are prior interpretive work. They do not provide the repository's exact extensional `conditions / Exhausts / Captured` bridge.

## Source-ledger consistency

The previously identified provenance correction remains in force: *Filozofia* 62(5) (2007) is Josef Fulka's translation witness in the same 1992 `Le phénomène saturé` source lineage as Carlson 1996, not an independent later Marion composition. The authoritative repository record is:

- `docs/MARION_2007_TRANSLATION_PROVENANCE_20260921.md`.

The stale heading in the consolidated `docs/SOURCES.md` (`另一条作者本人旁证：Marion 2007`) must therefore not be used to double-count independent author evidence. This round does not change the correction or its formal consequences; it only confirms that no fresh source route reverses it.

## Reverse check against the strongest formal baseline

No new Lean theorem is warranted by this source pass. The current branch already contains and audits the stronger relation-level facts needed for the first question, including:

- `UniversalStructure` does not entail `ClosureBridge`;
- the failure persists under explicit mutual `situated ↔ conditions` pressure tests;
- positive `Conditioned` can coexist with `NonExhaustible`;
- fixed-pair and finite-family cover do not by themselves force single-horizon `Captured`;
- common-dominator / suitable finite-upper-bound structure is already isolated as the positive finite-cover route;
- the finite-family objects are lists of named horizons, not a semantic formalization of Marion's historical “combination of horizons”.

The new source-route facts change none of those premises. Adding another wrapper would duplicate the verified proof graph and would violate the project's no-theorem-count-padding discipline.

Lean work for this round is therefore **regression verification of the unchanged formalization on the exact post-audit SHA**, not invention of a new logical claim.

## Remaining stop condition

The first question is not complete. The remaining material gate is still lawful direct review of a reliably mapped revised body, for example:

- *Being Given* pp. 209–212 plus the tracked pp. 225–226 check;
- early *Étant donné* pp. 292–297 plus 314–315;
- the mapped authorized Spanish revised passage;
- an authorized reprint/collected-edition route whose corresponding body can be directly read and textually mapped.

If that direct body preserves the current separation among related horizon, horizon as prior condition, and exhaustive capture, freeze the interpretation and run the final proof/audit stack on the same final SHA. If it forces a mismatch, add only the smallest source-required interface and re-run all checks.

## Verification requirement

This documentation commit is not itself proof verification. The exact resulting SHA must pass the repository workflow running `python3 scripts/check.py`, full `lake build`, root/source coverage, forbidden-placeholder scan, and kernel axiom dependency audit before it is used as a validated checkpoint.
