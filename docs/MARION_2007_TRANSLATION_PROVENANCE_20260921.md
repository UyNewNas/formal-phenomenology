# Marion 2007 `Filozofia` translation-provenance correction — 2026-09-21

This checkpoint corrects the evidential status of Jean-Luc Marion, “Saturovaný fenomén,” *Filozofia* 62(5) (2007), 378–402. It is a source-provenance correction for the first horizon/exhaustibility question. It does **not** change any Lean definition or theorem, and it does not close the direct-primary *Étant donné* / *Being Given* stop gate.

## 1. Trigger and external-first gate

The repository had been treating the official *Filozofia* page/abstract as a second author-primary corroborating item alongside the 1996 English “The Saturated Phenomenon.” Before continuing to count it as independent evidence, the publication lineage was rechecked.

The proof-infrastructure / formal-philosophy baselines were also rechecked because no source correction should be used as a pretext for a new formal API:

- `novaspivack/phenomenology-lean` is still `main@75230e4eab333ad0fc47573747521ccc1a31a163` (2026-05-20); no newer Marion/horizon interface is available to replace this project’s narrow `situated / conditions / Exhausts` layer.
- `cbenzmueller/LogiKEy` is still `master@b29954b0876d7991baf12f17378f31700f9de759` (2026-09-13); it remains methodological prior art for computational philosophy / semantic embeddings rather than a same-topic theorem or dependency required here.
- No new logical predicate, bridge, horizon-combination object, or proof dependency is justified by the bibliographic correction below.

Reuse decision: **source-ledger correction only; no new Lean theorem or generic infrastructure.**

## 2. Direct publication record

The official Slovak Academy of Sciences *Filozofia* page confirms:

- Jean-Luc Marion;
- `Saturovaný fenomén` / English display title `A Saturated Phenomenon`;
- *Filozofia* 62(5), 2007, pp. 378–402;
- publication language Slovak;
- an official abstract and publisher PDF route.

This remains genuine publisher metadata / author-text publication evidence. By itself, however, the journal page does not establish that the 2007 item is a newly written or revised 2007 Marion text.

## 3. Translator and source-lineage evidence

The missing provenance is supplied by two independent routes.

### 3.1 Josef Fulka’s institutional publication list

Charles University’s Faculty of Humanities page for Josef Fulka lists

`Marion, Jean-Luc. Saturovaný fenomén. In: Filozofia 5/2007. ... 378–402`

under the heading **`Překlady článků v odborných časopisech a monografiích`** (“translations of articles in scholarly journals and monographs”). This directly identifies the *Filozofia* item as Fulka’s translation work rather than an independent Marion composition first published in 2007.

### 3.2 Marion bibliography lineage

A Jean-Luc Marion bibliography currently available as a PDF records one entry lineage:

1. `« Le phénomène saturé »`, in J.-F. Courtine (ed.), *Phénoménologie et Théologie*, Critérion, Paris, 1992;
2. American translation by T. A. Carlson, `“The saturated phenomenon”`, *Philosophy Today* 40/1, 1996;
3. Czech-Slovak translation by J. Fulka, `“Saturovany Fenomen”`, *Filozofia* 62/5, Bratislava, 2007.

Nantes Université’s catalogue independently confirms that the 1992 *Phénoménologie et théologie* volume contains `Le phénomène saturé / par Jean-Luc Marion`.

Taken together, the evidence is strong enough to correct the repository’s provenance accounting: **the 1996 Carlson text and the 2007 Fulka text are two translations/publication witnesses of the same 1992 essay lineage.** They must not be counted as two independent later author-text arguments.

## 4. Relation to the revised book version

The source-lineage correction does not make the 1992 essay irrelevant. It remains primary Marion evidence for the weak interpretive constraints already used by the project, especially the warning against equating saturated phenomenality with simple horizonlessness and the need to separate a related horizon from a horizon functioning as a prior condition.

But secondary bibliographic/interpretive sources explicitly describe the 1997 *Étant donné* treatment as a **reworked / amended** version of the earlier saturated-phenomenon analysis. Therefore the 1992 essay’s translations cannot substitute for direct review of the revised book passage.

The first-question stop gate consequently remains exactly where it should be: lawful direct body review of BG pp. 209–212 / early ED pp. 292–297 / mapped SD pp. 341–342, or a reliably mapped authorized revised reprint/translation, with the later BG pp. 225–226 / ED pp. 314–315 interpretation check retained.

## 5. Correction to evidence weighting

Previous wording such as “another author-primary corroboration: Marion 2007” is too strong if read as **independent** author evidence. The corrected status is:

- **1992 French essay**: original primary source lineage;
- **1996 Carlson English publication**: primary-text translation witness to that 1992 essay lineage;
- **2007 Fulka Czech-Slovak publication**: another primary-text translation witness to the **same** 1992 essay lineage, confirmed as a translation by Fulka’s institutional CV and the bibliography chain;
- **1997 *Étant donné* / 2002 *Being Given***: revised book version whose target body pages remain separately source-gated.

So the 2007 official abstract can corroborate how the translated article is presented by the publisher, but it no longer counts as an independent later Marion source when weighing historical support.

## 6. Formal consequence

No Lean proposition changes. In particular:

- `UniversalStructure ↛ ClosureBridge` remains untouched;
- the `∃ h, ∀ a` versus `∀ a, ∃ h` quantifier boundary remains untouched;
- the exact appearing-domain `Captured ∧ Independent` conflict condition remains untouched;
- captured-domain double-negation stability remains the exact proof-theoretic boundary for producing a `Conditioned` witness;
- `Captured`, `NonExhaustible`, and `Independent` remain deliberately weaker model interfaces, not definitions of Marion’s full saturated phenomenon.

This round therefore intentionally adds no theorem and no primitive. The mathematical / proof-theoretic package must still be regression-verified on the exact new source-audit SHA, but a green build would validate unchanged formal code, not create a new philosophical result.

## 7. Status after correction

The correction **reduces evidential double-counting** without reversing the current narrow interpretation. It strengthens the reason to preserve the direct-primary revised-book stop gate: the 2007 item cannot serve as a second independent post-1992 author-text substitute for *Étant donné* §21.

The first research question remains open pending that direct revised-text review. No access control, reader API, DRM, or restricted preview was bypassed in this audit.
