# First-question publisher-access / provenance recheck — 2026-09-21

This checkpoint advances only the remaining source gate for the first horizon/exhaustibility question. It does **not** add a new philosophical primitive or theorem. The current Lean package already answers the narrow formal question; the unresolved work is to freeze the historical interpretation against an authorised revised-book body or an equivalently mapped authorised reprint.

## 1. External-first formal baseline

Before considering any semantic extension, the two directly relevant external formal baselines were rechecked at their live default branches:

- `novaspivack/phenomenology-lean` remains `main@75230e4eab333ad0fc47573747521ccc1a31a163` (2026-05-20). No new upstream commit is available to re-audit, so there is still no external Marion/horizon/exhaustibility API that should replace this project's narrow `situated / conditions / Exhausts` relation layer.
- `cbenzmueller/LogiKEy` remains `master@b29954b0876d7991baf12f17378f31700f9de759` (2026-09-13). It remains methodological prior art for semantic embeddings and computational philosophy rather than a same-topic dependency for the present relation-level argument.

No new definition or generic logic API is therefore justified in this round.

## 2. Stanford / De Gruyter revised-book route

The official De Gruyter Brill surface for Stanford's *Being Given* was rechecked. The publisher book page still exposes the book metadata and contents, including the already registered §21/§22/§23 structure. The canonical §21 chapter record remains

`https://www.degruyterbrill.com/document/doi/10.1515/9780804785723-024/html`

for `Sketch of the Saturated Phenomenon: The Horizon`, pp. 199–212.

A direct fetch of that chapter URL in the present runtime returned HTTP 405 rather than chapter body text. The same publisher platform's indexed *Being Given* chapter pages explicitly show the locked-content state (`You are currently not able to access this content`) when body access is unavailable. This establishes a concrete lawful route and a concrete runtime access failure; it does **not** justify treating metadata, snippets, or a failed fetch as direct review of BG pp. 209–212.

Evidence status remains:

`PRIMARY-PUBLISHER-CHAPTER-METADATA / DIRECT-BODY-NOT-REVIEWED-IN-RUNTIME`.

No authentication, library entitlement, reader API, or access-control mechanism was bypassed.

## 3. Fordham / De Gruyter anthology route

The official De Gruyter Brill / Fordham page for Jean-Luc Marion and Kevin Hart (ed.), *The Essential Writings* was also rechecked:

`https://www.degruyterbrill.com/document/doi/10.1515/9780823292905/html`.

The publisher page directly confirms:

- Fordham University Press;
- 2013 publication;
- Kevin Hart as editor;
- `Sketch of the Saturated Phenomenon` beginning at p. 108;
- `The Banality of Saturation` beginning at p. 135;
- public frontmatter / contents, while chapter body access is not generally exposed by the ordinary surface.

The official page says the editor's general introduction situates Marion's work and that shorter introductions preface sections. However, the retrievable official metadata in this run still does **not** establish that the p. 108 `Sketch` is textually identical with, or a revised reprint of, *Being Given* §21–22 rather than another witness in the earlier essay lineage.

A non-authorised digitisation found by search contains an editor-introduction sentence that would appear to settle this provenance question, but it was deliberately **not** used to upgrade the evidence ledger. Until the same claim is recovered from an authorised publisher body/source note, the anthology remains an alternate legal route whose revised-text identity is unverified.

Evidence status therefore remains:

`PRIMARY-PUBLISHER-METADATA / AUTHORISED-ALTERNATE-ROUTE / REVISED-TEXT-IDENTITY-NOT-DIRECTLY-VERIFIED`.

## 4. Same-topic quantifier cross-check

Brock Mason's openly indexed *Aporia* PDF, `Saturated Phenomena, the Icon, and Revelation`, was rechecked because it gives a compact exact-page reconstruction of BG 210–211. It distinguishes:

1. saturation within one horizon;
2. overflow into multiple horizons;
3. the strongest case where no combination of horizons tolerates the phenomenon.

This is **secondary exact-page evidence**, not author-primary body review. It nevertheless reinforces the already formalised guardrail:

- project `Captured` is only a single-horizon `∃h ∀a` surrogate;
- `IndividuallyCoverable` is the weaker `∀a ∃h` aspect-wise cover;
- `NonExhaustible` is only failure of single related-horizon capture;
- none of these is identified with Marion's full one/multiple/combined-horizon saturation taxonomy.

No new horizon-combination primitive is warranted merely to restate that secondary taxonomy before the revised primary body is reviewed.

## 5. Provenance consistency after the 2007 correction

The dedicated correction `MARION_2007_TRANSLATION_PROVENANCE_20260921.md` remains controlling: the 2007 *Filozofia* item is Josef Fulka's translation of the 1992 essay lineage, alongside Carlson's 1996 translation, not an independent later Marion composition.

Older wording elsewhere in the branch that labels 2007 simply as “another author-primary corroboration” must therefore be read as **superseded where it implies independent evidential weight**. The official 2007 publication remains a primary-text translation witness to the 1992 lineage, but it cannot close the revised *Étant donné* / *Being Given* source gate.

This is a source-ledger consistency constraint only; no Lean statement changes.

## 6. Formal consequence

The strongest current formal answer remains unchanged:

- `UniversalStructure` does not imply `ClosureBridge`;
- an actual situated/non-exhaustible finite witness exists;
- `NonExhaustible` can coexist with aspect-wise horizon coverage;
- weak `Independent` does not imply `NonExhaustible` without excluding an appearing `Captured ∧ Independent` witness;
- on appearing captured phenomena, producing an actual `Conditioned` witness additionally requires the already isolated double-negation stability premise;
- relatedness, weak independence, and non-exhaustibility are jointly consistent under `ConditioningIsSituated`.

The direct source recheck supplies no reason to enlarge the object language. This round therefore intentionally adds no Lean declaration and treats exact-head CI as regression verification of the unchanged formal package.

## 7. Remaining stop gate and next entry

The first research question remains open only at the interpretation/source gate. A completing source route must still provide lawful direct body review of one of:

1. BG pp. 209–212 plus the tracked pp. 225–226 check;
2. early ED pp. 292–297 plus pp. 314–315;
3. an authorised, reliably mapped Spanish route around SD pp. 341–342;
4. or an authorised revised reprint/translation whose textual identity with the revised §21 sequence can be established before its body is used.

The next exact source-first move is to seek either (a) an authorised body/preview for one of those page windows, or (b) an authorised Fordham/De Gruyter source note or editor-introduction passage that establishes the p. 108 `Sketch` provenance strongly enough to make its chapter body a valid substitute route. Metadata alone is not enough.

## 8. Validation status at commit time

This file is a research/source checkpoint. At authoring time, the branch parent was `ba42582f38193c3dd188529f063181b9ac612cb6`, whose exact-head `Lean verification` run `35534996914` was successful. The new checkpoint commit itself must be judged only by its own exact-head workflow; the parent's green status is not inherited.
