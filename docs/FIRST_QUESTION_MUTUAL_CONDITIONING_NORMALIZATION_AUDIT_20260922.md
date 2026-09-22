# First-question mutual-conditioning normalization audit

Date: 2026-09-22

Branch: `research/first-question-main-theorem-20260918`

Starting checkpoint: `14b9a661ae1533256b9652dbed857a3144a3e626`.

## Why this increment is allowed

The existing first-question pressure test already assumes, explicitly and only for comparison, both directions

```text
conditions p h → situated p h
situated p h → conditions p h
```

and had already proved the negative-polarity normalization

```text
Independent p ↔ ¬ Structured p.
```

The positive existential side had only been used indirectly in the finite countermodel. The small missing normalization is therefore the same-object, same-assumption statement

```text
Conditioned p ↔ Structured p.
```

No new relation, model family, classical principle, or historical attribution is needed.

## Mandatory external-work check

Before writing the theorem, a targeted GitHub code search was run for

`horizon conditioning structured conditioned exhausted exhaustible situated`

across the registered direct/methodological baselines:

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163`;
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759`;
- `alexoltean61/msphml-lean@9d6559db6502bc9813dcf028d7ea26ae80e9dc93`.

No same-shaped reusable horizon/conditioning/exhaustibility API was returned by that scoped search. This is a bounded negative search result, not a claim that no prior formal work exists. LogiKEy / AFP / computational-hermeneutic work remains methodological prior art rather than a dependency for this elementary existential equivalence.

A broader web search for formal phenomenology + horizon/exhaustibility/conditioning likewise did not identify a prover library that should replace this relation-level adapter; irrelevant uses of “horizon” and “exhaustibility” were excluded.

## Same-topic interpretation refresh

Two recent publisher-hosted secondary sources were checked because the theorem concerns the deliberately strong competing reading `situated ↔ conditions`:

1. Timothy J. Schatz, “Whose reduction? Which givenness? Michel Henry, Jean-Luc Marion, and the fourth principle of phenomenology,” *Continental Philosophy Review* 59 (2026), 125–152, DOI `10.1007/s11007-025-09706-1`, open-access version of record published 2025-09-07. The article describes Marionian saturation through excess / endless possible appearing and continuing hermeneutic openness. It does not identify every related horizon with a conditioning horizon and supplies no extensional bridge matching this theorem.
2. Andreas Goncalves Lind, “Givenness as the Opening of All Phenomenological Possibility: Marion’s Overcoming of Henry Through Heidegger,” *Philosophies* 11(4), 145 (2026), DOI `10.3390/philosophies11040145`. It again describes Marion’s project as opening givenness beyond horizons of constitution or anticipation. This reinforces the existing reason to keep `situated` and `conditions` distinct by default; it does not make mutual identification a historical attribution.

The official De Gruyter/Stanford *Being Given* page was rechecked. It still confirms §21 `Sketch of the Saturated Phenomenon: The Horizon` at p.199 and §22 at p.212, but the target BG pp.209–212 / 225–226 body was not lawfully exposed in this runtime. The revised-primary stop gate therefore remains open.

## Formal result

New module:

`FormalPhenomenology/FirstQuestionMutualConditioningNormalization.lean`

New theorem:

`first_question_mutual_conditioning_conditioned_iff_structured`

with exact hypotheses

```text
hForward  : SituatedImpliesConditioning
hBackward : ConditioningIsSituated
```

and conclusion

```text
Conditioned p ↔ Structured p.
```

The forward direction reuses `conditioningIsSituated_conditioned_implies_structured`; the reverse direction reuses the situated witness and `hForward`. The theorem is only the positive existential companion to the already verified `mutualSituatedConditioning_independent_iff_notStructured`.

Interpretive boundary: this theorem says what follows **if** the two model relations are mutually identified. It does not say Merleau-Ponty or Marion endorses that identification. In fact, the source ledger and current same-topic literature remain reasons not to bake the equivalence into the definitions.

## Validation / stop check

`FormalPhenomenology.lean` imports the new module and `Audit.lean` lists the theorem for the zero-axiom policy. Exact-final-SHA GitHub Actions is the authoritative build/root-coverage/placeholder/kernel-audit verdict; no pre-write workflow is reused as validation of this increment.

The first research question is not complete in this checkpoint. The formal increment closes only the positive polarity of one already-declared pressure test. The remaining material gate is still lawful direct review of revised Marion §21 body (BG pp.209–212 plus the tracked later passage, early ED pp.292–297 plus 314–315, or a reliably mapped authorized revised reprint/translation).
