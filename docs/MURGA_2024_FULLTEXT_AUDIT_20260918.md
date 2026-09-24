# Murga 2024 full-text audit against the first-question axes — 2026-09-18

This note records a targeted same-topic prior-art check for the first horizon question. It does not introduce a new Lean primitive, does not upgrade any Marion attribution from secondary to primary evidence, and does not change the direct-primary stop gate.

## 1. Source and access status

Ezequiel Daniel Murga, “La posibilidad de una horizonticidad no metafísica en Jean-Luc Marion,” *Logos. Anales del Seminario de Metafísica* 57(2) (2024), 309–325, DOI `10.5209/asem.94542`.

The official Universidad Complutense de Madrid journal page and the official open-access PDF were directly inspected in this pass. The PDF is CC BY 4.0 and the relevant page images were also reviewed rather than relying only on search snippets.

Evidence status in this project: **SECONDARY-DIRECT-OFFICIAL-PDF / PAGE-IMAGE-REVIEWED**.

Official article page:

- https://revistas.ucm.es/index.php/ASEM/en/article/view/94542

Official PDF:

- https://revistas.ucm.es/index.php/ASEM/en/article/download/94542/4564456571533/4564456731566

The external Lean prior-art baseline was also rechecked before deciding whether this source requires a new formal API: `novaspivack/phenomenology-lean` remains at `75230e4eab333ad0fc47573747521ccc1a31a163` (2026-05-20), and the already-audited scope still does not provide a Marion horizon / conditioning / exhaustive-capture interface matching the present project. No rebuild of that external repository is claimed in this pass.

## 2. Exact interpretive content relevant to the project

Murga’s article is substantially more precise than its abstract for the distinction already represented by the project’s `situated` / `conditions` split.

### 2.1 A horizon can remain as a manifestation/experience structure without being an a-priori possibility condition

On printed p. 320, Murga argues that Marion’s criticism is not directed at horizon as such but at a metaphysical conception of horizon that fixes the phenomenon’s conditions of possibility in advance. He then cites *Étant donné* 1997 p. 293 for Marion’s formulation about using horizon differently in order to free oneself from its “anterioridad delimitadora” / delimiting anteriority.

Most importantly for the formal interface, Murga immediately interprets this as a separation between two claims:

1. our experience can be limited and made possible by a horizon;
2. that experiential limit need not condition the **possibility of the phenomenon itself**.

This is directly relevant to the project’s decision not to identify mere horizonal situatedness with `conditions`.

Status: the separation is **Murga’s secondary interpretation**, supported by his cited Marion passages. It is not recorded here as a direct quotation from Marion beyond the short phrase attributed by Murga.

### 2.2 Donation-horizon and manifestation-horizon are an interpretive distinction, not an explicit Marion taxonomy

Printed pp. 320–321 distinguish what Murga calls the “horizonte de la donación” from the “horizonte de la manifestación.” On p. 320 he explicitly says Marion never refers to this distinction in this form and that he believes there is sufficient textual evidence to sustain it.

This matters methodologically: the project must not turn that two-horizon taxonomy into an author axiom. It is useful secondary prior art for why one relation can encode manifestation-context while another encodes prior delimitation, but it remains a reconstruction.

Reuse decision: **interpretive precedent only; no new primitive required**.

### 2.3 Manifestation can depend on a receptive horizon even when phenomenality is not a-priori delimited by it

On printed p. 321, Murga explains the proposed two-level picture by treating donation as the validity horizon of the phenomenon while manifestation depends on an a-posteriori receptive horizon of the *adonné*. The page also cites Marion passages from *Étant donné* pp. 59–60 and 396–397 and *Reprise du donné* pp. 94–95.

For the current formal question, this is stronger evidence against the shortcut

```text
has/requires a horizon for manifestation
→
that horizon is an a-priori condition of possibility
```

and therefore against equating `situated` with `conditions`.

It does **not** establish the project’s extensional `Captured → Conditioned` bridge, nor does it imply that an exhaustive relation in one horizon is the same thing as Marionian conditioning.

### 2.4 Murga supplies explicit same-topic prior art for non-exhaustion, but not the project’s exact extensional theorem

On printed p. 322, Murga connects his stratified-horizon reading with a Marion claim from *Reprise du donné* p. 145, rendered in the article as: what shows itself never completely and adequately covers what gives itself.

This is directly relevant same-topic prior art for the philosophical idea that manifestation does not exhaust givenness. It strengthens an important novelty boundary:

- the **historical/philosophical idea of non-exhaustion is not new to this project**;
- the project’s formal contribution is limited to making several possible relations (`situated`, `conditions`, `Exhausts`) explicit and checking what does and does not follow from particular bridge assumptions.

The article does not state or prove the project’s Core-level equivalence

```text
(appears p → Independent p → NonExhaustible p)
↔
(appears p → Captured p → ¬ Independent p)
```

nor the project’s exact same-horizon pressure-test bridge

```text
situated p h ∧ Exhausts p h → conditions p h.
```

Those remain local formalizations of the question rather than historical discoveries.

## 3. Consequence for A / B / C interpretation bookkeeping

The audit sharpens, rather than changes, the current A/B/C discipline.

### A — manifestation is horizonal / situated

Murga provides strong secondary support for retaining a horizonal manifestation structure even within Marion’s critique. This is compatible with the project’s `situated` axis and with the existing decision not to encode saturation as `Horizonless` by default.

### B — a horizon exhausts or a-priori conditions the phenomenon

Murga’s p. 320 discussion is evidence **against** silently identifying horizonal manifestation with an a-priori condition on the phenomenon’s possibility. Therefore B continues to require an explicit extra bridge in the formal model.

Nothing in this paper licenses the project’s `ExhaustiveCaptureConditions` assumption as Marion’s own thesis.

### C — non-exhaustion

Murga’s use of *Reprise du donné* p. 145 makes non-exhaustion an especially clear item of same-topic prior art. The project may use this as secondary corroboration, but the direct-primary status of the cited Marion page remains separate.

## 4. Why no Lean change is justified by this audit

The paper confirms the semantic distinction already represented in the repository:

- `situated` can carry “manifestation occurs in / through a horizon”;
- `conditions` can carry “this horizon limits in advance the possibility/validity of the phenomenon”;
- `Exhausts` remains a separate extensional notion used to ask whether total capture should imply conditioning.

Adding another primitive such as `manifestationHorizon`, `donationHorizon`, or `priorDelimits` would merely reify Murga’s secondary reconstruction and increase modeling freedom without answering the first question. The current minimal three-axis interface remains preferable.

No theorem count is increased in this pass.

## 5. Direct-primary stop gate remains open

This full-text audit is important prior-art refinement but does **not** close the historical stop gate. Murga is secondary literature, even where he provides exact Marion page references.

The remaining lawful direct-primary target therefore stays unchanged:

- *Being Given* pp. 209–212 and 225–226; or
- early-pagination *Étant donné* pp. 292–297 and 314–315; or
- a reliably cross-walked later authorized edition / formal reprint containing the corresponding body text.

A separate access check in this pass reconfirmed the public Lavoisier/PUF product page for ePub EAN `9782130807490` and its sanctioned “Télécharger un extrait” link. The extract endpoint currently presents as `application/epub+zip`; the available web reader cannot ingest that binary response, and a normal container download attempt failed. No authentication, DRM, preview, or access-control bypass was attempted. Therefore no target primary text is claimed as read from that route.

## 6. Current decision

1. Upgrade Murga in the prior-art ledger from abstract-level shorthand to **full official-PDF, page-image-reviewed secondary evidence**.
2. Treat Murga’s donation/manifestation horizon split as **interpretive precedent**, not an author axiom.
3. Explicitly record that non-exhaustion itself has strong same-topic prior art and is not a project novelty claim.
4. Keep the current Lean ontology unchanged.
5. Continue the direct-primary source gate rather than manufacturing additional formal lemmas while the historical evidence question remains the real stop condition.
