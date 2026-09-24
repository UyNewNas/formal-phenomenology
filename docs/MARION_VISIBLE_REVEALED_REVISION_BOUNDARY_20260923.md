# Marion 2008 `The Visible and the Revealed`: revision-boundary audit

Date: 2026-09-23

Branch: `research/first-question-main-theorem-20260918`.

## Why this route was rechecked

The first-question stop gate requires lawful direct review of the **revised** Marion treatment represented by *Étant donné* / *Being Given* (or an authorized reprint/translation whose textual identity with that revised treatment can be established). `The Visible and the Revealed` (Fordham University Press, 2008) is already registered as an authorized author-volume containing `The Saturated Phenomenon`, but it must not be promoted to a revised-§21 substitute merely because it is later in publication date.

This round therefore checked the 2008 volume at the level of publisher metadata, authorized JSTOR hosting, and a recent open scholarly version-history discussion before considering any semantic or Lean change.

## Authorized publication / hosting evidence

### Fordham University Press

Fordham's official product page identifies:

- Jean-Luc Marion, *The Visible and the Revealed*;
- translated by Christina M. Gschwandtner;
- Fordham University Press, published 30 June 2008;
- ISBN `9780823228843`;
- 188 pages.

The publisher describes the book as collecting papers from different stages of Marion's work, including the seminal piece on the saturated phenomenon and later developments. This is good publication provenance but, by itself, does not establish which collected chapter reproduces which historical version.

Official page:

`https://fordhampress.com/the-visible-and-the-revealed-pb.html`

### JSTOR authorized book object

JSTOR exposes the Fordham volume as stable book object `j.ctt1c5ck6r`, with publisher `Fordham University Press`, copyright date 2008, translator Gschwandtner, and a table of contents that includes:

- `Note on the Origin of the Texts`, pp. xiii–xx, stable item `j.ctt1c5ck6r.4`;
- `The Saturated Phenomenon`, pp. 18–48, stable item `j.ctt1c5ck6r.6`.

The current research session can read the book-level metadata and the public opening snippet of the chapter, but JSTOR explicitly reports that the current institution has no access to the book. Attempts to follow the item/XML route return to the book-level access page rather than exposing the origin-note body. Accordingly:

`PRIMARY-PUBLISHER/AUTHORIZED-HOST-METADATA + BODY-ACCESS-LIMITED`

The presence of an XML/download control is not counted as direct body review.

Authorized host:

`https://www.jstor.org/stable/j.ctt1c5ck6r`

## External version-history check

Otniel A. Kish, “Transcendence in Jean-Luc Marion: Negotiating Theology and Phenomenology,” *Religions* 16(4) (2025), 523, DOI `10.3390/rel16040523`, is openly available from MDPI and independently archived in the Durham University repository. It is **secondary scholarship**, not Marion primary text.

For the present provenance question it is useful because it explicitly treats the early saturated-phenomenon text as a work that undergoes revisions across later appearances. Kish records Marion's own distancing from the early stage and, in the article's note apparatus, states that the 2000 `The Saturated Phenomenon` version is repurposed/revised for the discussion in book IV of *Being Given*.

This supplies a current scholarly cross-check for the repository's existing caution: the 1992/1996/2000 essay lineage and the 1997/2002 revised book treatment are historically connected but **not textually interchangeable by default**.

Open sources:

- `https://www.mdpi.com/2077-1444/16/4/523`
- `https://durham-repository.worktribe.com/output/3944792/transcendence-in-jean-luc-marion-negotiating-theology-and-phenomenology`

## Reuse / prior-art decision

No new formal API is justified by this check.

1. The authorized 2008 Fordham/JSTOR route remains valuable for checking the earlier essay lineage and Marion's development.
2. It is **not** accepted as a substitute for direct review of BG pp. 209–212 / 225–226, early ED pp. 292–297 / 314–315, or an actually mapped authorized revised reprint/translation.
3. The project therefore does not add a new `Saturated`, `priorDelimits`, horizon-combination, intention, or intuition primitive from this route.
4. The current formal answer remains unchanged: `UniversalStructure` does not entail `ClosureBridge`, while the conditioning variant continues to require the explicitly registered extra compatibility/bridge premises.

This is a provenance narrowing, not a novelty claim and not evidence that the revised book says exactly the same thing as the early essay.

## External-work gate for this round

Because this round adds no definition, theorem, model family, or philosophical attribution, no proof-assistant dependency is added. The already registered engineering/method baselines (`novaspivack/phenomenology-lean`, LogiKEy/AFP, `msphml-lean`) were not re-imported merely to document a textual version boundary. The new object of the round was the source genealogy itself; Fordham/JSTOR and Kish 2025 were checked specifically for that object.

## Validation / handoff

Pre-write branch head: `2f5e2d40da5bd9cfede006a3579b7fffa7a07847`.

That head had exact `Lean verification` run `35753526683 = success`; its `verify` job completed checkout, pinned Lean setup, and `Build, source coverage, and kernel axiom audit` successfully. This status is only the pre-write baseline.

The commit containing this audit must receive its own exact-SHA Actions verdict before it can be called build/audit verified. Since no Lean source changed, the formal theorem set is intentionally unchanged; the CI rerun is a regression check for repository-wide integrity, not evidence for the textual claim.

Remaining stop gate: lawful direct body review of the revised Marion treatment, followed by final interpretation freeze and same-SHA full verification. The 2008 collected early essay does not close that gate.