# First-question total-relatedness / conditioning reverse audit

Date: 2026-09-23

Branch: `research/first-question-main-theorem-20260918`

## Question checked this round

The previous finite pressure test already showed that `UniversalStructure`, one-way
`ConditioningIsSituated`, and genuine use of every conditioning horizon do not force
`ClosureBridge`.  This round checks a simple remaining relational loophole:

> Could that failure be an artefact of the `situated` relation being too sparse?

No new philosophical primitive or model family is needed to test this.  The existing
`mixedConditioningWitness` already has `situated p h := True`, so every horizon is related
to every actual appearance.

## Mandatory prior-art / reuse check

Targeted code searches were run before adding a theorem for combinations of
`horizon`, `conditioning`, `closure`, `capture`, and `exhaustivity`.

- `novaspivack/phenomenology-lean`, current `main@75230e4eab333ad0fc47573747521ccc1a31a163`:
  no same-shaped horizon/conditioning/closure API was located.  This remains direct Lean
  formal-phenomenology prior art, not a novelty baseline that this project can ignore.
- `cbenzmueller/LogiKEy`, current `master@b29954b0876d7991baf12f17378f31700f9de759`:
  no same-shaped relation-level theorem was located.  LogiKEy remains methodological prior
  art for semantic embeddings, formal-philosophy reconstruction, and model checking.
- `alexoltean61/msphml-lean`, current default branch
  `itp2026@9d6559db6502bc9813dcf028d7ea26ae80e9dc93`:
  no same-shaped horizon/conditioning/exhaustivity API was located in the targeted search.

These were bounded source/API searches, not claims that no logically equivalent fact exists
elsewhere.  The theorem below is elementary finite-model bookkeeping and is not presented as
an original logical result.

The same-topic literature check also continues to cut against identifying a related horizon
with exhaustive capture.  The Stanford Encyclopedia's current Merleau-Ponty entry describes
perspectival limitation as the obverse of the world's depth and inexhaustibility, while a
recent Erudit-accessible article reproduces a secondary quotation attributed to *Étant donné*
p. 294 in which an excessive phenomenon is read across essentially distinct horizons.  These
are interpretation/prior-art checks only; neither source replaces the project's required direct
review of the revised Marion book pages.

Relevant public routes checked this round:

- <https://plato.stanford.edu/entries/merleau-ponty/>
- <https://www.erudit.org/fr/revues/ltp/2016-v72-n2-ltp03006/1039300ar.pdf>

No authorized direct body for the tracked revised `Being Given` / `Étant donné` target pages
was obtained in this round.  The stop gate in `MARION_HORIZON_GATE.md` therefore remains
unchanged.

## Formal increment

`FormalPhenomenology/FirstQuestionNonvacuousConditioning.lean` now exposes:

```lean
mixedConditioningWitness_total_relatedness
```

which proves, for the already-existing finite witness,

```text
∀ p h, appears p → situated p h.
```

The project-facing reverse check is:

```lean
first_question_total_relatedness_horizonwise_conditioning_does_not_force_closure
```

with conclusion

```text
∃ M,
  (∀ p h, appears p → situated p h) ∧
  ConditioningIsSituated ∧
  (∀ h, ∃ p, appears p ∧ conditions p h) ∧
  ¬ ClosureBridge.
```

Thus the existing separation survives **maximal relatedness on actual appearances** as well
as horizonwise nonvacuous conditioning.  This removes the specific sparse-relatedness loophole;
it does not show that every philosophically relevant horizon relation is total, and it does not
identify this finite model with either Merleau-Ponty or Marion.

The proof deliberately reuses `mixedConditioningWitness` and
`mixedConditioningWitness_hasSituatedIndependentExcess`; it adds no new predicate, axiom,
classical principle, or semantic combination operator.

## Reverse-check status

The strongest simple comparison is the existing positive theorem boundary, not the previous
weaker countermodel statement: finite-cover/common-dominator and `ClosureBridge` theorems
already show what *does* force capture.  Total relatedness alone supplies no `Exhausts` witness,
so it cannot discharge those stronger premises.  The new counterexample keeps all three axes
explicit:

- `situated`: total on actual appearances;
- `conditions`: genuinely used by every horizon and coherent with `situated`;
- `Exhausts`: still fails because each Boolean horizon admits only its matching aspect.

Therefore the result does not arise from an empty domain, vacuous appearance relation,
unused conditioning relation, or sparse relatedness relation.  It remains a finite-model
consistency/separation fact, not an historical attribution.

## Validation handoff

Code commit: `4046aebfcf349a630bcbd8d71772a61b9f12277f`.

Audit-registration commit: `636085d70e705dada0aa41f5f0dd6ccd7c7b2813`.

Both new declarations are registered in `Audit.lean`.  The exact-head GitHub Actions verdict
must be recorded only after the documentation commit lands and its workflow completes; until
then this note does **not** claim a kernel/build pass for the new declarations.

## Remaining first-question gate

Formal robustness is not the stopping condition by itself.  The remaining material gate is
still direct, legally accessible body review of a reliably mapped revised Marion route
(BG 209–212 plus 225–226, ED 292–297 plus 314–315, or an authorized mapped reprint/
translation).  Until then `Independent` remains only a weak, explicitly registered
conditioning interface and `NonExhaustible` remains a separate extensional model axis.
