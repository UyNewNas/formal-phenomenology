# First-question source-route increment — 2026-09-20

This checkpoint continues the remaining **source gate** for the first horizon/exhaustibility question. It does not add a Lean primitive, alter `first_question_complete_formal_answer`, or upgrade secondary exact-page evidence into direct primary-text evidence.

## 1. External-work / reuse gate rechecked

The directly relevant formal-philosophy baselines were checked again before considering any new API.

- `novaspivack/phenomenology-lean` remains at `75230e4eab333ad0fc47573747521ccc1a31a163` (2026-05-20). A targeted repository search for horizon / exhaustibility / capture still found no Marion-specific theorem or relation API that subsumes this project's narrow `situated / conditions / Exhausts` language.
- `cbenzmueller/LogiKEy` remains at `b29954b0876d7991baf12f17378f31700f9de759` (2026-09-13). It remains a semantic-embedding / computational-philosophy methodology baseline rather than a same-topic result or dependency for this elementary relation model.

Reuse decision is unchanged: **no new dependency, no generic modal-logic layer, and no new philosophical primitive**. The remaining work is evidential rather than a missing general proof API.

## 2. Lawful French preview route: the public excerpt endpoint is now concrete

The PUF ebook route was narrowed one step further.

- Lavoisier's storefront for EAN `9782130807490` exposes a public `Télécharger un extrait` link.
- Following that public link resolves to `https://e.lavoisier.fr/extract/523630`.
- The endpoint advertises `application/epub+zip`. The current web runtime cannot ingest that binary representation, and the container runtime could not resolve the host for a lawful download attempt.
- No reader API, DRM, authentication, or access-control mechanism was reverse-engineered or bypassed.

This is stronger route provenance than merely knowing that an excerpt button exists, but it is still **not body-text review**. Evidence status:

`PUF/LAVOISIER AUTHORIZED-EXCERPT-ENDPOINT / BINARY-NOT-INGESTED / NOT PRIMARY-DIRECT-PAGE`.

The Kobo storefront route remains complementary: an authorized preview control exists for the PUF ebook, but the current HTTP surface does not expose the preview body. The previously recorded Kobo/Lavoisier date/edition discrepancy remains a version warning, so the shared EAN alone must not be used to infer BG/ED page equivalence.

## 3. Spanish route: edition metadata and exact secondary cross-check

The Spanish translation route was rechecked because it supplies an independent mapping for the same §21 sequence.

Edition metadata currently converges on:

- Jean-Luc Marion, *Siendo dado. Ensayo para una fenomenología de la donación*;
- translation: Javier Bassas Vila;
- Editorial Síntesis, Madrid, 2008;
- ISBN `9788497565561`;
- catalogues report approximately 514–516 pages depending on the storefront record.

This metadata is useful for edition identity only. It does not by itself expose SD pp. 341–342.

Open-access secondary literature was then checked at the exact-page level. Jaime Llorente Cardo, “El existir neutro como ‘fenómeno saturado’” (*Tópicos* 49, 2015), explicitly cites the Spanish translation as `SD`; it remains a secondary source, not a substitute for direct reading of SD 341–342.

A stronger exact-page cross-check comes from Jorge Luis Roggero, “La noción de ‘fenómeno’ en la fenomenología de Jean-Luc Marion,” *Diánoia* 65(84), 2020, DOI `10.22201/iifs.18704913e.2020.84.1586`. Its openly available journal PDF reconstructs the relevant *Étant donné* sequence with exact French-edition references:

- ED p. 293: one cannot simply dispense with horizon in general; the relevant move is to use horizon differently so as to escape its delimiting anteriority;
- ED p. 293: first saturation figure reaches/fills the horizon without passing beyond it;
- ED p. 294: second figure exceeds one horizon and requires several horizons articulated together;
- ED p. 295: the strongest figure is described such that neither a horizon nor any combination of horizons can tolerate the redoubled saturation.

This is especially important as a **secondary exact-page validation of the existing crosswalk**, because it independently preserves the one-horizon / several-horizons / no-combination ordering already registered from other scholarship. It does not close the stop gate: Roggero is quoting/paraphrasing Marion and the project still has not directly reviewed the target ED/SD/BG body pages in an authorized primary representation.

## 4. Formal consequence

No new Lean theorem is warranted by this round. The fresh source work reinforces, rather than changes, the current semantic boundary:

- `NonExhaustible` says that no **single related horizon** exhausts all encoded aspects;
- `IndividuallyCoverable` already guards against reading that as failure of horizon-by-horizon/aspectwise coverage;
- `Independent` remains the weak formal predicate “no witness in the separate `conditions` relation”;
- neither `Independent` nor `NonExhaustible` is identified with Marion's full one/several/combined-horizon taxonomy or with the complete saturated phenomenon.

Adding a horizon-combination primitive now would therefore increase unconstrained model freedom without solving the first question. The verified project-level formal target remains `first_question_complete_formal_answer`.

## 5. Stop gate and next exact action

The first research question remains open. The narrow remaining material gate is still lawful direct body-text review of revised §21 through one of the already mapped routes:

1. BG pp. 209–212 (with the tracked pp. 225–226 comparison), or
2. ED pp. 292–297 (with pp. 314–315), or
3. SD pp. 341–342 under verified edition/page provenance, or
4. an authorized revised reprint/translation whose identity with that sequence can be established from the body text.

The preferred next action is to retry the now concrete Lavoisier/PUF authorized excerpt in a runtime capable of lawfully reading the EPUB preview, or to obtain another authorized body representation of ED/SD/BG. Until that happens, secondary exact-page agreement is recorded as corroboration only and **not** as completion.

This checkpoint changes documentation/source provenance only. The branch's existing Lean target must still pass its ordinary exact-head build, root-import/source-coverage check, forbidden-placeholder scan, and kernel axiom audit after this commit before the checkpoint is considered technically validated.
