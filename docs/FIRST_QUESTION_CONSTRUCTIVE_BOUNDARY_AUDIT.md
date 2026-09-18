# First-question constructive-boundary audit — 2026-09-18

This note records one incremental research/formalization pass on the first horizon question. It does **not** change the historical attribution boundary and does **not** close the direct-primary `Being Given` gate.

## 1. Targeted external-work check

### Lean formal phenomenology

- Re-checked `novaspivack/phenomenology-lean` at commit `75230e4eab333ad0fc47573747521ccc1a31a163` (2026-05-20).
- Targeted code search for `double negation stability conditioning` returned no match on the default branch.
- Reuse decision: no same-shaped Merleau-Ponty/Marion horizon-conditioning API was found. The new theorem below is only a thin project-level entry point for an already proved internal constructive equivalence, so no new dependency or external port is justified.

This negative code-search result is not evidence of philosophical originality. It only says no directly reusable theorem was located in that repository for this exact project-level packaging.

### Marion 2007 official journal page

The official *Filozofia* page for Jean-Luc Marion, “A Saturated Phenomenon,” *Filozofia* 62(5) (2007), 378–402 was re-checked:

- https://filozofia.sav.sk/en/view/details/regular/2007/5/1739
- the page identifies Marion as author and provides the article page range;
- its abstract explicitly describes horizon as a constitutive condition of giving and the saturated phenomenon as unconditioned / irreducible, exceeding what intentional meaning can comprehend;
- the page exposes a PDF link, but the PDF fetch timed out in the current environment, so no body-text or page-image reading is claimed.

Evidence status: **AUTHOR-PUBLICATION / OFFICIAL-JOURNAL-ABSTRACT**, not a substitute for direct review of *Being Given* pp. 209–212, 225–226.

Formal consequence: this supports keeping `situated` (related horizon), `conditions` (horizon as limiting/possibility condition), and `Exhausts` separate. It does not justify any extensional `Captured → Conditioned` bridge.

### Recent same-topic secondary prior art

A 2025 *Continental Philosophy Review* article, “Whose reduction? Which givenness? Michel Henry, Jean-Luc Marion, and the fourth principle of phenomenology,” was also checked in its publisher HTML. Its Marion section describes saturated givenness as exceeding any conception and appearing with an open halo of further modes of appearance.

- https://link.springer.com/article/10.1007/s11007-025-09706-1

Evidence status: **SECONDARY-DIRECT-HTML / SAME-TOPIC PRIOR ART**. It reinforces that inexhaustibility/excess need not be represented as simple horizonlessness, but it supplies no project-level formal bridge and does not replace Marion primary text.

## 2. Formalization increment

`FormalPhenomenology/FirstQuestion.lean` now imports `ConstructiveBridge` and adds:

```lean
theorem first_question_witness_boundary (M : HorizonConditioning) :
    (∀ p, M.base.appears p → M.base.Captured p → M.Conditioned p) ↔
      ((∀ p, M.base.appears p → M.base.Captured p → ¬ M.Independent p) ∧
       (∀ p, M.base.appears p → M.base.Captured p →
         (¬ ¬ M.Conditioned p → M.Conditioned p)))
```

The proof is intentionally a thin reuse of
`appearing_witness_bridge_iff_exact_and_captured_stability`.

Interpretation:

- conflict exclusion on appearing captured phenomena is the exact condition needed for `Independent → NonExhaustible` in the existing relational language;
- turning that exclusion into an **actual conditioning witness** additionally requires double-negation stability exactly on the same appearing/captured domain;
- this stability premise is FORMAL / proof-theoretic and is not attributed to Marion or Merleau-Ponty.

The theorem adds no philosophical primitive and claims no new logic. Its purpose is to make the constructive boundary directly accessible from the same `FirstQuestion` module as `first_question_formal_answer`.

## 3. Validation scope

`Audit.lean` is extended with `#print axioms FormalPhenomenology.first_question_witness_boundary` so the next CI run must kernel-audit the new entry point.

No local `lake build` is claimed in this run because the execution environment could not resolve `github.com` for cloning. Validation must therefore be read from the GitHub Actions run for the exact new branch head after this commit.

## 4. Stop-gate status

Unchanged. The formal half is increasingly packaged, but the historical stop gate still requires lawful direct review of Marion *Being Given* pp. 209–212, 225–226, or a reliably mapped primary *Étant donné* / authorized reprint text. Official abstracts, exact secondary quotations, crosswalks, and related author publications do not count as direct review of those target book passages.
