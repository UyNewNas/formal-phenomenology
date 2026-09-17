# 研究路线与验收条件

## M0 — 可复现的逻辑原型

已完成：结构／穷尽分离、A/B/C 删除最小冲突、量词次序有限反模型、开放视域与理想视域差别、related/conditioning/exhaustion 三轴分层，以及可复现 CI。后续内容必须在自己的提交上重新构建和审计，不能借用旧验证状态。

## M1 — 原典映射（最高优先级）

围绕 Merleau-Ponty 与 Marion 建立版本、页码、访问状态、候选解释、竞争解释与形式化损失的可追溯记录。Merleau-Ponty / *Being Given* 工作卡见 [PASSAGE_CARDS.md](PASSAGE_CARDS.md)，*Being Given* 二手精确引文门见 [MARION_HORIZON_GATE.md](MARION_HORIZON_GATE.md)，Marion 1996 作者本人文本见 [MARION_1996_PRIMARY.md](MARION_1996_PRIMARY.md)。

### 已完成的文本层推进

- Merleau-Ponty, *Phenomenology of Perception*, Colin Smith trans., Routledge Classics 2002 已固定，并直接查看 pp. 78–82、384–386。文本支持 horizon 结构，但强调开放、未完成、透视不穷尽，因此 B / `ClosureBridge` 不应归给 Merleau-Ponty。
- Marion, *Being Given*, Kosky trans., Stanford UP 2002 已固定；出版社元数据确认 §21 pp. 199–212、§23 起于 p. 221。pp. 209–212、225–226 仍没有在当前环境直接逐页读取。
- Leung、Mason、Mackinlay、Moran、Lee、Lahaie 等研究已对这些页形成带页码交叉；Murga (2024) 已被直接查看，明确提出 non-metaphysical horizontality 的竞争解释。
- Marion, “The Saturated Phenomenon,” *Philosophy Today* 40(1), 1996, pp. 103–124 的 PDCnet 出版者索引在本项目中直接返回作者正文和原刊页码。p. 117 明确说不是一般取消 horizon，而是摆脱其 `delimiting anteriority`；p. 118 列出一个／多个／超过 horizon 等关系并称 saturated phenomenon 不依赖 horizon 这一 condition of possibility；p. 119 把完整 saturation 连到 intuitive excess 与 constitution reversal。直接 PDF 在当前环境返回 403，因此该证据标为 `PRIMARY-DIRECT-INDEXED`，不是 PDF page-image review。
- Marion 2007 *Filozofia* 官方页面／摘要也已直接查看，继续支持 horizon-as-condition、intuition surplus 与 subject reversal，但全文 PDF 尚未成功读取。
- **新增同题 prior art**：Aurélien Djian (2018), “L’horizon et le destin de la phénoménologie” 的 Érudit 开放索引／全文检索直接返回期刊正文片段。其对 *Étant donné* §21–22 的讨论引用 ED pp. 304–305，把 horizon 与 I 分析为限制 donation 的 possibility-conditions。它进一步固定 `conditions` 轴属于已有解释问题，而非本项目的新历史发现；但它没有给出 `situated ∧ Exhausts → conditions` 这种 extensional bridge。
- Google Books 1997 PUF *Étant donné* 书目页确认 ISBN 2130486770 / 9782130486770、452 页，并显示 `horizon`、`intuition`、`intentionnalité`、`manifestation`、`phénomène saturé` 等书内索引词；当前仍不开放目标页正文，因此只作 PRIMARY-METADATA/INDEX，不计 direct-page evidence。

### 已完成的形式层推进

- `horizon_structure_does_not_entail_closure` 已直接证明 `UniversalStructure ↛ ClosureBridge`；有限 `splitModel` 为反模型。
- `HasSituatedExcess` 排除 horizonless vacuity。
- `HorizonConditioning` 把 `situated`、`conditions`、`Exhausts` 分开；`Independent` / `NonExhaustible` / `Horizonless` 已由反模型证明不能词面互换。
- `HasSituatedIndependentExcess` 只作为中性兼容性 profile，不命名为 `Saturated`。
- `ExhaustiveCaptureConditions` 隔离了 `Independent → NonExhaustible` 所需的一种额外 bridge；已有反模型证明它不是定义展开。Marion 1996 primary text 并未把这条 extensional bridge 升级为历史归属。
- `captured_independent_refutes_exhaustiveCaptureConditions` 补上该 bridge 的点态冲突判据：若同一个 p 同时 `Captured` 且 `Independent`，则 bridge 必然失败。它只闭合当前模型中的逻辑，不把 `Captured` 解释成 Marion 的 “saturates a horizon”。

### 当前范围决定

Marion 1996 primary text 已经直接证明：完整 saturation 的 horizon 关系比“无视域”或“逐一不可穷尽”更复杂。根据 prior-art gate，当前**不新增** `priorDelimits`、horizon-combination、intention/intuition primitive：

- 现有 `conditions` 已足以承载首问所需的最弱先行条件接口；
- horizon combination 属于完整 saturation 的进一步语义，不影响 `UniversalStructure ↛ ClosureBridge`；
- intention/intuition/constitution 对完整 Marion 理论重要，但不是否定首问纯逻辑蕴含所必需。

### 当前 M1 判定

- A / `UniversalStructure`：Merleau-Ponty 有直接证据支持，但形式化是弱压缩。
- B / `ClosureBridge`：不对应已核查 Merleau-Ponty 文本；其方向反而被开放／未完成文本抵制。
- C / `NonExhaustible`：只能是 excess 的弱模型影子，不能定义 Marion saturation。
- `Independent`：作为“不受 horizon 的先行限定／条件化”的弱接口，现在有 Marion 1996 primary-text 动机，并有 Djian 2018 等 *Étant donné* 解释 prior art；仍不等于完整 saturation。
- `Horizonless`：Marion 1996 p. 117 直接使其不适合作为默认 saturation 编码。
- `ExhaustiveCaptureConditions`：继续为 MODEL/QUESTION；没有原典或同题研究把 `situated ∧ Exhausts → conditions` 规定成定理。

### 尚未通过的停止门

首个研究问题**尚未完成**，但剩余门已经从“Marion 是否真的区分这些 horizon 角色”缩小为版本核对：

1. 合法直接查看 *Being Given* pp. 209–212、225–226，或取得可可靠逐段对应的法文 *Étant donné* 原文；核对 1996 论文中的 horizon / conditioning / manifestation / constitution 论证在书本版本中的重写与顺序。
2. 据此最终冻结 `Independent` 的弱历史归属，并确认 `NonExhaustible` 只是一条独立模型轴，不把它或 `Captured` 偷换成完整 saturation。
3. 若目标书页显示首问本身必须显式引入 intention/intuition 才能忠实陈述，则只增加最小必要接口；否则不为扩大项目进入完整 M3。
4. 最终解释冻结后重新执行 `lake build`、`python3 scripts/check.py`、根导入覆盖与全部 `#print axioms` 审计，并核查对应 master CI。

只有文本门和证明门同时通过，才允许标记首个问题完成并停止自动推进。

## M2 — 具身与时态索引

仅在 M1 的直接文本证据证明首问需要它们时，引入主体、身体状态、时间及实际可达视域变化。M2 不是首个问题的默认完成条件。

## M3 — 完整 excess / saturation 结构

可在后续分别设计不可穷尽、不可预期、intuition/intention 不对称、constitution reversal、horizon-combination 等候选编码。Marion 1996 primary text 已说明这些结构对完整 saturation 有意义，但 M3 不是首个窄问题的默认停止条件。

## M4 — 可发表的比较研究包

形成自足短稿：问题、primary/secondary 证据、解释选项、形式定理、反模型、prior art、适用范围与复现方式。固定提交和工具链，所有具名定理通过构建与公理审计。

## 每次提交的完成标准

新增 theorem 必须进入根模块导入链和 `Audit.lean`；定义变化同步 `RESULTS` / `INTERPRETATION`；哲学归属变化必须同步 `SOURCES` / 原典证据记录 / `PRIOR_ART`。构建未通过、只有静态检查通过、或只看到出版社索引而没有 PDF page image，都分别如实记录。
