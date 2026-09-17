# 外部工作与复用审计

核查日期：2026-09-17。本文记录与首个研究问题直接或方法上相邻的外部工作，避免把已有逻辑基础设施、形式哲学方法或既有解释重新包装成新发现。

## 审计规则

在新增非平凡定义、lemma、模型族或哲学归属前，必须分别检查：

1. **证明基础设施**：Lean/Core、必要时 mathlib，以及相关 Lean / Isabelle/HOL / AFP 工作；
2. **方法先例**：计算形而上学、计算诠释学、语义嵌入、论证重构和反模型方法；
3. **同题解释文献**：Merleau-Ponty / Marion / Husserl 的 horizon、horizontality、saturation、givenness、condition of possibility、intentionality 等。

“没有同名定理/仓库”、更换证明助手、定理数增加或达到 0 `sorry` 都不构成原创性证据。若谓词被人为定义为互不受约束，则分离定理首先只说明**建模自由度**，不是历史概念独立性的证据。

## 1. Lean formal phenomenology prior art

### novaspivack/phenomenology-lean

- 仓库：<https://github.com/novaspivack/phenomenology-lean>
- 本轮重新核对 `main`，仍停在 commit `75230e4eab333ad0fc47573747521ccc1a31a163`（2026-05-20），与此前固定版本一致。
- 仓库自述 Lean 4.29.1 / Mathlib 4.29.1，并依赖 `sentience-lean`、`nems-lean`、`reflexive-closure-lean`；范围包括 qualia、manifestation、ownership、selector-access、countermodels 和 meta-theory。
- 已实读 `StructuredManifestation.lean`、`ManifestationNonReducibility.lean`、`Meta/Minimality.lean`、`MANIFEST.md`。
- 针对当前首问继续搜索 `horizon`、`intuition`、`Merleau`、`Marion`、`saturated`，以及本轮新 theorem 所用的 `independent / nonexhaustible / captured / appearing` 组合，仍未定位到同型 API。

**判断。** 这是直接的 Lean formal phenomenology 先例，所以本项目不声称“首次用 Lean 形式化现象学”。但没有定位到与 Merleau-Ponty / Marion horizon、conditioning、exhaustibility 同型的现成 API。其工具链和依赖显著重于本项目目前只需的 Lean Core 关系逻辑，因此不引入依赖；如未来进入 manifestation/ownership/access 才逐声明复用审计。

外部仓库的 zero-sorry / build 状态本项目本轮没有重新本地构建，仍只按其自述记录；不能冒充本轮实测。

## 2. Isabelle/HOL / AFP 与方法 prior art

### LogiKEy

仓库 <https://github.com/cbenzmueller/LogiKEy>；已固定并核查 `master` commit `b29954b0876d7991baf12f17378f31700f9de759`（2026-09-13）。它以 shallow/deep semantic embedding 复用 Isabelle/HOL、自动证明器与反模型器，覆盖规范逻辑、法律／伦理推理、计算形而上学及多种模态/非经典逻辑。

### Abstract Object Theory（AFP, Daniel Kirchner, 2022）

Isabelle/HOL 已有 AOT 模型、语义与 possible worlds 等大规模计算形而上学案例。“哲学体系的机助形式化”不是本项目发明。

### Computational Hermeneutics（Fuenmayor / Benzmüller 等）

自然语言哲学论证的解释、意义公设、竞争重构与形式验证迭代已有明确方法先例。本项目的可辨识增量只能落在具体文本映射和具体 horizon 命题，不是“解释 → 形式化 → 反模型”这条工作流本身。

## 3. 同题解释 prior art

### Murga (2024)

Ezequiel Daniel Murga, “La posibilidad de una horizonticidad no metafísica en Jean-Luc Marion,” *Logos. Anales del Seminario de Metafísica* 57(2), 309–325, DOI `10.5209/asem.94542`。

论文直接讨论：Marion 批判 horizon 的形而上学式先行限定使用，而非简单删除 horizon 本身，并提出 non-metaphysical horizontality 的可能。因此本项目 `situated` / `conditions` 分层是**对已有解释空间的形式接口**，不能声称为新的历史解释发现。

### Djian (2018)

Aurélien Djian, “L’horizon et le destin de la phénoménologie,” *Philosophiques* 45(2), 343–364, DOI `10.7202/1055267ar`。Érudit 的开放索引／全文检索已直接返回论文正文片段及页码。Djian 在讨论 *Étant donné* §21–22 时明确把 horizon 分析为 phenomenality 的 condition of possibility 和对 intuition 的限制，并引用 ED pp. 304–305 来说明 horizon 与 I 作为两项 possibility-conditions；随后把 Marion 对 horizon 的问题定位为这种预先限定作用。

**复用判断。** 这比只引用 Murga 更直接地覆盖了本项目 `conditions` 所要压缩的解释轴，所以“related horizon 与 conditioning horizon 必须区分”绝不能作为新的历史发现。本项目的增量只能是：把这条既有解释差异压成一个显式 Lean relation，并检查它与 extensional `Exhausts` 的逻辑关系。Djian 没有给出 `situated ∧ Exhausts → conditions` 这种集合式 bridge，因此 `ExhaustiveCaptureConditions` 仍是本项目压力测试，不是文献复用结果。

### Falabretti (2015/2016)：直接 Merleau-Ponty / Marion 比较

Ericson Falabretti, “Merleau-Ponty e Marion: o problema da ambiguidade entre uma fenomenologia da percepção e uma fenomenologia da doação,” *Revista de Filosofia Moderna e Contemporânea* 3(2), 87–102，DOI `10.26512/rfmc.v3i2.12514`。期刊官方页面与官方 PDF 均已直接读取；PDF page-image 截图请求在当前研究环境超时，所以证据状态记为 **SECONDARY-DIRECT-PDF-TEXT / PAGE-IMAGE-NOT-REVIEWED**。详细审计见 [FALABRETTI_COMPARISON.md](FALABRETTI_COMPARISON.md)。

这项工作直接比较 *Phenomenology of Perception* 与 *Étant donné*，因此对本项目的新颖性边界比一般 Marion 二手研究更直接：

- 期刊 p. 90 将 Merleau-Ponty 的知觉写成持续开放的时空 horizon field，并明确说知觉不会穷尽被知觉者或知觉行为本身。这已经覆盖“开放视域／不穷尽”的历史比较动机；本项目不能把这一比较配对本身包装成新发现。
- 期刊 p. 98 又把 saturated phenomenon 二手概括成“没有 horizon，而是 overflowing presence”。这与 Marion 1996 p. 117–118 的已核验作者文本以及 Murga / Djian 的解释空间存在张力，所以必须登记为**竞争 secondary reading**，不能直接升级 `Horizonless` 为默认 Marion 编码。
- 期刊 p. 88 明确说作者不能假定 Marion 会如何直接解释 Merleau-Ponty，并称 Merleau-Ponty 在 *Étant donné* 中只处于边缘位置、明确引用仅三次且都在脚注；论文还说 *Étant donné* 并不直接回答其比较问题。这为仓库已有“Marion 是否直接批评 Merleau-Ponty”未决项提供了具体 caution。

**复用判断。** 比较研究本身已有 prior art；本项目的可交付增量只能是把相关／条件化／穷尽的不同解释压成显式接口，再以 Lean 检查其逻辑蕴含、反模型和 bridge。Falabretti 的 `no horizon` 表述不直接复用为定义；它正好说明 secondary literature 内部也需要竞争解释登记。

### Leung / Mason / Mackinlay / Moran / Lee / Lahaie

这些来源的角色已经在 `SOURCES.md` 与 `MARION_HORIZON_GATE.md` 分层登记：它们带页码地定位 *Being Given* 209–226，支持区分 horizon 作为相关结构、作为 condition of possibility、一个／多个 horizon 的 saturation，以及 intuition/intention/constitution。它们仍是 secondary evidence，不代替书本目标页直接阅读。

### Miller / Mackinlay / Steinbock 的双版本页码链

没有找到需要复用的新 formal API，但找到了对版本核对直接有用的解释 prior art：

- Adam S. Miller, *Badiou, Marion and St Paul: Immanent Grace*（Continuum, 2008）。Bloomsbury 官方页面确认书目与 “Givenness and Saturation” 专章；可检索文本给出 BG/ED 双版本页码：BG 209–210 / ED 293、BG 210 / ED 293–294、BG 211 / ED 295、BG 212 / ED 296–297。
- Shane Mackinlay 的 *Interpreting Excess* 独立提供 BG 209 / ED 292、BG 211 / ED 295、BG 225 / ED 314、BG 226 / ED 315 等锚点。
- Anthony J. Steinbock, “The Poor Phenomenon: Marion and the Problem of Givenness,” Fordham UP 2010。De Gruyter/Fordham 元数据确认正式出版；Ostium 的公开译载说明译自英文原文并经作者许可，保留 ED/BG 双版本脚注，包括 ED 314 / BG 225、ED 315 / BG 226、ED 316 / BG 227。

**复用判断。** 这些工作已经替我们完成了一部分“英译页 ↔ 法文页”的书目劳动，所以不应再次凭猜测重建 pagination。项目直接复用这些**双版本引注作为 SECONDARY-EXACT-CROSSWALK**，把合法 primary direct-reading 的法文目标范围收窄到 ED 292–297 与 ED 314–315。它们没有提供 Lean theorem，也没有把 `Captured`、`NonExhaustible` 或 `Independent` 定义成 Marion saturation，因此不触发代码复用。

这次交叉还纠正一个重要边界：Djian 的 ED 304–305 是稍后的 horizon/I possibility-condition 段落，**不是** BG 211–212 的法文 counterpart。Fanny Lederlin 2023 的 Université Paris Cité官方博士论文短引 ED p. 305，进一步确认这一页的 intentional-horizon 主题，但不能改变其版本位置。

### 正式重印 provenance：不重新猜 pagination

本轮把“合法 direct-primary 获取路径”也纳入 prior-art / provenance 审计，详见 [MARION_REPRINT_PROVENANCE.md](MARION_REPRINT_PROVENANCE.md)：

- Fordham / De Gruyter 2013 *The Essential Writings* 正式收录 Marion `Sketch of the Saturated Phenomenon` pp. 108–134，但当前正文受限；
- Dermot Moran 的作者公开稿明确登记 *Being Given* `Sketch` pp. 199–221 **重印于** Moran / Embree 编 *Phenomenology: Critical Concepts* (Routledge, 2004), vol. 4, pp. 5–28；Routledge 官方产品页与 Google Books/Taylor & Francis 元数据独立确认承载重印的出版物。

**复用判断。** 这不是理论 prior art，而是版本／来源劳动的可复用成果。项目直接复用“整体重印范围”来扩展合法访问路线，不自己按页数猜页面偏移，也不把 secondary reprint provenance 冒充为已直接阅读 Marion 目标页。

## 4. 既有形式 profile 与精确前提 theorem 的复用判断

当前项目中的以下结果逻辑内容都很初等，不作为原创性主张：

- `Structured` 不蕴含 `Captured`；
- `∀ aspect, ∃ horizon` 不蕴含 `∃ horizon, ∀ aspect`；
- `Independent` / `NonExhaustible` / `Horizonless` 的有限模型分离；
- related + independent + non-exhaustible 的联合一致性见证；
- `ExhaustiveCaptureConditions` 下 `Independent → NonExhaustible`；
- `Captured p ∧ Independent p → ¬ ExhaustiveCaptureConditions` 的点态桥接反证。

此前为精确回答“`Independent p → NonExhaustible p` 的确切前提是什么”，在写代码前做了增量查重：

- 复用本仓已证明的 `nonExhaustible_iff_not_captured`，不再造新的 exhaustion 语义；
- 针对 `Independent` / `NonExhaustible` / `Captured` 的 GitHub 全局代码搜索没有定位到外部 formal-philosophy 同型声明；命中主要是本仓和无关词典数据；
- `novaspivack/phenomenology-lean` 的固定版本没有 horizon / Marion / saturation 同型 API；LogiKEy / AFP 属于方法和逻辑基础 prior art，不值得为这一命题引入重依赖。

因此只新增过一条 **Lean Core 级正规化 theorem**：

```text
(Independent p → NonExhaustible p)
↔
(Captured p → ¬ Independent p)
```

入口 `independent_implies_nonExhaustible_iff_capture_refutes_independence`。这只是由 `NonExhaustible p ↔ ¬ Captured p` 得出的命题逻辑闭包，不作为原创数学或原创哲学结果。它的价值是把“需要 bridge”改写成精确的点态条件：排除同一 p 上 `Captured ∧ Independent`。

### 把精确条件限制在“实际显现”量词域

首问写的是“显现”，而不是 `Phenomenon` 类型的任意居民。因此进一步把同一正规化提升为：

```text
(∀ p, appears p → Independent p → NonExhaustible p)
↔
(∀ p, appears p → Captured p → ¬ Independent p)
```

在动代码前完成了增量外部检查：

- `novaspivack/phenomenology-lean` `main` 仍是 `75230e4eab333ad0fc47573747521ccc1a31a163`，没有出现 horizon / Marion / exhaustion 同型 API；
- GitHub 全局搜索 `Independent NonExhaustible Captured appearing` 未找到外部 formal-philosophy 同型声明；有效命中是本仓，其他结果主要是无关词典／word-list 数据；
- 该命题只使用 Lean Core 命题逻辑与本仓 `nonExhaustible_iff_not_captured`，因此没有理由引入 Mathlib、LogiKEy 或其他依赖。

**复用决定。** theorem `appearing_independence_implies_nonExhaustible_iff_capture_refutes_independence` 只做已有点态正规化的量词提升，并在两边显式保留 `appears p`。它的价值是防止无意把首问加强成“对所有类型居民”的命题；仍不作为原创数学／哲学结论。

## 5. `ExhaustiveCaptureConditions` 的 prior-art 状态

压力测试 bridge：

```text
situated p h ∧ Exhausts p h → conditions p h
```

同题文本支持 related / conditioning 的区分，却没有给出这条 extensional exhaustion→conditioning 蕴含。因此它继续是本项目内 MODEL/QUESTION，不归给 Marion 或 Merleau-Ponty。

点态与显现域的等价 theorem 都说明其逻辑地位应收紧：`ExhaustiveCaptureConditions` 是使 capture 与 independence 冲突的一种**结构化充分机制**，但它比“在相关量词域排除 `Captured ∧ Independent`”更强，不称作逻辑上的确切最弱 bridge。

现有 `closedIndependentConditioning` 已显示没有 bridge 时可以同时 `Independent` 与 `Captured`，并证明该模型违反 bridge。`captured_independent_refutes_exhaustiveCaptureConditions` 则把这一事实提升为任意模型、任意具体 witness 的一般定理：只要 `Captured p` 与 `Independent p` 同时成立，bridge 就失败。

### 已完成：形式证明“较强”确实是严格较强

在新增模型前重新做了窄查重：GitHub 全局精确搜索 `ExhaustiveCaptureConditions` 只命中本仓；更宽的 `Captured Independent horizon` 搜索只有大量无关工程文本，没有定位到 external formal-philosophy 同型声明。固定的 `novaspivack/phenomenology-lean` 也没有 Marion/horizon/capture-conditioning 的可复用 API。因此这里只构造最小有限反模型，不引入 Mathlib、LogiKEy 或其他重依赖，也不作原创数学主张。

模型 `displacedCaptureConditioning` 有一个显现、两个均 related 的 horizon 和一个 aspect：`false` horizon 穷尽该 aspect，`true` horizon 则承担 conditioning。于是所有实际显现都满足 `Captured → ¬ Independent`，且 `ConditioningIsSituated` 成立；但 `ExhaustiveCaptureConditions` 失败，因为 exhaustive 的 `false` horizon 本身没有 conditioning。Lean theorem `exact_appearing_condition_is_strictly_weaker_than_exhaustiveCaptureConditions` 因而给出一个具体模型，证明精确显现域条件并不推出强 bridge。

### 本轮新增：补全严格层级的正向 theorem

在新增 `exhaustiveCaptureConditions_implies_exact_appearing_condition` 前再次执行本轮对象的增量查重：

- GitHub 全局精确搜索 `ExhaustiveCaptureConditions` 仍只命中本仓；
- 更宽的 `Captured Independent NonExhaustible horizon conditioning` 没有定位到外部 formal-philosophy 同型声明；
- `novaspivack/phenomenology-lean` 本轮重新核对仍在 commit `75230e4eab333ad0fc47573747521ccc1a31a163`；仓库内搜索 `horizon Marion saturated exhaustive conditioning` 无结果；
- 该目标可直接复用本仓 `exhaustiveCaptureConditions_independent_implies_nonExhaustible` 与 `nonExhaustible_iff_not_captured`，因此不需要 Mathlib、LogiKEy 或新语义层。

新增 theorem 明确给出：

```text
ExhaustiveCaptureConditions M
→ ∀ p, appears p → Captured p → ¬ Independent p
```

与 `displacedCaptureConditioning` 的 converse countermodel 合并后，强 bridge 与显现域精确条件的严格层级才两侧闭合。

**复用决定。** 这是对既有本仓 API 的薄 Lean-Core 逻辑闭包，不是新的数学原理，也没有新的历史解释内容。现有解释文献仍只约束 horizon 的 related / conditioning / saturation 语义边界，并不提供 `situated ∧ Exhausts → conditions`。详见 [STRICT_BRIDGE_HIERARCHY.md](STRICT_BRIDGE_HIERARCHY.md)。

## 6. Marion 1996 primary text 是否要求新 API？

已核验的作者本人文本说明：一般取消 horizon 会阻止 manifestation；要摆脱的是 horizon 的 `delimiting anteriority`；saturated phenomenon 可在一个 horizon 中 saturation、增殖多个 horizons、超过 horizon，乃至极端地不被任何 horizon 组合承受；完整 saturation 还涉及 intuition surplus 和 constitution reversal。

在新增 `priorDelimits`、`anticipates`、horizon-combination 或 intention/intuition API 之前已完成外部检查。当前决定保持不变：

1. **不新增 `priorDelimits` primitive。** 现有 `conditions` 已足以承载首问所需的最弱“先行条件”接口。
2. **不新增 horizon-combination 结构。** 它属于完整 saturation 的后续语义，不改变首问 `UniversalStructure ↛ ClosureBridge`。
3. **不提前引入 intention/intuition API。** 它们对完整理论重要，但不是首问否定蕴含所必需。
4. **保留三轴** `situated / conditions / Exhausts`，以文本约束解释，而非靠新增 theorem count 制造进展。

直接比较 prior art 进一步加强这一决定：Falabretti 的 horizonless 二手表述与 Marion 1996 / Murga / Djian 的文本空间并不简单同义，新增自由谓词只会把解释分歧伪装成模型自由度。应继续优先核查目标 primary pages。

## 7. primary source 的当前定位

Jean-Luc Marion, “The Saturated Phenomenon,” *Philosophy Today* 40(1), 1996, pp. 103–124, DOI `10.5840/philtoday199640137`。PDCnet 出版平台的公开搜索索引直接返回作者正文与原刊页码，包括 p. 117–119。直接打开 PDF URL 时当前环境收到 HTTP 403，无法取得 page screenshot，因此证据状态标记为 **PRIMARY-DIRECT-INDEXED**，不写成“PDF 已逐页核查”。

这项发现实质改变下一步：已有作者本人文本确认 horizon 不能简单取消、核心在先行限定、且 horizon-independence 与多种 horizon 关系并存。故不再需要猜测这些区分是否只是二手研究强加给 Marion。

但这**不取消书本版本核对门**。借助现有 crosswalk 与本轮重印 provenance，门槛可精确成：直接读 BG 209–212、225–226，或法文 ED 292–297、314–315，或在已确认正式重印中找到对应正文并用文本锚点互证；二手引注与书目关系只负责定位，不能替代 primary direct reading。

本轮再次检查 Stanford / De Gruyter Brill、Google Books 的 *Being Given* 以及 Routledge 2004 正式重印入口；仍只有元数据或选择性预览，没有合法暴露目标正文。这一访问负结果已同步 [MARION_REPRINT_PROVENANCE.md](MARION_REPRINT_PROVENANCE.md)，不能被当作不存在文本或支持某种解释的证据。

## 8. 当前复用结论

首问继续保持轻量 Lean Core 是合理选择。现阶段没有外部形式化提供可直接替换本项目 horizon 首问的同型实现；formal philosophy 的方法、Marion horizon 的解释 prior art、以及 Merleau-Ponty / Marion 的直接比较研究都已明确存在。

当前最有价值的复用分成四类：一是采用 Miller / Mackinlay / Steinbock 的 BG/ED 双版本引注，避免重新猜测翻译页码；二是采用 Falabretti / Djian / Murga 等既有比较与解释工作限制历史新颖性表述并保存竞争读法；三是采用 Moran / Routledge 的明确重印 provenance 扩展合法 direct-primary 获取路径；四是直接复用本仓 `NonExhaustible ↔ ¬Captured` 及已有 bridge consequences，用无新 primitive 的正规化／层级 theorem 给出 `Independent → NonExhaustible` 的点态、实际显现域确切条件，以及 `ExhaustiveCaptureConditions` 对该精确条件的严格加强。除此之外继续等待 direct-primary 版本核对，不扩张完整 saturation API。

## 9. 本轮增量：构造性 conditioning bridge 层级

本轮拟新增对象是“精确显现域排斥”与“产生 conditioning witness”之间的证明论差别。正式写 Lean 前已完成以下增量查重：

- GitHub 全局代码检索 `Conditioned Independent Captured horizon`；返回结果均为这些普通英文词在无关工程中的命中，没有定位到 external formal-philosophy 同型实现。
- `novaspivack/phenomenology-lean` 再次固定 `main = 75230e4eab333ad0fc47573747521ccc1a31a163`（2026-05-20），并针对 `horizon` 做仓库检索，无结果；未发现 Marion / horizon / capture-conditioning API 可复用。
- LogiKEy 再次固定 `master = b29954b0876d7991baf12f17378f31700f9de759`（2026-09-13）。其 semantic embedding / computational metaphysics 方法继续属于先例，但为本轮初等 Lean-Core 正规化引入整套 Isabelle 基础设施不合理。
- 同题文本层继续复用 Leung 对 *Being Given* pp. 211–212、225–226 的精确二手导航；它支持 conditioning 语汇的重要性，但没有讨论 `¬¬∃ h, conditions p h` 与 `∃ h, conditions p h` 的构造性差别。出版社／正式重印入口本轮仍未合法开放目标原书页，因此没有把 secondary exact quotation 升格为 direct-primary。

本轮没有重新本地构建上述外部仓库；外部项目的构建状态不冒充本轮实测。

**复用决定。** 直接复用本仓 `horizonIndependent_iff_not_conditioned`、`Captured` / `Conditioned` 定义和既有 `displacedCaptureConditioning`；只做薄的 Lean-Core 证明论正规化，不增加 philosophical primitive，不引入 Mathlib / LogiKEy。新增结论不声称直觉主义双重否定逻辑、related/conditioning 区分或 formal-hermeneutic 工作流的原创性。

构造性层级现记录为：

```text
ExhaustiveCaptureConditions
⇒ appearing Captured → Conditioned
⇒ appearing Captured → ¬ Independent
↔ appearing Captured → ¬¬ Conditioned
```

其中 `ExhaustiveCaptureConditions` 到 witness-producing `Captured → Conditioned` 的加强是严格的：现有 `displacedCaptureConditioning` 让 exhaustive horizon 与 conditioning horizon 分担角色，所以 witness-producing bridge 与 `ConditioningIsSituated` 成立，而同-horizon 强 bridge 失败。项目**不**为了把 `¬¬ Conditioned` 直接消成 `Conditioned` 而引入 classical double-negation elimination；当前审计仍要求所有列入 `Audit.lean` 的 theorem 无公理依赖。

这一区分只收紧 FORMAL 解释：首问目前的逻辑“确切条件”是排除 `Captured ∧ Independent`，也就是构造性地得到 `Captured → ¬¬ Conditioned`；若解释者要求 capture 实际给出某个 conditioning horizon，则那是更强的 witness-producing bridge，需要独立文本依据。Marion 或 Merleau-Ponty 均未因这条证明论正规化被赋予新前提。完整说明见 [CONSTRUCTIVE_BRIDGE_HIERARCHY.md](CONSTRUCTIVE_BRIDGE_HIERARCHY.md)。
