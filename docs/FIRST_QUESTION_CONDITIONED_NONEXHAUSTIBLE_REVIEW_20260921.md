# First-question constructive conditioning / non-exhaustibility review

Date: 2026-09-21

Branch: `research/first-question-main-theorem-20260918`

Scope: a reverse-review of the strengthened claim that the first-question separation does **not** depend on leaving the conditioning predicate free.  The tested profile is stronger: `situated` and `conditions` coincide extensionally in both directions, the appearing phenomenon has a **positive** `Conditioned` witness, and it is nevertheless `NonExhaustible`.

## 1. External-work gate

### Lean formal phenomenology

Fresh branch check: `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163` (main, 2026-05-20).  Targeted GitHub searches on 2026-09-21 for combinations of `horizon`, `exhaustible`, `conditioning`, `capture`, and `conditioned` returned no same-shaped Marion horizon/exhaustibility API.  This remains direct formal-phenomenology prior art, not an importable replacement for the present relation layer.

### LogiKEy / computational-hermeneutic method

Fresh branch check: `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759` (master, 2026-09-13).  A targeted `Horizon` search only hit unrelated uses of “horizontal”; no Marion horizon/exhaustibility theory was located.  LogiKEy and the AFP computational-metaphysics / computational-hermeneutics line remain methodological precedents for explicit semantic encodings, model comparison, and countermodel pressure tests.  No new general logic infrastructure is needed here.

A targeted check of `alexoltean61/msphml-lean` for `horizon phenomenology exhaustive` likewise returned no direct reusable theorem/API.  This is only a search result; it is not a claim that no relevant work can exist elsewhere.

### Same-topic interpretation

The current formal strengthening is consistent with the already-recorded secondary source boundary rather than adding a historical thesis:

- Shane Mackinlay, *Interpreting Excess: Jean-Luc Marion, Saturated Phenomena, and Hermeneutics* (Fordham University Press; publisher metadata gives 1 Dec 2009 / copyright 2010), treats Marion's `Being Given` pp. 209–211 as allowing a phenomenon to fill one horizon, overflow into additional horizons, and—at the strongest limit—defeat any combination of horizons.  The public publisher page confirms the book and its scope; searchable secondary text reproduces the BG/ED page crosswalk and the several-horizon discussion.
- Brock Mason, “Saturated Phenomena, the Icon, and Revelation,” likewise summarizes BG 210–211 as one-horizon saturation, spillover into multiple horizons, and a combined case where no combination of horizons tolerates the phenomenon.

These are secondary witnesses and do **not** close the revised-§21 direct-primary gate.  They do, however, reinforce a constraint already present in the project: “related to / conditioned through horizon(s)” must not be silently identified with “exhausted by one horizon.”  The new Lean result is a model-theoretic guardrail for exactly that distinction, not a claim that `Conditioned` is Marion's complete notion of horizonal condition or that `NonExhaustible` is his full saturated phenomenon.

## 2. Reuse decision

No new primitive, model family, modal logic, or proof-assistant dependency is introduced.  The proof reuses:

- `splitDependentConditioning`;
- `splitModel_structure`;
- `splitDependentConditioning_nonExhaustible`;
- `nonExhaustible_iff_not_captured`.

The strengthened witness is therefore a thin packaging of an existing finite model under a more demanding statement.  This avoids both a large external dependency and the weaker argument “the separation happens only because `Independent` was defined freely.”

## 3. Formal claims added

`mutualSituatedConditioning_allows_conditioned_situatedExcess` exhibits a model satisfying

```text
UniversalStructure
∧ ConditioningIsSituated
∧ SituatedImpliesConditioning
∧ ∃ p,
    appears p
    ∧ Structured p
    ∧ Conditioned p
    ∧ NonExhaustible p.
```

The witness is constructive: `Conditioned p` is given by an explicit horizon in `splitDependentConditioning`, rather than inferred from `¬ Independent p`.

`mutualSituatedConditioning_conditioned_does_not_force_capture` packages the implication-level separation:

```text
UniversalStructure
∧ (conditions → situated)
∧ (situated → conditions)
∧ appears p
∧ Conditioned p

↛ Captured p.
```

Thus even the strongest simple extensional identification of the current relatedness/conditioning relations does not turn positive conditioning into exhaustive capture.

## 4. Reverse review / simple-baseline check

The result is not obtained by a free `Independent` predicate: the proof never assumes `Independent`; the witness supplies `Conditioned` positively.  The same underlying model already satisfies `¬ Independent` at the appearing phenomenon.

The result also does not exploit horizonlessness or vacuous non-exhaustibility: the witness is `Structured`, and in fact `UniversalStructure` holds.

No quantifier swap is hidden: the conclusion denied is a single-horizon existential capture (`Captured p`), while the finite split model has horizon structure without any one horizon exhausting all encoded aspects.  This is the same `∀ aspect, ∃ horizon` versus `∃ horizon, ∀ aspect` guardrail already audited elsewhere, now tested under positive conditioning.

## 5. Source boundary and stop condition

This round does **not** close the first-question source gate.  The remaining stop condition is still lawful direct review of the revised text route (BG 209–212 / 225–226, early ED 292–297 / 314–315, the mapped Spanish route, or an authorised reliably mapped revised reprint).  Secondary BG/ED crosswalks and searchable quotations remain supporting evidence only.

Once the code/audit commit receives exact-head CI, this file should be read as a focused addendum to `docs/PRIOR_ART.md`, not as a novelty claim.
