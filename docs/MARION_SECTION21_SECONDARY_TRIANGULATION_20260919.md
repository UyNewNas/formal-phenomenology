# Marion §21 secondary triangulation and first-question compatibility audit — 2026-09-19

This note records one incremental research/formalization pass on the first horizon question. It does **not** close the remaining direct-primary Marion §21 gate and it does not treat secondary exact quotations as if the target book pages had been read directly.

## 1. Scope and prior-art gate

The branch already separates three axes:

- `situated p h`: a horizon is related to the phenomenon;
- `conditions p h`: a horizon functions as a conditioning / delimiting horizon;
- `Exhausts p h`: a horizon covers all aspects encoded by the current model.

Before adding a first-question compatibility entry point, this round rechecked both the formal and interpretive baselines.

### Formal-philosophy repositories

- `novaspivack/phenomenology-lean`: latest `main` remains `75230e4eab333ad0fc47573747521ccc1a31a163` (2026-05-20). Targeted search for `horizon Marion saturated conditioning captured independent exhaust` returned no matching project-level API.
- `cbenzmueller/LogiKEy`: latest `master` remains `b29954b0876d7991baf12f17378f31700f9de759` (2026-09-13). It remains methodological prior art for semantic embeddings / computational philosophy, not a dependency required for this elementary finite-model wrapper.

Reuse decision: the formal addition in this round is deliberately only a thin re-export of the repository's already kernel-audited theorem `related_independent_nonExhaustible_are_jointly_consistent`. No generic relation, modal, stability, or countermodel framework is reimplemented, and no novelty claim is attached to the wrapper.

### Same-topic searches

Fresh searches included Spanish/French equivalents around:

- `Marion horizonte Siendo dado 341 342 344`;
- `Étant donné p. 292 p. 293 horizonte condición aparecer`;
- `¿podrían ciertos fenómenos desbordar su horizonte?`;
- the three horizon-saturation cases and the phrase family around freeing the phenomenon from the horizon's prior delimiting role.

The useful increment is not a new interpretation. It is a tighter, independently triangulated **secondary navigation map** for the still-unread direct-primary §21 target.

## 2. UNED institutional-repository thesis: exact early-ED navigation

Public institutional bitstream:

<https://oai.e-spacio.uned.es/server/api/core/bitstreams/ffa54837-0009-4f88-a106-05de4727c0c2/content>

The searchable thesis text explicitly attributes the following sequence to Marion and supplies both French-edition and Spanish-translation pagination:

1. horizon as the condition of appearing that both receives and restricts the phenomenon — `Étant donné`, p. 292 / Spanish *Siendo dado*, p. 341;
2. the question whether certain phenomena can exceed their horizon — again ED p. 292 / Spanish p. 341;
3. the clarification that the issue is not eliminating horizon in general, but using it otherwise so as to escape its prior delimiting role — ED pp. 292–293 / Spanish p. 341;
4. the first of the three horizon situations begins at ED p. 293 / Spanish p. 342.

Evidence status: **SECONDARY-DIRECT-INSTITUTIONAL-REPOSITORY / EXACT-PAGE-CROSSWALK**.

This is materially useful for navigation because it independently lands the key semantic transition at the same early-ED range already obtained from Miller / Mackinlay. It remains a thesis quoting Marion, not direct reading of Marion's target pages.

## 3. Llorente 2015: published secondary reconstruction of the three cases

Jaime Llorente, “El existir neutro como ‘fenómeno saturado’: describiendo la contra-experiencia del exceso con Emmanuel Levinas y Jean-Luc Marion,” *Tópicos, Revista de Filosofía* 49 (2015), open full text at SciELO:

<https://www.scielo.org.mx/scielo.php?pid=S0188-66492015000200005&script=sci_arttext>

The article's Marion section explicitly uses *Siendo dado* pp. 341, 342 and 344 to distinguish:

1. a first case in which the phenomenon reaches / fills the horizon without simply crossing its boundary;
2. a second case involving several jointly articulated horizons receiving one saturated phenomenon;
3. an extreme case in which the phenomenon is treated as absolute with respect to the total horizon structure under discussion.

Evidence status: **SECONDARY-DIRECT-PUBLISHED-HTML / EXACT-SPANISH-PAGE-NAVIGATION**.

This is not a source for the project's extensional `Captured → Conditioned` bridge. It instead reinforces the reason not to collapse all Marion horizon language into a single predicate such as `Horizonless` or `NonExhaustible`.

## 4. Duque Cano chapter: independent same-topic restatement with publication provenance

Santiago Andrés Duque Cano, “Otros fenómenos saturados. El caso del perspectivismo amerindio de Viveiros de Castro,” appears in Jorge Luis Roggero (ed.), *El fenómeno saturado: La excedencia de la donación en la fenomenología de Jean-Luc Marion*, SB editorial. Google Books records the volume and contributors:

<https://books.google.com.ar/books/about?id=WtU-EAAAQBAJ&redir_esc=y>

A publicly indexed copy of the chapter reproduces the same `Siendo dado` pp. 341–344 sequence: horizon as receiving/restricting condition, the question of exceeding horizon, the warning against abolishing horizon in general, and the three cases. Because the searchable body used in this run is not publisher-hosted, this item is recorded conservatively as:

**SECONDARY-PUBLICATION-PROVENANCE-CONFIRMED / BODY-COPY-NONAUTHORITATIVE**.

It is useful only as an independent same-topic restatement. It does not upgrade the primary-source evidence class.

## 5. What the triangulation changes — and what it does not

The three secondary routes now align closely enough to make the remaining §21 primary check highly targeted:

- early ED p. 292: horizon as condition of appearing and the exceed-horizon question;
- ED pp. 292–293: no general abolition of horizon; the issue is its prior delimiting / conditioning role;
- ED p. 293 onward: the differentiated one-horizon / multi-horizon / stronger absolute cases.

This strengthens the **navigation and interpretation audit**, not the historical completion claim. In particular:

- `situated` and `conditions` should remain distinct;
- `Independent` should not be read as `Horizonless`;
- `NonExhaustible` remains only the current aspect-language's exhaustion predicate, not Marion's complete saturation concept;
- the stronger horizon-combination cases belong to a fuller saturation theory and are not necessary for the first narrow question;
- no source found here states the project's synthetic extensional bridge `situated ∧ Exhausts → conditions`.

The direct-primary stop gate therefore remains **OPEN**. The project still needs lawful direct body text for BG pp. 209–212 / early ED pp. 292–297 (or a reliably mapped formal reprint/translation), followed by a final interpretation freeze and same-SHA verification.

## 6. Formal increment: package the compatibility side explicitly

`FormalPhenomenology/FirstQuestion.lean` now adds:

```lean
theorem first_question_compatibility_witness :
    ∃ M : HorizonConditioning,
      M.ConditioningIsSituated ∧ M.HasSituatedIndependentExcess
```

The proof is exactly:

```lean
exact related_independent_nonExhaustible_are_jointly_consistent
```

So the theorem adds no new model and no new logical result. Its purpose is interface-level: the `FirstQuestion` module now exposes, alongside the main negative/iff answer and the constructive witness boundary, the already-verified compatibility witness showing that weak horizon-relatedness, weak horizon-independence, and non-exhaustibility can coexist in one actual appearance while conditioning remains a subrelation of relatedness.

This model-theoretic compatibility result is **FORMAL only**. It is not labeled a formalization of Marion's saturated phenomenon, and the secondary sources above are not used as axioms.

`Audit.lean` includes `#print axioms FormalPhenomenology.first_question_compatibility_witness`, so the branch CI must kernel-audit the wrapper together with the existing first-question entry points.

## 7. Handoff

Next high-value step remains the source gate, not theorem-count expansion:

1. consume a lawful direct §21 body route if one becomes accessible;
2. verify the exact local context around early ED 292–297 / BG 209–212 rather than relying on secondary quotation chains;
3. freeze the historical mapping only after that direct check;
4. rerun `lake build`, `python3 scripts/check.py`, root import coverage and the complete axiom audit on the final interpretation SHA.
