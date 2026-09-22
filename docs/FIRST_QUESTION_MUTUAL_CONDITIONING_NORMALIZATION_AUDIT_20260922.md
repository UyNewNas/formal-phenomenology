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

## Follow-up: conditioned excess profile normalization

A second targeted check in the same registered external code baselines searched

`conditioned horizon situated exhaustible excess structured`

and again found no same-shaped reusable API. Since the new statement is only an existential lifting of the already proved pointwise equivalence, no new logic framework or dependency was introduced.

The follow-up theorem

`first_question_mutual_conditioning_conditioned_excess_iff_situatedExcess`

proves, under the exact same two explicit relation-identification hypotheses,

```text
(∃ p, appears p ∧ Conditioned p ∧ NonExhaustible p)
↔
HasSituatedExcess(base).
```

This closes a useful interpretive guardrail around the previously verified positive witness: once `situated` and `conditions` are mutually identified, a `Conditioned ∧ NonExhaustible` witness is not a stronger Marion-like object than the repository's existing `Structured ∧ NonExhaustible` situated-excess profile. It is the same encoded profile under the competing identification assumptions. The theorem therefore prevents the auxiliary conditioning vocabulary from creating spurious historical strength.

The source-side search also located the 2008 Spanish translation *Siendo dado* (Síntesis, ISBN `9788497565561`) and a 2026 UNED doctoral thesis that quotes ED pp.292–293 while cross-referencing the Spanish translation at pp.341–342. This improves the lawful crosswalk route but remains **secondary quotation / bibliographic mapping**, not direct-primary reading of the revised book body. It does not close the stop gate.

## Validation / stop check

`FormalPhenomenology.lean` imports the normalization module and `Audit.lean` now lists both normalization theorems for the zero-axiom policy. Exact-final-SHA GitHub Actions is the authoritative build/root-coverage/placeholder/kernel-audit verdict; no pre-write workflow is reused as validation of this increment.

The first research question is not complete in this checkpoint. The formal increment only normalizes an already-declared competing pressure test. The remaining material gate is still lawful direct review of revised Marion §21 body (BG pp.209–212 plus the tracked later passage, early ED pp.292–297 plus 314–315, or a reliably mapped authorized revised reprint/translation).
