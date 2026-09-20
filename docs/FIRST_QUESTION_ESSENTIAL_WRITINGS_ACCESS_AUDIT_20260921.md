# First-question *Essential Writings* access audit — 2026-09-21

This checkpoint advances only the remaining source gate for the first horizon/exhaustibility question. It does **not** change a Lean definition, theorem, historical attribution, or the current weak mappings of `Independent`, `Captured`, and `NonExhaustible`.

## 1. External-first recheck

Before treating a source-access obstacle as a reason to enlarge the formal language, the directly relevant formal baselines were rechecked at their live default-branch heads:

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163` (2026-05-20): unchanged. A targeted repository search for `Marion horizon saturated conditioning captured independent` returned no same-shaped API replacing this project's narrow `situated / conditions / Exhausts` layer.
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759` (2026-09-13): unchanged. A targeted search for `phenomenology horizon saturation Marion hermeneutic` returned no same-topic theorem/API. LogiKEy remains methodological prior art for semantic embeddings and computational philosophy, not a dependency required here.

No new logical infrastructure is therefore justified in this round.

## 2. Fordham / *The Essential Writings* route

The official Fordham University Press page for Jean-Luc Marion, *The Essential Writings*, ed. Kevin Hart (2013), confirms the book identity, publisher, publication date, and anthology scope:

- <https://fordhampress.com/the-essential-writings-hb-9780823251056.html>

The already-registered chapter metadata identifies `Sketch of the Saturated Phenomenon` as pp. 108–134, DOI `10.1515/9780823292905-006`. This remains a potentially useful authorized reprint route, but chapter metadata by itself does not establish that the relevant body is textually identical to the revised *Being Given* §21 sequence.

## 3. WorldCat “Access free” must not be treated as direct-open body access

A fresh catalog/access audit found an important route-level mismatch.

WorldCat record OCLC `924270665` identifies the 2013 Fordham ebook and visibly labels it with an Open Access icon and `Access free`, linking to Internet Archive:

- <https://search.worldcat.org/title/The-essential-writings/oclc/924270665>

However, following that exact `Access free` link reaches Internet Archive item `essentialwriting0000mari`:

- <https://archive.org/details/essentialwriting0000mari>

The Internet Archive item itself records:

- collection `printdisabled`;
- `Access-restricted-item: true`;
- `DOWNLOAD OPTIONS` → `No suitable files to display here` in the current public surface.

Therefore the WorldCat presentation **cannot be used as evidence that the Fordham volume is presently available here as a freely reviewable primary-text body**. The catalog link is a discovery/access pointer whose target is restricted in this runtime. No account borrowing, login, reader API, DRM, institutional proxy, or access-control bypass was attempted.

This is an access/provenance correction only. It does not imply anything about what a legitimately authorized borrower may be able to read in another environment.

## 4. Search boundary

Targeted web searches around the Fordham chapter and the BG 209–212 one/multiple/combined-horizon sequence again surfaced:

- publisher/catalog metadata;
- PhilPapers/CrossRef chapter metadata;
- secondary exact-page reconstructions already represented in the repository;
- third-party full-text mirrors.

The third-party full-text mirrors were excluded from evidence for the stop gate. Their discoverability is not permission to use them as direct-primary review.

## 5. Interpretation and Lean consequence

This audit gives no new textual reason to alter the formal interface.

The current guardrails remain appropriate:

- `Captured` is only the project's single-horizon extensional `∃ h, ∀ a` surrogate;
- `IndividuallyCoverable` is the weaker aspectwise `∀ a, ∃ h` notion;
- `NonExhaustible` means failure of a single situated horizon to exhaust all encoded aspects;
- `Independent` means absence of a witness in the separate `conditions` relation and is not a definition of Marion's full saturated phenomenon.

No new Lean declaration is warranted. `first_question_complete_formal_answer` already packages the narrow formal answer; the remaining gap is still direct revised-text provenance / interpretation freeze rather than a missing proof object.

## 6. Stop-gate status and next entry

The first question remains open. This route does **not** satisfy the direct-primary stop gate.

The lawful targets remain:

- BG pp. 209–212, with the tracked pp. 225–226 check;
- early ED pp. 292–297, with pp. 314–315;
- authorized SD pp. 341–342 where the crosswalk is reliable;
- or an authorized revised reprint/translation whose body can be anchored to the same revised §21 sequence.

For *The Essential Writings*, treat WorldCat → Internet Archive as a restricted-library discovery route, not an open-body route. Continue with publisher/library preview surfaces that actually expose the text lawfully; do not add a horizon-combination primitive unless direct revised text forces it.

## 7. Verification plan

Because this checkpoint is source-ledger only, the formal action is regression verification of the existing first-question package on the exact resulting SHA through the repository workflow (`python3 scripts/check.py`, which includes the Lean build, root/source coverage, forbidden-placeholder checks, and the kernel axiom audit). A green run is regression evidence, not a new theorem.
