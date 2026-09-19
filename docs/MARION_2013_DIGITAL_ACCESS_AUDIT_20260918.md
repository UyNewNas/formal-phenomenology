# *Étant donné* lawful digital-access audit — 2026-09-18

This note records one source-engineering pass on the remaining direct-primary gate for the first horizon question. It does **not** upgrade any historical attribution, does **not** claim that the target passages have been read, and does **not** alter the Lean semantics.

## 1. Target remains unchanged

The historical stop gate still requires lawful direct review of one of the already cross-walked primary routes:

- *Being Given* (Kosky, Stanford UP 2002), pp. 209–212 and 225–226; or
- the early-pagination French *Étant donné* target ranges ED pp. 292–297 and 314–315; or
- a later authorized edition / formal reprint whose corresponding body text can be identified by reliable textual anchors rather than by page-number coincidence.

Publisher metadata, a download button, an inaccessible preview, a search-index snippet, or a secondary quotation does not by itself satisfy this gate.

## 2. Cairn / PUF 2013 electronic edition

Fresh public-web verification located the official Cairn record for Jean-Luc Marion, *Étant donné: Essai d'une phénoménologie de la donation*, PUF / Quadrige, 2013:

- https://shs.cairn.info/etant-donne--9782130624813?lang=fr
- DOI: `10.3917/puf.mario.2013.02`
- ISBN: `9782130624813`
- the record advertises an electronic edition in **HTML and page-flip form, by chapter**.

Evidence status: **PRIMARY-PUBLISHER-ACCESS-METADATA**.

In the current research environment, opening the Cairn book record through the web fetcher is disabled, and targeted public-search queries did not expose a chapter body corresponding to the §21 / §23 target text. Therefore the existence of an official electronic presentation is a useful legal access route, but no target body text is claimed as read in this pass.

This finding also does **not** revive the withdrawn same-page-number inference. The 2013 Quadrige pagination remains a separate edition track; `2013 p. x` is not identified with `1997 p. x` without a textual or bibliographic crosswalk.

## 3. Lavoisier / PUF ePub excerpt route

A current Lavoisier e-book listing for the PUF title exposes a publisher/distributor-sanctioned sample link:

- product page: https://e.lavoisier.fr/produit/72567/9782130807490/etant-donne
- the page identifies Jean-Luc Marion, PUF, ePub, EAN `9782130807490`, paper EAN `9782130624813`, and shows **“Télécharger un extrait”**;
- that link resolves to `https://e.lavoisier.fr/extract/523630`;
- the web fetcher reports the endpoint as `application/epub+zip` rather than ordinary HTML.

Evidence status: **PRIMARY-PUBLISHER/DISTRIBUTOR-SAMPLE-PATH**, **CONTENT-NOT-YET-INSPECTED**.

Two access attempts were deliberately kept within normal public access:

1. the web fetcher could identify the ePub content type but does not ingest that binary response;
2. the execution container could not resolve the external host, so it could not lawfully download and inspect the sample there either.

No attempt was made to bypass DRM, authentication, preview limits, or access controls. Because the sample bytes were not obtained, this pass cannot say whether the excerpt reaches Book IV or contains any target passage.

## 4. Distributor metadata discrepancy

The current distributor records are not fully consistent about edition labels:

- earlier PUF/retailer records for ISBN `9782130624813` identify the 2013 Quadrige volume as a later corrected/expanded edition with its own pagination track;
- the current Lavoisier e-book page labels its 2025 listing `2e édition` while tying the e-book EAN `9782130807490` to the same paper EAN `9782130624813`;
- Kobo also exposes the e-book under EAN `9782130807490` and advertises print-equivalent page navigation, but that feature description alone does not establish which historical pagination anchors are preserved.

Decision: edition-number labels from distributor metadata are **not** used to infer a BG/ED page mapping. Any future use of the ePub sample must anchor the relevant text by section heading / sentence content and then compare it to the already established BG/early-ED crosswalk.

## 5. Google Books bibliographic corroboration

Google Books continues to expose primary bibliographic records for the 1997 and later French editions, including the 1997 452-page PUF record and searchable common terms such as `horizon`, `intuition`, `intentionnalité`, `manifestation`, and `phénomène saturé`.

Evidence status remains **PRIMARY-METADATA / INDEX**. The public result did not expose the target body pages in this pass, so it does not close the stop gate.

## 6. Formal / interpretation consequence

No Lean theorem or definition changes in this pass.

The existing formal answer remains the correct scope boundary:

- bare horizon structure does not entail an exhaustive-capture bridge;
- on actually appearing phenomena, `Independent → NonExhaustible` is equivalent to excluding a `Captured ∧ Independent` witness;
- producing an actual conditioning witness additionally requires the already isolated proof-theoretic stability premise.

The new access routes do not justify `Captured → Conditioned`, do not make `NonExhaustible` a definition of Marionian saturation, and do not turn `Horizonless` into the default encoding.

## 7. Next source action

The highest-value next source step is now concrete:

1. re-check whether the lawful Lavoisier sample becomes textually inspectable in an environment that can consume the public ePub response;
2. if it is only a front-matter/opening-chapter sample, record that negative result and do not retry it as though it were a new route;
3. otherwise locate §21 / §23 by heading and textual anchors, then compare against the existing BG / early-ED / 2013 crosswalk before upgrading evidence status;
4. in parallel, keep the official Cairn PUF electronic edition as a legitimate access route, but do not infer access to paid/conditional chapter content from the public metadata page.

Until one of those routes yields the target primary body text, the first research question remains formally packaged but historically **not yet complete**.

## 8. 2026-09-20 licensed-retailer provenance recheck

A fresh external-first pass rechecked the same digital object through independent lawful retailer / reader surfaces before any further modelling change. The proof-infrastructure baselines were also re-read: `novaspivack/phenomenology-lean` is still at `75230e4eab333ad0fc47573747521ccc1a31a163`, and `cbenzmueller/LogiKEy` is still at `b29954b0876d7991baf12f17378f31700f9de759`; no new same-shaped Marion/horizon formal API was found that would justify replacing the existing narrow relation layer.

The source-provenance result is stricter than the previous checkpoint:

- Bol exposes EAN `9782130807490`, original release date 18 September 2013, PUF, an **Inkijkexemplaar** preview entry, and labels the digital item **Editie 2**: https://www.bol.com/nl/nl/p/etant-donne-essai-d-une-phenomenologie-de-la-donation-ebook/9200000089276469/ .
- Decitre exposes the same EAN `9782130807490`, the same 18 September 2013 release date and 540-page ePub, but labels it **4e édition revue et augmentée**: https://www.decitre.fr/ebooks/etant-donne-9782130807490_9782130807490_2.html .
- Casa del Libro exposes the same EAN / ISBN, the same 18 September 2013 date and a **Leer primeras páginas** entry: https://www.casadellibro.com/ebook-etant-donne--essai-dune-phenomenologie-de-la-donation-ebook/9782130807490/15198112 .
- Vivlio exposes the same EAN and a **Lire un extrait** entry but dates the current digital publication 27 February 2025; it also advertises table-of-contents / go-to-page navigation: https://shop.vivlio.com/product/9782130807490_9782130807490_2/etant-donne-essai-dune-phenomenologie-de-la-donation .

These independent surfaces strengthen the lawful-access route but also prove that **EAN identity and retailer edition labels are insufficient provenance for page mapping**: the same digital identifier is simultaneously described as edition 2 and edition 4, with 2013 and 2025 publication dates on different storefronts. This is a metadata conflict, not evidence that the philosophical text itself differs at the target passage.

Accordingly, the stop-gate rule is tightened operationally: no BG/early-ED/SD page equivalence may be inferred from EAN `9782130807490`, the 540-page count, an edition number, or a reader's “go to page” capability. A future preview can close the source gate only if it exposes the target body together with enough **internal anchors**—at minimum the §21 heading / surrounding sentence sequence and edition or print-equivalent page provenance—to compare it against the existing BG/early-ED crosswalk.

The current web runtime exposes the preview controls and metadata above but not their protected preview bodies. No DRM, authentication, reader API, or preview limit was bypassed. Therefore evidence status remains **LAWFUL-PREVIEW-ROUTE / BODY-NOT-READ**, the formal interpretation is unchanged, and adding a new Lean primitive would be unsupported model growth rather than progress on the remaining gate.
