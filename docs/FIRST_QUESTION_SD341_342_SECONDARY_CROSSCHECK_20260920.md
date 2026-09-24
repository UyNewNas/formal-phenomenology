# First-question SD 341–342 secondary cross-check — 2026-09-20

This checkpoint continues the remaining source gate for the first horizon/exhaustibility question. It records a fresh same-topic and proof-infrastructure recheck, then compares a legally accessible Spanish exact-page secondary quotation against the already packaged Lean quantifier boundary. It **does not** upgrade secondary quotation to direct primary review and does not add a new philosophical primitive.

## 1. External-work / reuse gate

The engineering and method baselines were rechecked before deciding whether any new Lean object was justified.

- `novaspivack/phenomenology-lean` still has `main@75230e4eab333ad0fc47573747521ccc1a31a163` (2026-05-20). No newer commit is available to re-audit. The repository remains direct Lean formal-phenomenology prior art, but no Marion/horizon/exhaustibility API was found that would replace this project's narrow `situated / conditions / Exhausts` layer.
- `cbenzmueller/LogiKEy` still has `master@b29954b0876d7991baf12f17378f31700f9de759` (2026-09-13). It remains a computational-philosophy / semantic-embedding method precedent rather than a same-topic theorem or lightweight dependency for the present relation model.
- No new general logic facility is needed: the current branch already packages the relevant `∃h∀a` versus `∀a∃h` distinction using ordinary Lean quantifiers and the existing finite split model.

Reuse decision: **no new dependency, no generic logic port, and no new horizon-combination primitive in this round**.

## 2. Lawful primary routes rechecked

### 2.1 PUF / Lavoisier excerpt

The current Lavoisier product page for Jean-Luc Marion, *Étant donné : Essai d'une phénoménologie de la donation*, identifies PUF / Quadrige, EAN `9782130807490`, a 540-page EPUB, and a public `Télécharger un extrait` control. The storefront currently labels the listing `2e édition`, publication 27 February 2025.

The excerpt control resolves to the concrete public endpoint `https://e.lavoisier.fr/extract/523630`, but the current web runtime rejects the payload as `application/epub+zip` before exposing its body. No reader API, DRM, account flow, or access control was bypassed. The result is therefore an **authorized preview route that remains non-readable in this runtime**, not direct primary page evidence.

### 2.2 Marion 2007 official article route

The official *Filozofia* page for Jean-Luc Marion, “A Saturated Phenomenon,” *Filozofia* 62(5), 2007, pp. 378–402, was rechecked directly on the publisher site. The publisher abstract again describes the horizon as a constitutive condition of givenness and exposes an official PDF link. The PDF fetch again timed out before page content was returned.

This remains useful author-primary corroboration at publisher-page / abstract level, but it does not substitute for direct review of revised *Being Given* §21 or a reliably mapped revised translation.

## 3. Spanish exact-page secondary body recovered

A fresh same-topic search recovered Jaime Llorente Cardo, “El existir neutro como ‘fenómeno saturado’: describiendo la contra-experiencia del exceso con Emmanuel Levinas y Jean-Luc Marion,” *Tópicos* 49 (2015), pp. 123–162, DOI `10.21555/top.v0i49.686`, in a legally accessible SciELO full-text HTML/PDF surface.

The article quotes and discusses the 2008 Spanish translation *Siendo dado* with exact pages. The relevant reconstruction is materially useful because it fixes the internal order of the horizon cases at SD pp. 341–342:

1. SD p. 341 treats horizon as a condition of appearing that both receives and restricts phenomena, and asks whether some phenomena can overflow their horizon.
2. The first possibility is that the phenomenon remains within the limits of its horizon.
3. SD p. 342 gives a second possibility in which several horizons are jointly articulated to receive one saturated phenomenon.
4. Llorente then distinguishes the stronger case in which even that multi-horizon accommodation is insufficient; his discussion continues to SD p. 344 for the strongest manifestation claim.

This is **SECONDARY-DIRECT-FULLTEXT + EXACT-PAGE-QUOTATION**, not direct access to Marion's 2008 Spanish book body. The source is therefore strong enough to constrain interpretation and the quantifier audit, but not strong enough to close the repository's direct-primary stop gate.

The same search also recovered the 2008 Spanish edition metadata independently through Google Books: Jean-Luc Marion, *Siendo dado: ensayo para una fenomenología de la donación*, trans. Javier Bassas Vila, Síntesis, 2008, 514 pp., ISBN `8497565568` / `9788497565561`. Google Books did not expose the target page body in this runtime.

## 4. Consequence for the existing Lean formalization

The newly rechecked SD 341–342 secondary evidence does **not** force a new formal primitive. Instead it sharpens why the current first-question guardrail must remain weak and quantifier-disciplined:

- `Captured p` uses one situated horizon witnessing `∃ h, ∀ a, ...`.
- `IndividuallyCoverable p` permits the horizon to depend on the aspect, i.e. the weaker `∀ a, ∃ h, ...` pattern.
- `first_question_nonExhaustible_allows_aspectwise_horizon_cover` already proves that an actually appearing phenomenon can be `NonExhaustible` while still `IndividuallyCoverable`.
- `first_question_aspectwise_cover_is_strictly_weaker_than_capture` already packages the exact logical boundary: capture implies aspectwise cover, while the converse fails in an actual appearing split-model witness.

The Spanish secondary sequence confirms that interpreting `NonExhaustible` as “no one situated horizon exhausts all encoded aspects” must **not** be silently promoted to Marion's stronger claim about one, several, or combined horizons. Conversely, adding a `HorizonCombination` API now would exceed the needs of the first question and would introduce unconstrained modelling freedom before direct primary review.

Accordingly, **no new Lean theorem is added in this checkpoint**. The formal work is an interpretation-to-model audit of the already verified first-question package, followed by exact-head regression verification. This is intentionally preferable to theorem-count growth.

## 5. Stop-gate status

The first research question remains open. The remaining material gate is still lawful direct body-text review of one of the already tracked revised routes:

- BG pp. 209–212, with BG pp. 225–226 retained for the intention/intuition/constitution check;
- early ED pp. 292–297, with ED pp. 314–315 retained for the same later check;
- SD pp. 341–342 in the authorised 2008 translation (and the later tracked passage around the intention/intuition axis);
- or an authorised revised reprint/translation whose textual identity can be mapped reliably to the same sequence.

This round narrows the interpretive uncertainty but **does not close the gate**: Llorente's exact-page quotation is a secondary reconstruction, while the official PUF excerpt and official Marion 2007 PDF remain unreadable in the current runtime.

## 6. Exact validation requirement

After this documentation commit, the branch must rerun the existing repository verification unchanged. Success requires the exact new SHA to pass the workflow's `Build, source coverage, and kernel axiom audit` step; a previous green SHA is not reused as evidence. Because no Lean source was changed, any green result is a regression check of the existing `first_question_complete_formal_answer` package and its root/audit coverage, not evidence of a new philosophical theorem.
