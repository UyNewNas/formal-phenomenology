# First-question finite-family reverse audit — 2026-09-21

Branch: `research/first-question-main-theorem-20260918`

## Scope

This round performs the required later-pass reverse review of the candidate finite-family guardrail recorded in `FIRST_QUESTION_BOUNDED_FAMILY_GUARDRAIL_20260921.md`, then packages the already-proved open-chain facts into one project-facing witness. It does not add a new primitive, model family, horizon-combination operation, classical principle, or historical attribution.

## Fresh external / reuse check

Before adding the wrapper, the live external formal baselines were rechecked:

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163` (`main`, unchanged since 2026-05-20);
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759` (`master`);
- `alexoltean61/msphml-lean@9d6559db6502bc9813dcf028d7ea26ae80e9dc93` (`itp2026`).

A targeted GitHub code search across those repositories for `horizon finite cover exhaustive combination` returned no same-shaped reusable API. This is a bounded search result, not a claim that no related result exists. LogiKEy / computational-hermeneutic work remains methodological prior art for semantic reconstruction and countermodel analysis rather than a dependency for this elementary Lean-Core quantifier argument.

The same-topic source baseline is unchanged. Leung / Mason / Mackinlay remain secondary exact-page guides for the one-horizon / several-horizon / no-combination sequence and horizon-as-condition-of-possibility reading. Lawful public routes still did not expose the revised target body (BG 209–212 and 225–226, early ED 292–297 and 314–315, or a reliably mapped authorized revised reprint) in this run. Metadata, limited previews, and secondary quotations were not upgraded to direct-primary evidence; unauthorized mirrors were excluded.

## Reverse check of the finite-family candidate

The strongest applicable formal baseline is `expandingModel_no_bounded_family_cover`, not the older fixed-pair theorem. In `expandingModel`, every selected horizon bounded by `B` admits only aspects `a < h ≤ B`; therefore the diagonal aspect `B` is admitted by none of them. The finite-list theorem is a direct corollary after proving every member of `hs : List Nat` lies below the internally constructed `expandingModelListBound hs`.

This later-pass re-derivation confirms the quantifiers and object are unchanged:

1. one actual phenomenon `()` appears;
2. every aspect is presented;
3. every aspect is admitted by some larger situated horizon (`IndividuallyCoverable`);
4. every single situated horizon fails to exhaust the phenomenon (`NonExhaustible`);
5. every concrete finite list of situated horizons is bounded and therefore fails to cover all presented aspects.

The argument does **not** quantify over a semantic operation that combines horizons, does not exclude an ideal/infinite horizon added by domain extension, and does not identify a finite list with Marion's strongest historical “no combination of horizons” figure. Hence the candidate finite-list guardrail survives the reverse check only at this explicitly limited FORMAL level.

## Formal increment

`FormalPhenomenology/FirstQuestionRobustness.lean` now exposes the combined witness

```lean
theorem first_question_nonExhaustible_aspectwise_cover_has_no_finite_family :
    ∃ M : Presentation, ∃ p : M.Phenomenon,
      M.appears p ∧ M.NonExhaustible p ∧ M.IndividuallyCoverable p ∧
        ∀ hs : List M.Horizon,
          ¬ (∀ a, M.presents p a →
            ∃ h, h ∈ hs ∧ M.situated p h ∧ M.admits h a)
```

The proof reuses only `expandingModel_no_horizon_exhausts`, `expandingModel_individual`, and `expandingModel_no_finite_list_cover`. `Audit.lean` includes the new declaration. Code commits preceding this handoff are `c2e98e3f5e05748a5b7c05030b70ec9ff2e00150` and `15e4d6c5a4c6d3404655bb8ad0e56d882c00b86a`.

This is a guardrail/package of existing verified ingredients, not a new philosophical result by itself. It sharpens the interpretation boundary of `NonExhaustible`: failure of one-horizon capture can coexist with aspectwise horizon availability, and in this open-chain witness even every finite named family is still insufficient.

## Validation / handoff

The exact final branch SHA for this round is the commit that adds this document. GitHub Actions must validate that exact SHA; no earlier green SHA is inherited. PR #31 remains the authoritative exact-head checkpoint after the run completes.

The first research question remains open because the direct revised-primary source gate is still unresolved. No stop condition is claimed and PR #31 remains unmerged until the interpretation is frozen against lawful direct revised text and the final frozen SHA passes the full build/source/kernel audit.
