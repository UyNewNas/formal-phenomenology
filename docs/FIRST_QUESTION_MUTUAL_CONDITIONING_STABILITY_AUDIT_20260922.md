# First-question mutual-conditioning stability audit

Date: 2026-09-22

Branch: `research/first-question-main-theorem-20260918`

## Scope

This round asks a narrowly proof-theoretic follow-up to the already-registered mutual-identification pressure test:

> if `situated` and `conditions` are explicitly assumed to coincide, what is the exact extra premise needed to pass from absence of a positive conditioned/excess counterexample to the positive `ClosureBridge` claim?

The answer is local double-negation stability of `Captured` on the same appearing/conditioned domain. The theorem does **not** strengthen any historical attribution.

## External-first reuse check

Fresh bounded code search used the terms `conditioned captured horizon closure nonexhaustible` across the live formal baselines:

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163`;
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759`;
- `alexoltean61/msphml-lean@7e8738c8a0b224dc6b3848783de8c7d8c11c3641`.

No same-shaped reusable theorem/API was located in that scoped search. This is a reuse decision only, not a novelty claim. LogiKEy and related AFP work remain methodological precedents for explicit interpretation choices and countermodel assessment rather than importable horizon/exhaustibility infrastructure.

The new proof reuses only this repository's already-audited facts:

- `first_question_mutual_conditioning_conditioned_iff_structured`;
- `first_question_mutual_conditioning_conditioned_excess_iff_situatedExcess`;
- `first_question_no_situatedExcess_iff_double_negated_capture`;
- `situatedExcess_refutes_closureBridge`.

No general logic library or new semantic embedding is introduced.

## Same-topic source / interpretation check

The revised-primary stop gate was rechecked before changing the formal package. Public searches still expose secondary exact-page reconstructions and official metadata, not a lawful directly readable copy of the target revised body. In particular:

- King-Ho Leung's 2022 article still gives a secondary exact-page reconstruction of BG 211–212 that treats horizon as a `condition of possibility` in the relevant Marion discussion;
- Brock Mason still distinguishes one horizon, multiple horizons, and the stronger no-combination case around BG 210–211;
- the 2025 PUF collection *Le phénomène et le donné* (ISBN `9782130886686`) is confirmed by publisher/bookseller metadata as republishing *Étant donné*, but the public Lavoisier extract endpoint currently presents as `application/epub+zip` and was not ingestible in this runtime;
- no access control, DRM, institutional-login surface, or unauthorized full-book mirror was bypassed.

Therefore the theorem below is kept strictly as a FORMAL normalization. It does not close the revised-primary source gate and does not identify `Conditioned`, `Captured`, or `NonExhaustible` with Marion's full saturated-phenomenon taxonomy.

## Formal increment

New module:

`FormalPhenomenology/FirstQuestionMutualConditioningStability.lean`

New theorem:

`first_question_mutual_conditioning_closureBridge_iff_no_conditioned_excess_and_captured_stability`

Statement, informally:

under explicit `SituatedImpliesConditioning + ConditioningIsSituated`,

`ClosureBridge`

iff

1. there is no actually appearing `Conditioned ∧ NonExhaustible` witness; and
2. for each actually appearing conditioned phenomenon, `¬¬ Captured p → Captured p`.

This strictly sharpens the previous decidability corollary: decidability remains a sufficient source of the stability premise, but the theorem records only the exact double-negation elimination actually needed.

## 2026-09-22 follow-up: universal-structure quantifier normalization

### Reuse / prior-art recheck

Before adding another theorem, a fresh bounded GitHub code search used the shape `horizon captured closure exhaust condition` against:

- `novaspivack/phenomenology-lean`;
- `cbenzmueller/LogiKEy`;
- `alexoltean61/msphml-lean`.

The search returned no same-shaped reusable API. This is again only a bounded reuse check; it is not a claim of philosophical or logical novelty. The result is proved by composing the existing mutual-conditioning normalization and stability theorem, so no new dependency or general logical infrastructure was added.

The same-topic source check also added two provenance facts without upgrading the evidence level:

- De Gruyter/Stanford's official book record identifies §21 as **“Sketch of the Saturated Phenomenon: The Horizon,” pp. 199–212**, with chapter DOI `10.1515/9780804785723-024`; the chapter body was not exposed by the current public retrieval path, so this remains publisher metadata rather than direct-body review.
- Open Library's record for the 1997 PUF *Étant donné* (ISBN `2-13-048677-0`) identifies Internet Archive item `etantdonneessaid0000mari_w5n7` behind a borrow-controlled route. No login, loan session, access control, or restricted file was bypassed; the body was not read in this run, so the route is not counted as `PRIMARY-DIRECT-PAGE` evidence.

These checks leave the current interpretation unchanged: `UniversalStructure` may be used as the weak Merleau-Ponty-facing horizon-structure compression already documented in the project, while mutual `situated ↔ conditions` remains an explicit competing encoding rather than an attribution to either author.

### Formal increment

The same module now also contains:

`first_question_mutual_conditioning_universalStructure_closureBridge_iff_no_conditioned_excess_and_stability`

Under the explicit assumptions

- `UniversalStructure`;
- `SituatedImpliesConditioning`;
- `ConditioningIsSituated`;

the theorem proves:

`ClosureBridge`

iff

1. there is no actually appearing `Conditioned ∧ NonExhaustible` witness; and
2. `Captured` is double-negation stable on the **actual-appearance domain**.

The point of the theorem is a quantifier-domain audit: once every actual appearance is structured and mutual identification turns structure into positive conditioning, the extra `Conditioned p` premise in the stability conjunct is redundant. This does not make the mutual identification historically true; it shows exactly what follows **if** that stronger competing encoding is adopted.

Code commit: `bff692bac274aba4ab42488e3e1e4e45920091f6`.

Axiom-audit registration commit: `a24af3d87edf48dfedf27520d00e21901e0ae292`.

## Validation status

The earlier increment began at `7ea79ee912f3f4afb8794b96efe289a4e963fb08` and subsequently reached exact-head CI success before this follow-up.

For the follow-up theorem, exact-head GitHub Actions after the final documentation/checkpoint commit is the authoritative verdict. No successful Lean build, root-coverage result, or axiom report is claimed here until that final exact SHA completes CI.

## Remaining stop gate

The first research question remains open until the revised-primary interpretation mapping is directly checked in body text (BG 209–212 plus the tracked later passage; early ED 292–297 plus 314–315; mapped authorized Spanish route; or a reliably mapped authorized revised reprint/translation). The De Gruyter chapter DOI and Open Library borrow route improve provenance/access routing only; they do not satisfy this body-text gate by themselves.

If direct body review preserves the current relatedness/conditioning distinction, freeze the interpretation and rerun the complete proof and axiom audit on the final SHA. If it forces a mismatch, change only the smallest first-question interface required by the text.
