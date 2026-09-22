# Marion PUF eBook preview route audit — 2026-09-23

Scope: first-question revised-text stop gate only. This note records a fresh lawful-access attempt and does **not** change the current formal vocabulary or historical attribution.

## Target

The outstanding material gate remains direct review of the revised `Being Given` / `Étant donné` horizon passages already crosswalked in the repository: BG 209–212 and 225–226, or the corresponding early ED 292–297 and 314–315, or a reliably mapped authorized revised reprint/translation.

## Fresh public-access checks

### PUF / Lavoisier eBook route

The Lavoisier product page for Jean-Luc Marion, *Étant donné : Essai d'une phénoménologie de la donation* identifies PUF as publisher and exposes an explicit **“Télécharger un extrait”** action. The page currently reports an ePub edition, 540 pages, eBook EAN `9782130807490`, paper EAN `9782130624813`, and digital watermarking/social-marking metadata.

Public product page:

- https://e.lavoisier.fr/produit/72567/9782130807490/etant-donne

The preview action resolves to:

- https://e.lavoisier.fr/extract/523630

The web retrieval layer reached that endpoint but refused to render it because its response content type is `application/epub+zip`. A separate container-side attempt could not resolve `e.lavoisier.fr`, so the preview bytes were **not** inspected. This is therefore an access route, not direct-body evidence.

### Kobo / retailer cross-check

Rakuten Kobo lists the same eBook identifier `9782130807490`, PUF, 18 September 2013, EPUB 2, 540 pages, and exposes a “preview/sample” UI. Kobo additionally states that the eBook navigation includes print-equivalent page numbering. That property could be useful if the sample actually contains the target section, but the current web retrieval exposed only the product page / preview control, not the sample body.

- https://www.kobo.com/fr/fr/ebook/etant-donne-2

Decitre independently lists the same PUF eBook identifier, date, EPUB format and 540-page extent:

- https://www.decitre.fr/ebooks/etant-donne-9782130807490_9782130807490_2.html

These metadata checks strengthen the edition/access routing only. They do not establish that the public preview contains §21 or the later target pages, and they do not substitute for reading the text.

## Prior-art / reuse decision for this round

No new logical primitive, model family, semantic embedding, or theorem is proposed in this round. A targeted GitHub search over `novaspivack/phenomenology-lean`, `alexoltean61/msphml-lean`, and `cbenzmueller/LogiKEy` for horizon / exhaustibility / capture / conditioning combinations again returned no same-shaped reusable first-question API. This is a bounded reuse check, not a novelty claim.

The current Lean answer is therefore intentionally left unchanged. The research bottleneck is textual, not proof-theoretic: adding another unconstrained predicate or theorem would not close the revised-primary gate and would weaken the project discipline.

## Evidence classification

For this run the PUF/Lavoisier and Kobo findings are classified as:

- `PRIMARY/RETAILER-METADATA + PUBLIC-PREVIEW-ROUTE-UNINSPECTED`;
- **not** `PRIMARY-DIRECT-PAGE`;
- **not** evidence that the target pages agree with the current interpretation.

No unauthorized full-book mirror was used, no access control was bypassed, and no DRM-protected purchased copy was assumed to be available.

## Formal / verification handoff

Formal target remains the existing root-reachable, audited first-question stack, including `first_question_complete_formal_answer` and the later structure/conditioning/finite-family/domain-extension guardrails. This round deliberately performs regression validation rather than adding redundant Lean declarations.

Before this note was committed, branch head was `3a116b657da551b0407da9caa51a22892e6e9324`. Exact-head CI for the documentation commit must be checked separately; no green status is claimed in this file until the corresponding Actions run is actually read.

## Next exact move

1. Try the lawful Lavoisier/Kobo sample in an environment that can consume the preview payload.
2. Inspect whether the sample contains the revised horizon section; if it does, map by textual anchors rather than guessed pagination.
3. If the target body is absent, keep the route as metadata only and continue with another authorized revised reprint/translation route.
4. Do not expand the Lean language unless direct text forces a mismatch with the current `situated / conditions / Exhausts` separation.
