# First-question finite-family negated normal form — 2026-09-22

## Scope

This round asks for the exact negative form of the already verified finite-family/dominator equivalence:

> once `Captured p` has been characterized by the existence of a finite situated cover with a common situated dominator, what does `NonExhaustible p` say about that package?

No new philosophical primitive, model family, horizon-combination operation, classical principle, or historical attribution is introduced.

## External-first / reuse audit

### Formal repositories

Before adding the corollary, a targeted code search was repeated over the registered baselines for combinations of `finite family`, `dominator`, `capture`, `horizon`, and `exhaustible`:

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163`;
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759`;
- `alexoltean61/msphml-lean@9d6559db6502bc9813dcf028d7ea26ae80e9dc93`.

No same-shaped reusable horizon/exhaustibility API was located in that bounded search. A broader GitHub search for the project-specific `NonExhaustible` vocabulary likewise produced no relevant formal-philosophy implementation. This is a bounded search result, not an originality or non-existence claim.

LogiKEy remains a methodological precedent for shallow semantic embedding and countermodel-assisted conceptual analysis, not a dependency for this elementary relation/quantifier corollary. Adding a large modal or HOL embedding dependency here would be disproportionate.

### Same-topic / primary-source refresh

The interpretation is unchanged. A fresh lawful-access check found that the PUF/Quadrige eBook route exposed by Lavoisier still advertises a public `Télécharger un extrait` link for ISBN `9782130807490`; the endpoint resolves as an EPUB payload, but the current web runtime cannot ingest that binary body. Vivlio/Leclerc/Casa del Libro likewise expose public preview affordances or metadata, but the rendered pages available in this runtime did not expose the target revised §21 body. No access control was bypassed, and no unauthorized full-book mirror was used.

Secondary exact-page evidence remains useful but does not close the stop gate: Leung continues to quote *Being Given* pp. 211–212 for the `horizon` / `condition of possibility` reading. The official/publisher routes still have not yielded lawful direct-body review of BG pp. 209–212 plus the tracked later passage, or a reliably mapped revised equivalent.

## Formal result

`FormalPhenomenology/FirstQuestionFiniteFamily.lean` now adds:

```text
first_question_nonExhaustible_iff_no_finite_family_with_dominator
```

For arbitrary `M : Presentation` and `p : M.Phenomenon`:

```text
NonExhaustible p
↔
¬ ∃ hs : List Horizon,
    finiteSituatedCover p hs
    ∧ ∃ hStar,
        situated p hStar
        ∧ hStar dominates every admission contributed by hs.
```

The repository does not introduce `finiteSituatedCover` or `dominates` as new predicates; the theorem expands those clauses directly in the statement. This keeps the public relation language unchanged.

## Proof graph and reverse check

The proof is deliberately thin and reuses the strongest local baselines:

1. `nonExhaustible_iff_not_captured M p` gives `NonExhaustible p ↔ ¬ Captured p`;
2. `first_question_captured_iff_exists_finite_family_with_dominator M p` gives `Captured p ↔` the finite-cover-plus-dominator package;
3. the new theorem merely composes those equivalences in negative polarity.

Both directions are proved constructively by explicit introduction/elimination rather than by adding classical axioms or a new semantic assumption.

This reverse check is important for interpretation: the result is not evidence that Marion's historical "combination of horizons" is a finite list, nor that every plural horizon structure must admit a dominator. It only states the exact complement of the already established extensional capture package in the current encoding.

## Source and interpretation boundary

The theorem strengthens the *formal bookkeeping* available to the first question but does not change the historical mapping:

- Merleau-Ponty primary passages already reviewed support openness/non-exhaustion and do not supply a closure bridge;
- Marion's 1996 author text already supports separating horizon-relatedness from horizon as prior condition and warns against reading saturation as simple horizonlessness;
- the revised *Étant donné / Being Given* direct-body gate remains open, so no stronger attribution is made.

## Verification handoff

Code commit: `f98b3d76a46a84c167598238bee230d3dddbc925`.

Audit-registration commit: `8f48a70fe62e0feb26b083442e78735bf9e27c8f`.

`Audit.lean` now requests:

```text
#print axioms FormalPhenomenology.first_question_nonExhaustible_iff_no_finite_family_with_dominator
```

The previous exact branch head `d348f8118130fa52e9397953e16c407d692951fa` had successful CI with 14 modules / 107 audited theorems / 17 successful build jobs / 107 of 107 axiom-free declarations. The new code must obtain its own exact-head workflow success before this round is considered kernel-verified; old CI is not inherited.

## Remaining stop gate

The first research question is not complete solely because of this corollary. The remaining material stop condition is still lawful direct review of a revised Marion route (BG pp. 209–212 plus the tracked later passage, early ED pp. 292–297 plus 314–315, the mapped Spanish revised target, or an authorized reliably mapped revised reprint/translation). If that body preserves the present related/conditioning/exhaustion separation, the interpretation can be frozen and the full proof/audit stack rerun on one final SHA; if it forces a mismatch, only the smallest text-required interface should be added.
