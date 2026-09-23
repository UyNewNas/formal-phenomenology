# First-question per-horizon conditioning / non-exhaustibility audit

Date: 2026-09-23

Branch: `research/first-question-main-theorem-20260918`

## Question reviewed

The previous robustness checkpoint showed that an actual phenomenon can be positively `Conditioned` and `NonExhaustible` even when `situated` and `conditions` agree in both directions. This pass asks the stronger horizon-by-horizon question: can the same actual phenomenon be related to **every** admitted horizon and conditioned by **every** admitted horizon while every one of those horizons still fails to exhaust it?

This is a pressure test of the current relational encoding. It does not add a historical premise and it does not identify `NonExhaustible` with Marion's full saturated-phenomenon notion.

## External-first reuse check

The proposed theorem is a thin finite-model wrapper, so the reuse search was scoped to same-shaped relation / horizon APIs rather than to generic first-order logic.

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163`: targeted GitHub search for `horizon exhaustive conditioned situated` returned no same-shaped reusable API.
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759`: targeted search for `horizon exhaustive conditioning` returned no same-shaped horizon/exhaustibility API. LogiKEy remains methodological prior art for explicit semantic embeddings and countermodels, not a dependency needed by this finite witness.
- `alexoltean61/msphml-lean@9d6559db6502bc9813dcf028d7ea26ae80e9dc93`: the same targeted search returned no same-shaped reusable horizon API. Its modal proof infrastructure is not needed for this statement.

No new generic logical API, dependency, primitive, model family, or claim of novelty is introduced.

## Same-topic interpretation refresh

Ezequiel Daniel Murga, “La posibilidad de una horizonticidad no metafísica en Jean-Luc Marion,” *Logos. Anales del Seminario de Metafísica* 57(2) (2024), 309–325, DOI `10.5209/asem.94542`, remains directly accessible from the Universidad Complutense de Madrid journal site.

The article's pp. 312–313 distinguish two roles that matter for the present encoding: a horizon may remain involved in manifestation while the metaphysical problem lies in treating the horizon as an a-priori delimiter of the phenomenon's possibility. On p. 310 Murga also cites *Étant donné* 1997 p. 293 for Marion's proposal to use the horizon otherwise, freeing phenomenality from its “anterioridad delimitadora.” This is strong same-topic **secondary** evidence for keeping `situated` and `conditions` distinct or at least separately parameterized. It does not supply a formal theorem and it does not replace direct review of the revised Marion target body.

The official Lavoisier / PUF listing for the 2025 second edition of *Étant donné* identifies the PUF `Quadrige` edition, publication date 27 February 2025, 540-page ePub, EAN `9782130807490`, and exposes a public `Télécharger un extrait` route. The current retrieval runtime sees that excerpt as an `application/epub+zip` payload and cannot render its body as text/page images. No access restriction was bypassed and no target passage from that ePub is therefore counted as read.

Accordingly, this round changes no historical attribution and leaves the revised-primary stop gate open.

## Formal increment

Commit `807f4bdb32d72748d8067dcc32e46990274cdd02` adds module
`FormalPhenomenology/FirstQuestionPerHorizonConditioning.lean` with theorem

`first_question_every_related_conditioning_horizon_still_nonexhaustive`.

It exhibits a `HorizonConditioning` model and an actually appearing structured phenomenon `p` such that, for **every** admitted horizon `h`, all three facts hold simultaneously:

1. `M.base.situated p h`;
2. `M.conditions p h`;
3. `¬ M.base.Exhausts p h`.

The proof reuses `splitDependentConditioning`, `splitModel_structure`, and `splitDependentConditioning_nonExhaustible`. It adds no model and no new logical principle. Root import wiring was committed at `296a8c0afb08d1a8c0640409f3a9bfdc4391bfd0`; axiom-audit registration was committed at `4181dcc92ae532f85fb61dbe227b5ec74c60db44`.

## Strongest internal baseline / reverse check

The strongest existing internal baseline is already `splitDependentConditioning_nonExhaustible`: by definition it quantifies over **every situated horizon** of the actual phenomenon and denies `Exhausts` for each. Separately, the latest robustness theorems established total relatedness and mutual `situated ↔ conditions` on that model.

The new theorem therefore does **not** constitute a new logical discovery. It closes a presentational gap by binding those facts at the same `p` and the same universally quantified `h`. In particular, it blocks one simple mistaken repair of B: even requiring every admitted horizon to be both related and conditioning does not entail that one of them exhausts the phenomenon.

The theorem also does not show that adding a semantic operation that combines horizons would fail. Existing finite-family/dominator results already record that this is a separate premise. The current `Horizon` type is a domain of named horizons, not a closure-under-combination operation.

## Validation and stop-gate status

The new module is imported by `FormalPhenomenology.lean`, and the theorem is listed in `Audit.lean`. Final kernel/build status must be read from GitHub Actions for the exact final branch SHA after this audit document is committed; static inspection is not a substitute.

The first research question is not complete from this formal guardrail. The material stop gate remains lawful direct review of the mapped revised Marion body: *Being Given* 209–212 and the tracked later passage, early *Étant donné* 292–297 plus 314–315, or a reliably mapped authorized revised reprint/translation. Only after that source check can the interpretation be frozen or minimally revised and the final exact-SHA proof stack rerun.
