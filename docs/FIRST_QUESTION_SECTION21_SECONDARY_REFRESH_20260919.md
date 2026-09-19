# First-question §21 secondary exact-source refresh — 2026-09-19

## Scope

This checkpoint continues PR #31 on `research/first-question-main-theorem-20260918` after the direct-witness packaging pass.  It has two purposes:

1. rerun the required external-work gate before strengthening the final first-question kernel target; and
2. use newly surfaced page-specific secondary evidence to pressure-test the current `situated / conditions / Exhausts` interpretation without pretending that secondary quotation is direct review of Marion's revised §21 body.

No new philosophical primitive is introduced in this checkpoint.

## Engineering prior-art gate

Fresh repository checks were run before changing the aggregate theorem.

- `novaspivack/phenomenology-lean` is still at `75230e4eab333ad0fc47573747521ccc1a31a163` (2026-05-20). Targeted search for `horizon / exhaustibility / Marion / saturated / condition of possibility` still exposes no reusable API matching this project's narrow relation layer.
- `cbenzmueller/LogiKEy` is still at `b29954b0876d7991baf12f17378f31700f9de759` (2026-09-13). It remains methodological prior art for semantic embeddings, computational metaphysics / hermeneutics and countermodel-assisted reconstruction; it is not a sensible dependency for the Lean-Core aggregation changed here.

The formal change is therefore classified as **thin local reuse** of already audited results, not new logic and not an originality claim.

## Same-topic source refresh

Fresh searches were run around the revised Spanish route `Siendo dado` pp. 341–342 and the early French `Étant donné` pp. 292–295.

### Jaime Llorente 2015 — direct secondary HTML/PDF with exact SD page anchors

Source: Jaime Llorente, “El existir neutro como ‘fenómeno saturado’: describiendo la contra-experiencia del exceso con Emmanuel Levinas y Jean-Luc Marion,” *Tópicos (México)* 49 (jul./dic. 2015).  The SciELO article HTML and Redalyc PDF were directly read in this run.

Useful exact-page evidence:

- the article explicitly identifies the horizon as a condition of appearing that both receives and restricts phenomena, citing `Siendo dado` p. 341;
- it cites the §21 question whether some phenomena can exceed their horizon, again at SD p. 341;
- it reconstructs the ordered alternatives on SD pp. 341–342: remaining within one horizon, articulating several horizons for one saturated phenomenon, and a stronger case not captured by those alternatives;
- it later cites SD p. 344 for the strongest absolute case.

This is stronger navigation evidence than a bare page crosswalk because the secondary source exposes the local argumentative order and page anchors.  It is still **SECONDARY-DIRECT-HTML/PDF + EXACT-PAGE-QUOTATION**, not Marion's book body.

### Formal impact of the refreshed evidence

The refreshed §21 reconstruction continues to support the existing interpretation discipline rather than forcing a new API:

- `situated` should not be identified with `conditions`: a phenomenon can be discussed relative to horizon structure while the stronger issue is horizon as prior delimiting / possibility condition;
- `Horizonless` remains too strong as the default encoding, since the argument explicitly distinguishes one horizon, several horizons, and stronger excess rather than simply deleting horizon structure;
- `NonExhaustible` remains only a weak extensional excess axis.  The one-horizon / several-horizon / stronger-combination sequence shows why “no single related horizon exhausts p” is not the full content of Marion's saturated phenomenon;
- no secondary source checked here supplies the project-specific bridge `Captured -> Conditioned` or the same-horizon implication `situated ∧ Exhausts -> conditions`.

Therefore the current `Independent` reading remains a deliberately weak “not governed by horizon as prior conditioning” interface.  This checkpoint does not upgrade it to a full historical equivalence.

## Formal change

`FormalPhenomenology/FirstQuestion.lean` strengthens `first_question_complete_formal_answer` by incorporating the already verified concrete situated/non-exhaustible witness as an explicit conjunct:

```lean
∃ M : Presentation, M.HasSituatedExcess
```

The proof reuses `first_question_situated_nonExhaustible_witness`, which itself is only the existing `splitModel_situatedExcess` finite countermodel.  No theorem count is increased by the aggregate change, no new model is introduced, and the interpretation is not strengthened.

The reason for adding the conjunct is proof-object hygiene: the final kernel target now contains both the bare non-entailment and an explicit non-vacuous model witnessing situated appearance together with non-exhaustibility, so a downstream reader does not have to recover the witness from a separate theorem.

## Verification status

Formal commit:

- `4d36c24969f45fc1b96c8de5c40cd9ccce2deecc` — strengthen `first_question_complete_formal_answer` with the explicit situated witness.

This documentation commit follows it on the same branch.  The final branch SHA must pass the repository workflow (`python3 scripts/check.py`, root-module coverage, `lake build`, forbidden-placeholder scan and complete `#print axioms` audit) before the strengthened target is called kernel-verified.  The local container could not resolve `github.com`, so no local clone/build is claimed for this run.

## Source gate

The first research question remains open after this checkpoint.  The material stop gate is still lawful direct body-text review of revised §21: BG pp. 209–212, early ED pp. 292–297, SD pp. 341–342, or a reliably mapped formal reprint/translation carrying the revised passage itself.

The new Llorente evidence is intentionally not used to bypass that requirement.  It sharpens the expected ordering and interpretation checks to apply once the direct body is available.
