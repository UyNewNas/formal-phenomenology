# 外部工作与复用审计

核查日期：2026-09-18。本文记录与首个研究问题直接或方法上相邻的外部工作，避免把已有逻辑基础设施、形式哲学方法或既有解释重新包装成新发现。

## 审计规则

在新增非平凡定义、lemma、模型族或哲学归属前，必须分别检查：

1. **证明基础设施**：Lean/Core、必要时 mathlib，以及相关 Lean / Isabelle/HOL / AFP 工作；
2. **方法先例**：计算形而上学、计算诠释学、语义嵌入、论证重构和反模型方法；
3. **同题解释文献**：Merleau-Ponty / Marion / Husserl 的 horizon、horizontality、saturation、givenness、condition of possibility、intentionality 等。

“没有同名定理/仓库”、更换证明助手、定理数增加或达到 0 `sorry` 都不构成原创性证据。若谓词被人为定义为互不受约束，则分离定理首先只说明**建模自由度**，不是历史概念独立性的证据。

## 1. Lean formal phenomenology prior art

### novaspivack/phenomenology-lean

- 仓库：<https://github.com/novaspivack/phenomenology-lean>
- 2026-09-18 再次核对 `main`，仍停在 commit `75230e4eab333ad0fc47573747521ccc1a31a163`（2026-05-20）。
- 仓库自述 Lean 4.29.1 / Mathlib 4.29.1，并依赖 `sentience-lean`、`nems-lean`、`reflexive-closure-lean`；范围包括 qualia、manifestation、ownership、selector-access、countermodels 和 meta-theory。
- 既有审计实读 `StructuredManifestation.lean`、`ManifestationNonReducibility.lean`、`Meta/Minimality.lean`、`MANIFEST.md`。
- 针对当前首问继续搜索 horizon / Marion / saturated / conditioning / captured / independent / stability 等组合，仍未定位到同型 API。

**判断。** 这是直接的 Lean formal phenomenology 先例，所以本项目不声称“首次用 Lean 形式化现象学”。但没有定位到可替换本项目 Merleau-Ponty / Marion horizon、conditioning、exhaustibility 关系层的现成 API。外部仓库本轮没有重新构建，不能把其自述 build/zero-sorry 状态冒充本轮实测。

## 2. Isabelle/HOL / AFP 与方法 prior art

### LogiKEy

仓库 <https://github.com/cbenzmueller/LogiKEy>；2026-09-18 再次核对 `master`，仍为 commit `b29954b0876d7991baf12f17378f31700f9de759`（2026-09-13）。它以 shallow/deep semantic embedding 复用 Isabelle/HOL、自动证明器与反模型器，覆盖规范逻辑、法律／伦理推理、计算形而上学及多种模态/非经典逻辑。

### Abstract Object Theory（AFP, Daniel Kirchner, 2022）

Isabelle/HOL 已有 AOT 模型、语义与 possible worlds 等大规模计算形而上学案例。“哲学体系的机助形式化”不是本项目发明。

### Lowe modal ontological argument / Computational Hermeneutics

Fuenmayor / Benzmüller 等已经展示自然语言哲学论证的解释、意义公设、竞争重构、模型查找和形式验证迭代。本项目不声称“解释选择 → 形式化 → 反模型／证明”的方法工作流是新发明。

## 3. 同题解释 prior art

### Murga (2024)

Ezequiel Daniel Murga, “La posibilidad de una horizonticidad no metafísica en Jean-Luc Marion,” *Logos. Anales del Seminario de Metafísica* 57(2), 309–325, DOI `10.5209/asem.94542`。论文直接讨论 Marion 批判 horizon 的形而上学式先行限定使用，而非简单删除 horizon，并提出 non-metaphysical horizontality 的可能。

**判断。** 本项目 `situated` / `conditions` 分层是对已有解释空间的形式接口，不能声称为新的历史解释发现。

### Djian (2018)

Aurélien Djian, “L’horizon et le destin de la phénoménologie,” *Philosophiques* 45(2), 343–364, DOI `10.7202/1055267ar`。Érudit 开放索引／正文检索直接返回论文文本。Djian 讨论 *Étant donné* §21–22 时把 horizon 分析为 phenomenality 的 condition of possibility 和对 intuition 的限制，并引用 ED pp. 304–305 说明 horizon 与 I 作为限制 donation 的两项条件。

**复用判断。** `conditions` 所压缩的解释轴已有明确 prior art；但 Djian 没有给出 `situated ∧ Exhausts → conditions` 这种 extensional bridge，所以 `ExhaustiveCaptureConditions` 仍是本项目压力测试。

### Falabretti (2015/2016)：直接 Merleau-Ponty / Marion 比较

Ericson Falabretti, “Merleau-Ponty e Marion: o problema da ambiguidade entre uma fenomenologia da percepção e uma fenomenologia da doação,” *Revista de Filosofia Moderna e Contemporânea* 3(2), 87–102，DOI `10.26512/rfmc.v3i2.12514`。官方页面与官方 PDF 文本已直接读取；page-image 截图未在当前环境成功，因此登记为 **SECONDARY-DIRECT-PDF-TEXT / PAGE-IMAGE-NOT-REVIEWED**。

- p. 90 将 Merleau-Ponty 的知觉写成持续开放的时空 horizon field，并说知觉不会穷尽被知觉者或知觉活动；
- p. 98 以 “no horizon / overflowing presence” 概括 Marion saturation，但与 Marion 1996 p.117–118、Murga、Djian 形成解释张力，因此只作为竞争 secondary reading；
- p. 88 提醒不能假定 Marion 会如何直接解释 Merleau-Ponty，并称 Merleau-Ponty 在 *Étant donné* 中处于边缘、脚注式位置。

**判断。** Merleau-Ponty / Marion 的比较配对本身已有 prior art；本项目的增量只能是把相关／条件化／穷尽的解释差异压成显式关系并机核其逻辑后果。

### Pommier (2020) / Deketelaere (2018) / Lind (2026)

这些工作分别从 horizon-presupposition、a-priori condition、anticipation / constitution 等角度区分“与 horizon 发生关系”与“受 horizon 先行限定”。它们共同进一步确认：related horizon 与 conditioning horizon 的历史区分不是本项目的新发现。Lind 2026 也没有给出本仓 `Captured → Conditioned`、stability、decidability 或 same-horizon bridge。

### Ngoma Tassoulou (2023)

Hilaire Ngoma Tassoulou, “Le problème de l’horizon chez Husserl et Merleau-Ponty,” *Revue Internationale de la Recherche Scientifique* 1(6), 1066–1080，DOI `10.5281/zenodo.10083785`。期刊页面／摘要把 Merleau-Ponty 一侧描述为不可穷尽的 world-horizon。

**判断。** 这是 Merleau-Ponty horizon / inexhaustibility 的 secondary corroboration，与本项目已直接核查的 *Phenomenology of Perception* 开放／未完成段落方向一致；不替代 primary text，也不提供形式 bridge。

### Leung / Mason / Mackinlay / Moran / Lee / Lahaie

这些来源在 `SOURCES.md` 与 `MARION_HORIZON_GATE.md` 分层登记：它们带页码地定位 *Being Given* 209–226，支持区分 horizon 作为相关结构、condition of possibility、一个／多个 horizon 的 saturation，以及 intuition/intention/constitution。仍是 secondary evidence，不代替书本目标页直接阅读。

### Miller / Mackinlay / Steinbock 的双版本页码链

- Adam S. Miller 给出 BG 209–210 / ED 293、BG 210 / ED 293–294、BG 211 / ED 295、BG 212 / ED 296–297；
- Shane Mackinlay 给出 BG 209 / ED 292、BG 211 / ED 295、BG 225 / ED 314、BG 226 / ED 315；
- Anthony J. Steinbock 的正式出版／许可译载保留 ED 314 / BG 225、ED 315 / BG 226、ED 316 / BG 227。

**复用判断。** 项目复用这些 **SECONDARY-EXACT-CROSSWALK** 来缩小 1997/early-pagination direct-primary 搜索范围，不自己猜 translation pagination。它们没有提供 Lean theorem，也没有把 `Captured`、`NonExhaustible` 或 `Independent` 定义为 Marion saturation。

### 正式重印 provenance

Moran 的作者公开稿明确登记 *Being Given* `Sketch` pp.199–221 重印于 Moran / Embree 编 *Phenomenology: Critical Concepts* (Routledge, 2004), vol.4, pp.5–28；Fordham / De Gruyter 2013 *The Essential Writings* 也正式收录 Marion `Sketch` pp.108–134。项目直接复用这些书目劳动扩展合法 primary 路线，但不按页数猜偏移，也不把重印 provenance 冒充已读正文。

## 4. 既有形式 profile 与精确前提 theorem 的复用判断

以下结果逻辑内容都很初等，不作为原创性主张：

- `Structured` 不蕴含 `Captured`；
- `∀ aspect, ∃ horizon` 不蕴含 `∃ horizon, ∀ aspect`；
- `Independent` / `NonExhaustible` / `Horizonless` 的有限模型分离；
- related + independent + non-exhaustible / captured 的联合一致性见证；
- `ExhaustiveCaptureConditions` 下 `Independent → NonExhaustible`；
- `Captured p ∧ Independent p → ¬ ExhaustiveCaptureConditions`。

为回答“`Independent p → NonExhaustible p` 的确切前提是什么”，项目复用本仓 `nonExhaustible_iff_not_captured`，得到：

```text
(Independent p → NonExhaustible p)
↔
(Captured p → ¬ Independent p)
```

入口 `independent_implies_nonExhaustible_iff_capture_refutes_independence`。这是 Lean Core 级命题正规化，不声称原创逻辑。

### 把精确条件限制在“实际显现”量词域

首问写的是“显现”，所以进一步证明：

```text
(∀ p, appears p → Independent p → NonExhaustible p)
↔
(∀ p, appears p → Captured p → ¬ Independent p)
```

以及冲突见证正规形：不存在实际显现同时 `Captured ∧ Independent`。这些 theorem 只保护量词纪律，不增加哲学 primitive。

## 5. `ExhaustiveCaptureConditions` 的 prior-art 状态

压力测试 bridge：

```text
situated p h ∧ Exhausts p h → conditions p h
```

没有在已核查同题文本中发现这条 extensional exhaustion→conditioning 蕴含。因此它继续是 MODEL/QUESTION。`displacedCaptureConditioning` 已机核证明实际显现域的精确 `Captured → ¬ Independent` 可以成立，而 same-horizon bridge 失败；`exhaustiveCaptureConditions_implies_exact_appearing_condition` 给出正向蕴含，所以 strictness 两侧闭合。

**复用决定。** 这是本仓现有 API 的薄逻辑闭包和有限反模型，不值得引入 Mathlib、LogiKEy 或 Isabelle 重依赖，也不作原创数学／历史哲学宣称。

## 6. Marion 1996 primary text 是否要求新 API？

作者本人文本说明：一般取消 horizon 会阻止 manifestation；要摆脱的是 horizon 的 `delimiting anteriority`；saturated phenomenon 可与一个／多个／超过 horizon 等多种结构发生关系；完整 saturation 还涉及 intuition surplus 和 constitution reversal。

因此继续保持：

1. 不新增 `priorDelimits` primitive；现有 `conditions` 足以承载首问最弱接口；
2. 不新增 horizon-combination 结构；它属于完整 saturation 后续语义；
3. 不提前引入 intention/intuition API；
4. 保留 `situated / conditions / Exhausts` 三轴，以文本约束解释，而不是用新自由谓词制造 theorem count。

## 7. primary source 的当前定位

Jean-Luc Marion 1996 “The Saturated Phenomenon” 的 PDCnet 出版平台公开索引直接返回 p.117–119 作者正文；PDF 在当前环境仍为 403，所以状态是 **PRIMARY-DIRECT-INDEXED**，不冒充 page-image review。

这不取消书本版本核对门。目标仍是直接读 BG 209–212、225–226，或 ED 1997/early 292–297、314–315，或正式重印对应正文并以文本锚点互证。2013 Quadrige 有独立 pagination track，2013 p.295 继续保持 `PRIMARY-DIRECT-INDEXED-BOOK-PAGE + UNMAPPED-TO-BG-TARGET`，不能用同页号代替历史 crosswalk。

2026-09-18 再次检查合法公开路线仍没有取得目标作者书页正文；这一访问负结果不能被当作不存在文本或支持某种解释的证据。

## 8. 当前复用结论

首问继续保持轻量 Lean Core 是合理选择。当前最有价值的复用分为：

- 复用 Miller / Mackinlay / Steinbock 的 BG/ED 交叉，避免重猜页码；
- 复用 Falabretti / Djian / Murga / Pommier / Deketelaere / Lind / Ngoma Tassoulou 等限制历史新颖性并保存竞争 reading；
- 复用 Moran / Routledge 的正式重印 provenance 扩展合法 primary 路线；
- 复用本仓 `NonExhaustible ↔ ¬ Captured`、conditioning 定义和既有反模型；
- 复用 Lean Core / Mathlib 已有的双重否定稳定性基础，而不是自造通用 DNE、regular proposition 或有限存在量词 decision infrastructure。

## 9. 构造性 conditioning bridge 层级

写构造性 bridge 前，项目已检索 `Conditioned Independent Captured horizon`、固定 `novaspivack/phenomenology-lean` 与 LogiKEy 版本，并确认没有需要替换的同型 formal-philosophy API；同题文本也没有讨论 `¬¬∃ h, conditions p h` 与 `∃ h, conditions p h` 的证明论差别。

因此只新增薄的 Lean-Core 正规化：

```text
ExhaustiveCaptureConditions
⇒ appearing Captured → Conditioned
⇒ appearing Captured → ¬ Independent
↔ appearing Captured → ¬¬ Conditioned
```

`displacedCaptureConditioning` 证明 witness-producing bridge 严格弱于 same-horizon bridge。项目不为把 `¬¬ Conditioned` 直接消成 `Conditioned` 而引入 global classical DNE。

## 10. 上一轮增量：局部 decidability

上一轮新增：

```text
[Decidable (Conditioned p)]
⊢ (¬ Independent p ↔ Conditioned p)
```

以及逐点 decidability 下 exact appearing exclusion 与 witness-producing bridge 的等价。

工程查重当时已定位：

- pinned Lean `v4.24.0` 的 `Decidable.not_not`；
- Mathlib `Mathlib/Order/Heyting/Regular.lean` 的 `isRegular_of_decidable`，说明 decidable proposition 在 intuitionistic/Heyting 意义下 regular/stable；
- `novaspivack/phenomenology-lean` / LogiKEy 没有出现需移植的同型 API。

这两条 theorem 正确，但“decidability 是精确／最小额外前提”的自然语言表述仍然过强。

## 11. 本轮增量：stability 才是精确 proof-theoretic premise

### 拟新增声明与原始量词

本轮在写代码前把目标收紧为：

```text
((¬ Independent p) ↔ Conditioned p)
↔
(¬¬ Conditioned p → Conditioned p)
```

以及在逐点 stability

```text
∀ p, ¬¬ Conditioned p → Conditioned p
```

下证明 actual-appearance exact exclusion 与 witness-producing bridge 等价。

这里没有新增 relation；右侧只是 `Conditioned p` 这一既有 existential proposition 的 double-negation stability。

### 工程／证明复用检查

1. **Lean Core。** 项目固定 `leanprover/lean4:v4.24.0`；已有 `Decidable.not_not` 继续只作为“decidability 产生 stability”的实现来源，不把其当成 stability 概念本身。
2. **Mathlib4。** 当前索引 commit `a218e50f981942cba4fd060faff7cae680805062` 的 `Mathlib/Order/Heyting/Regular.lean` 已有 `isRegular_of_decidable (p : Prop) [Decidable p] : IsRegular p := propext <| Decidable.not_not`。因此 regular/stable proposition 不是本项目新逻辑概念。`Mathlib/Data/Fintype/Defs.lean` 还有 `Fintype.decidableExistsFintype`，所以也不为有限 countermodel 重造通用存在量词 decision procedure。
3. **Lean formal phenomenology。** `novaspivack/phenomenology-lean` 最新 `main` 仍为 `75230e4eab333ad0fc47573747521ccc1a31a163`；没有定位到 Marion/horizon/conditioning stability 同型 API。
4. **LogiKEy / AFP。** LogiKEy 最新 `master` 仍为 `b29954b0876d7991baf12f17378f31700f9de759`。其 semantic embedding / computational metaphysics 方法仍是 prior art，但本轮 theorem 不需要移植其逻辑层。

**复用决定。** 不定义新的 `Stable` API，不引入 Mathlib；直接把所需性质作为 theorem 前提 `¬¬ Conditioned p → Conditioned p` 参数化，并复用本仓 `not_independent_iff_not_not_conditioned`。这只是应用级薄适配，不声称原创逻辑。

### 同题解释检查

本轮英／法／西语组合检索再次定位 Murga 2024、Lind 2026 等已登记工作，并新增 Ngoma Tassoulou 2023 作为 Merleau-Ponty horizon / inexhaustibility 的 secondary corroboration。没有检索到把 proof-theoretic stability / decidability 归给 Marion、Merleau-Ponty horizon 概念的同题文献。

**差异判断。** 历史文献约束的是 horizon 是否相关、是否先行限定、是否可穷尽／saturate 等解释轴；本轮 stability theorem 只回答“何时双重否定存在可以变成 existential witness”的形式问题。因此不产生新的历史归属。

### direct-primary 门

同一轮再次检索 BG pp.209–212、225–226、early ED pp.292–297、314–315 及 2013/reprint 合法入口；仍未取得目标作者书页正文。受限 preview 没有绕过。

**最终复用判断。** 本轮 formal increment 应登记为：Mathlib/constructive logic 已有 regular/stable prior art之上的本仓薄适配；历史增量只有 secondary corroboration，不足以关闭 book-page direct-primary gate。完整逐声明审计见 [DECIDABLE_CONDITIONING_BRIDGE.md](DECIDABLE_CONDITIONING_BRIDGE.md)。
