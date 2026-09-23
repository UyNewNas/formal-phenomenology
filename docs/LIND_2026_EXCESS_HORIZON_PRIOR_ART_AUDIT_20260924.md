# Lind 2026: givenness, excess, and horizon — prior-art audit

Date: 2026-09-24

Branch: `research/first-question-main-theorem-20260918`

## Object of this round

The current first-question formal package already separates three claims that must not be conflated:

1. a phenomenon appears in relation to a horizon (`situated` / `Structured`);
2. a horizon functions as an antecedent condition or constraint (`conditions` / `Conditioned`);
3. some horizon exhaustively covers the encoded presented aspects (`Exhausts` / `Captured`).

This round does **not** add another Lean predicate or theorem merely to increase the formal surface.  Instead it performs the required external-prior-art recheck for the strongest natural-language claim adjacent to the current formal answer: that Marionian givenness can exceed what a subject can anticipate, constitute, contain, or measure by a horizon.

## Current same-topic source: Andreas Goncalves Lind (2026)

Source checked:

- Andreas Goncalves Lind, “Givenness as the Opening of All Phenomenological Possibility: Marion’s Overcoming of Henry Through Heidegger,” *Philosophies* 11(4), 145 (2026).
- DOI: `10.3390/philosophies11040145`.
- MDPI version notes identify the HTML/PDF/XML Version of Record on 14 August 2026.
- The public article body was directly available through the indexed full-text route used in this research round; the check therefore goes beyond title/abstract metadata.

The article’s relevant interpretive claims are stronger and more explicit than a generic statement that Marion rejects a fixed transcendental frame.  Lind repeatedly describes Marionian givenness as:

- suspending conditions imposed by subjectivity on what appears;
- exceeding a horizon of constitution or anticipation;
- not being measured by what subjectivity can receive;
- exceeding what the subject can constitute, anticipate, or contain;
- remaining irreducible to horizons of subjectivity while still being a claim about manifestation rather than a denial that manifestation occurs.

The conclusion likewise presents the most radical phenomenological field as open to what gives itself from itself and exceeds pre-given horizons of subjectivity.  This is a **secondary interpretive thesis about Marion**, not a quotation from the target revised pages of *Étant donné* / *Being Given*.

### Why this matters for the project baseline

This source makes one novelty boundary especially clear.  The project must not claim as its philosophical discovery that “Marionian givenness exceeds subjective anticipation/constitution/horizon.”  A current 2026 publication already states that interpretive thesis directly and in detail.

What it does **not** supply is the project’s exact formal question or its bridge analysis.  Lind does not introduce a relation with the quantifiers of:

```text
appears p -> Structured p
Structured p -> Captured p
situated p h -> Exhausts p h
conditions p h -> Exhausts p h
Exhausts p h -> conditions p h
```

and does not prove the finite-family/dominator, local stability, decidability, or mutual-conditioning normal forms used in this repository.  In particular, “exceeds a horizon of constitution/anticipation” cannot be imported as the formal statement that every related horizon fails `Exhausts`, because the historical phrase and the extensional project relation are not definitionally identical.

Reuse decision:

`CURRENT SAME-TOPIC INTERPRETIVE PRIOR ART / METHOD-AND-ATTRIBUTION CONSTRAINT / NO DIRECT LEAN API / NO THIN PORT NEEDED`.

## Strongest internal baseline after the comparison

The strongest applicable internal answer remains the already-verified relation-level package rather than a new theorem prompted by Lind:

- `UniversalStructure` does not entail `ClosureBridge`;
- an actual structured appearance may be conditioned yet `NonExhaustible`;
- even mutual `situated <-> conditions` does not force closure;
- locally, neither `conditions` nor extensional `Exhausts` implies the other absent an extra same-horizon bridge;
- positive closure under the stronger finite-cover reading requires explicit common-dominator/closure premises plus the already-recorded constructive stability residue.

Lind 2026 therefore narrows the **interpretive novelty claim**, not the formal theorem set.  No free predicate, historical axiom, or new semantic primitive is justified by this comparison.

## Formal-engineering reuse check

A bounded code recheck was run on 2026-09-24 before deciding against a new API.  Query family: `horizon exhaust conditioning`.

- `novaspivack/phenomenology-lean`: no same-shaped indexed API located;
- `cbenzmueller/LogiKEy`: no same-shaped indexed horizon/exhaustion API located;
- `alexoltean61/msphml-lean`: no same-shaped indexed API located.

These searches do not prove global novelty and the external repositories were not rebuilt in this round.  LogiKEy / AFP computational-hermeneutic work remains methodological prior art; no large logic dependency is warranted for the present relation-level Lean Core results.

## Revised-primary stop gate recheck

The historical completion gate is unchanged by Lind 2026.

A current Google Books record for Jean-Luc Marion, *Being Given: Toward a Phenomenology of Givenness* (Stanford UP, 2002) identifies the book as a **limited preview**, displays the section starts (§21 p. 199, §22 p. 212, §23 p. 221), and indexes `horizon`, `intention`, `intuition`, `manifestation`, and `saturated phenomenon`.  The ordinary research route did not expose target pages 209–212 or 225–226 as readable page bodies.  This is useful authorized preview metadata, not direct review of the tracked pages.

The current De Gruyter/Stanford table-of-contents route likewise reconfirms §21 `Sketch of the Saturated Phenomenon: The Horizon`, pp. 199–212, but the chapter-body endpoint was not exposed through the lawful text retrieval path used here.

Therefore none of the following status is upgraded:

- BG pp. 209–212 / 225–226: target body not directly reviewed;
- early ED pp. 292–297 / 314–315: target body not directly reviewed;
- authorized revised reprint/translation: no newly mapped target body obtained.

Unofficial full-book mirrors surfaced in general web search and were deliberately excluded from the evidence chain.  No access restriction, DRM, purchase wall, or institutional-authentication barrier was bypassed.

## Lean / validation decision

No Lean source change is made in this round.  That is a source-first and prior-art-driven decision: the new external evidence constrains attribution but does not reveal a missing logical case in the current first-question interface.  Adding a wrapper theorem or new predicate would not advance the stopping condition.

The repository’s existing Lean proof graph must nevertheless be regression-verified on the exact documentation SHA produced by this audit.  The relevant gate remains the project workflow that runs the build, root/source coverage checks, `scripts/check.py`, and the kernel axiom audit.  A green predecessor SHA is not inherited.

## Handoff

This round’s substantive increment is a stronger external baseline:

> the broad Marionian “exceeds subjective horizon/anticipation/constitution” interpretation is already explicit current prior art; the project’s legitimate contribution is the transparent relation-level reconstruction and exact premise/countermodel audit, not discovery of that interpretive slogan.

The first research question remains open only at the revised-primary textual gate.  If lawful direct body access confirms the current distinction between related horizon and antecedent conditioning, freeze the interpretation and rerun the complete proof/audit stack on the final SHA.  If the revised text forces a different relation, add only the minimal interface required by that text.
