# First-question main theorem audit

Date: 2026-09-18

This note records one formal packaging step and one primary-source access audit. It does **not** close the first research question: the Marion book/reprint direct-primary gate remains open.

## 1. Why add a main theorem now?

The first question had already been answered by separate verified results, but there was no single Lean declaration corresponding to the complete formal question. The new theorem `first_question_formal_answer` only packages two existing results:

1. bare horizon structure does **not** entail an exhaustive-capture bridge;
2. on the domain of phenomena that actually appear, horizon-independence implies non-exhaustibility exactly when there is no appearing `Captured ∧ Independent` witness.

In formulas:

```text
¬ (∀ M : Presentation, UniversalStructure M → ClosureBridge M)

and, for every HorizonConditioning M,

(∀ p, appears p → Independent p → NonExhaustible p)
↔
¬ ∃ p, appears p ∧ Captured p ∧ Independent p.
```

The proof is deliberately thin: it reuses `horizon_structure_does_not_entail_closure` and `appearing_independence_implies_nonExhaustible_iff_no_captured_independent_witness`. No new philosophical primitive, historical attribution, classical axiom, or stronger bridge is introduced. The value of the declaration is interface-level: the formal half of the first research question now has one explicit kernel target, while the historical/textual completion criterion remains separate.

## 2. Prior-art/reuse gate for this addition

Before adding the wrapper, the current external-work register was rechecked rather than treating theorem packaging as novelty.

- `novaspivack/phenomenology-lean` remains at commit `75230e4eab333ad0fc47573747521ccc1a31a163` (2026-05-20). A targeted repository search for `horizon`, `conditioning`, `exhaustive`, `captured`, and `independent` did not locate an API matching this first-question statement. The repository remains an important Lean formal-phenomenology precedent, so this project does not claim to be the first Lean formalization of phenomenology.
- LogiKEy / AFP computational-metaphysics and computational-hermeneutics work remains methodological prior art for formal reconstruction and countermodel analysis. This wrapper does not introduce a competing general logic framework and therefore does not justify a new dependency.
- The logic in the new theorem is only a composition of already audited local results. It is not claimed as an original theorem of logic or a new historical interpretation.

Reuse decision: **local thin packaging of already verified project results**; no external port and no new general-purpose API.

## 3. New access audit for Marion's book/reprint route

A fresh legal-access check found a useful but ultimately negative route:

- WorldCat's record for Jean-Luc Marion / Kevin Hart (ed.), *The Essential Writings* (Fordham University Press, 2013) labels the ebook record with an `Access free` link.
- Following that link leads to Internet Archive item `essentialwriting0000mari`, which identifies the same Fordham volume but explicitly reports `Access-restricted-item: true`, collection `printdisabled`, and `No suitable files to display here` without authenticated borrowing.
- The official De Gruyter/Fordham record independently confirms the chapter `Sketch of the Saturated Phenomenon`, pp. 108–134, DOI `10.1515/9780823292905-006`, but the public chapter page still exposes metadata/citation rather than the chapter body.

Therefore this route does **not** satisfy the direct-primary stop gate. The project does not use restricted BookReader/OCR internals, borrowed files, or unofficial mirrors to bypass access controls.

A separate fresh check of the official *Filozofia* page for Marion's 2007 `A Saturated Phenomenon` confirms the author/article metadata and abstract: the abstract explicitly treats horizon as a constitutive condition of givenness and describes saturated phenomenality through intuition surplus / unconditioned phenomenality / reversal of the subject-object relation. The official PDF endpoint was not retrievable in this environment, so the abstract remains author-side supporting evidence, not a substitute for direct review of *Being Given* / *Étant donné* target pages.

## 4. Current stop-gate status

The formal question is now exposed as one top-level theorem, but the project must **not** mark the first research question complete until the primary-text gate is satisfied and the final interpretation is frozen.

Still required:

- direct legal review of *Being Given* pp. 209–212 and 225–226, or the corresponding early *Étant donné* ranges pp. 292–297 and 314–315, or a verified official reprint carrying the corresponding text;
- final historical decision on the weak reading of `Independent` and confirmation that `NonExhaustible` / `Captured` remain independent model axes rather than definitions of Marion's full saturation;
- after that freeze, a fresh build, project checker, root-import audit, axiom audit, and CI on the final commit.

The main-theorem wrapper is therefore an engineering/research-clarity milestone, not completion and not a novelty claim.
