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
- 本轮重新核对 `main`：仍为 commit `75230e4eab333ad0fc47573747521ccc1a31a163`（2026-05-20）。
- 仓库自述 Lean 4.29.1 / Mathlib 4.29.1，并依赖 `sentience-lean`、`nems-lean`、`reflexive-closure-lean`；范围包括 qualia、manifestation、ownership、selector-access、countermodels 和 meta-theory。
- 已实读 `StructuredManifestation.lean`、`ManifestationNonReducibility.lean`、`Meta/Minimality.lean`、`MANIFEST.md`。
- 针对当前首问搜索 `horizon`、`intuition`、`Merleau`、`Marion`、`saturated` 均未定位到同型 API。

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

### Leung / Mason / Mackinlay / Moran / Lee / Lahaie

这些来源的角色已经在 `SOURCES.md` 与 `MARION_HORIZON_GATE.md` 分层登记：它们带页码地定位 *Being Given* 209–226，支持区分 horizon 作为相关结构、作为 condition of possibility、一个／多个 horizon 的 saturation，以及 intuition/intention/constitution。它们仍是 secondary evidence，不代替书本目标页直接阅读。

## 4. 既有形式 profile 的复用判断

当前项目中的以下结果逻辑内容都很初等，不作为原创性主张：

- `Structured` 不蕴含 `Captured`；
- `∀ aspect, ∃ horizon` 不蕴含 `∃ horizon, ∀ aspect`；
- `Independent` / `NonExhaustible` / `Horizonless` 的有限模型分离；
- related + independent + non-exhaustible 的联合一致性见证；
- `ExhaustiveCaptureConditions` 下 `Independent → NonExhaustible`；
- `Captured p ∧ Independent p → ¬ ExhaustiveCaptureConditions` 的点态桥接反证。

本轮针对最后一条新 theorem 的外部代码检索没有找到同型 formal-philosophy 声明；全局 `HorizonIndependent` / `NonExhaustible` 检索只命中本仓。该 theorem 只是对本项目已显式 bridge 的逻辑闭包，因此不为它引入 Mathlib、LogiKEy 或另一个 phenomenology 仓库。

## 5. `ExhaustiveCaptureConditions` 的 prior-art 状态

压力测试 bridge：

```text
situated p h ∧ Exhausts p h → conditions p h
```

同题文本支持 related / conditioning 的区分，却没有给出这条 extensional exhaustion→conditioning 蕴含。因此它继续是本项目内 MODEL/QUESTION，不归给 Marion 或 Merleau-Ponty。

现有 `closedIndependentConditioning` 已显示没有 bridge 时可以同时 `Independent` 与 `Captured`，并证明该模型违反 bridge。新增 `captured_independent_refutes_exhaustiveCaptureConditions` 则把这一事实提升为任意模型、任意具体 witness 的一般定理：只要 `Captured p` 与 `Independent p` 同时成立，bridge 就失败。

## 6. Marion 1996 primary text 是否要求新 API？

已核验的作者本人文本说明：一般取消 horizon 会阻止 manifestation；要摆脱的是 horizon 的 `delimiting anteriority`；saturated phenomenon 可在一个 horizon 中 saturation、增殖多个 horizons、超过 horizon，乃至极端地不被任何 horizon 组合承受；完整 saturation 还涉及 intuition surplus 和 constitution reversal。

在新增 `priorDelimits`、`anticipates`、horizon-combination 或 intention/intuition API 之前已完成外部检查。当前决定保持不变：

1. **不新增 `priorDelimits` primitive。** 现有 `conditions` 已足以承载首问所需的最弱“先行条件”接口。
2. **不新增 horizon-combination 结构。** 它属于完整 saturation 的后续语义，不改变首问 `UniversalStructure ↛ ClosureBridge`。
3. **不提前引入 intention/intuition API。** 它们对完整理论重要，但不是首问否定蕴含所必需。
4. **保留三轴** `situated / conditions / Exhausts`，以文本约束解释，而非靠新增 theorem count 制造进展。

## 7. primary source 的当前定位

Jean-Luc Marion, “The Saturated Phenomenon,” *Philosophy Today* 40(1), 1996, pp. 103–124, DOI `10.5840/philtoday199640137`。PDCnet 出版平台的公开搜索索引直接返回作者正文与原刊页码，包括 p. 117–119。直接打开 PDF URL 时当前环境收到 HTTP 403，无法取得 page screenshot，因此证据状态标记为 **PRIMARY-DIRECT-INDEXED**，不写成“PDF 已逐页核查”。

这项发现实质改变下一步：已有作者本人文本确认 horizon 不能简单取消、核心在先行限定、且 horizon-independence 与多种 horizon 关系并存。故不再需要猜测这些区分是否只是二手研究强加给 Marion。

但这**不取消 *Being Given* 版本核对门**：2002 pp. 209–212、225–226 仍须合法直接查看，或者用法文 *Étant donné* 对应原文可靠逐段对照，以确认 1996 论证在书本版本中的重写与次序。

## 8. 当前复用结论

首问继续保持轻量 Lean Core 是合理选择。现阶段没有外部形式化提供可直接替换本项目 horizon 首问的同型实现；formal philosophy 的方法与 Marion horizon 的解释 prior art 已明确存在，并新增 Djian 2018 这一条直接研究 *Étant donné* horizon 角色的文献基线。

本轮最有价值的复用是两层：用 Djian / Murga 等既有解释限制“历史新颖性”表述；用 Marion 1996 primary text 限制模型。新的点态 bridge-refutation theorem 只补全当前形式接口，不声称哲学原创性。
