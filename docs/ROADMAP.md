# 研究路线与验收条件

## M0 — 可复现的逻辑原型

已完成：结构／穷尽分离、A/B/C 删除最小冲突、量词次序有限反模型、开放视域与理想视域差别、related/conditioning/exhaustion 三轴分层，以及可复现 CI。后续内容必须在自己的提交上重新构建和审计，不能借用旧验证状态。

## M1 — 原典映射（最高优先级）

围绕 Merleau-Ponty 与 Marion 建立版本、页码、访问状态、候选解释、竞争解释与形式化损失的可追溯记录。Merleau-Ponty / *Being Given* 工作卡见 [PASSAGE_CARDS.md](PASSAGE_CARDS.md)，*Being Given* 原典门见 [MARION_HORIZON_GATE.md](MARION_HORIZON_GATE.md)，Marion 1996 作者本人文本见 [MARION_1996_PRIMARY.md](MARION_1996_PRIMARY.md)，BG/ED 双版本定位见 [MARION_VERSION_CROSSWALK.md](MARION_VERSION_CROSSWALK.md)，正式重印与合法访问路径见 [MARION_REPRINT_PROVENANCE.md](MARION_REPRINT_PROVENANCE.md)，stability / decidability bridge 审计见 [DECIDABLE_CONDITIONING_BRIDGE.md](DECIDABLE_CONDITIONING_BRIDGE.md)。

### 已完成的文本层推进

- Merleau-Ponty, *Phenomenology of Perception*, Colin Smith trans., Routledge Classics 2002 已固定，并直接查看 pp. 78–82、384–386。文本支持 horizon 结构，但强调开放、未完成、透视不穷尽，因此 B / `ClosureBridge` 不应归给 Merleau-Ponty。
- Marion, *Being Given*, Kosky trans., Stanford UP 2002 已固定；出版社元数据确认 §21 pp. 199–212、§22 pp. 212–221、§23 起于 p. 221。pp. 209–212、225–226 仍没有在当前环境直接逐页读取。
- Leung、Mason、Mackinlay、Moran、Lee、Lahaie 等研究已对这些页形成带页码交叉；Murga (2024) 已被直接查看，明确提出 non-metaphysical horizontality 的竞争解释。
- Marion, “The Saturated Phenomenon,” *Philosophy Today* 40(1), 1996, pp. 103–124 的 PDCnet 出版者索引在本项目中直接返回作者正文和原刊页码。p. 117 明确说不是一般取消 horizon，而是摆脱其 `delimiting anteriority`；p. 118 列出一个／多个／超过 horizon 等关系并称 saturated phenomenon 不依赖 horizon 这一 condition of possibility；p. 119 把完整 saturation 连到 intuitive excess 与 constitution reversal。直接 PDF 在当前环境返回 403，因此该证据标为 `PRIMARY-DIRECT-INDEXED`，不是 PDF page-image review。
- Marion 2007 *Filozofia* 官方页面／摘要也已直接查看，继续支持 horizon-as-condition、intuition surplus 与 subject reversal，但全文 PDF 尚未成功读取。
- Aurélien Djian (2018) 的 Érudit 开放索引／全文检索直接返回期刊正文片段。其对 *Étant donné* §21–22 的讨论引用 ED pp. 304–305，把 horizon 与 I 分析为限制 donation 的 possibility-conditions。这进一步确认：`situated` / `conditions` 的历史解释区分已有明确前人工作，本项目的增量是将其压成可检查的形式接口，而不是发现该区分本身。
- **版本交叉**：Miller 2008、Mackinlay 与 Steinbock 的双版本引注将 BG 209–212 的目标法文范围收窄到 **ED 292–297**，其中 horizon 三种 saturation 主要在 ED 293–295；将 BG 225–226 收窄到 **ED 314–315**。这些是 `SECONDARY-EXACT-CROSSWALK`，不是 primary-page review。
- **边界纠正**：Djian 所引 ED 304–305 与 BG 209–212 不是同一版本段落。ED 304–305 仍是重要的 horizon/I possibility-condition 证据，但不再被含混地视作 §21 目标页法文 counterpart。Lederlin 2023 的 Université Paris Cité 官方论文短引 ED p. 305，独立确认其 intentional-horizon 主题位置。
- Google Books 1997 PUF *Étant donné* 书目页确认 ISBN 2130486770 / 9782130486770、452 页，并显示 `horizon`、`intuition`、`intentionnalité`、`manifestation`、`phénomène saturé` 等书内索引词；当前仍不开放目标正文，因此只作 PRIMARY-METADATA/INDEX，不计 direct-page evidence。
- **正式重印路径**：Fordham / De Gruyter 2013 *The Essential Writings* 正式收录 Marion `Sketch of the Saturated Phenomenon` pp. 108–134，但当前正文受限。Dermot Moran 的作者公开稿又把 *Being Given* `Sketch` pp. 199–221 明确登记为重印于 Moran / Embree 编 *Phenomenology: Critical Concepts* (Routledge, 2004), vol. 4, pp. 5–28；Routledge / Taylor & Francis 元数据独立确认该正式出版物。该路径扩展合法获取路线，但没有把 metadata / secondary bibliography 冒充 direct-primary page review。
- **同题增量 prior art**：Lind 2026 的官方全文继续把 Marion 的 givenness/saturated phenomenality 解释为超出主体 anticipation / constitution horizons；Llorente Cardo 2025 的 *Invisto* 官方摘要把 Marion 纳入“超越 horizon of constitution”的事件现象学问题。这些都只是 secondary prior art，不提供本仓形式 bridge，也不替代目标书页 direct-primary review。

### 已完成的形式层推进

- `horizon_structure_does_not_entail_closure` 已直接证明 `UniversalStructure ↛ ClosureBridge`；有限 `splitModel` 为反模型。
- `HasSituatedExcess` 排除 horizonless vacuity。
- `HorizonConditioning` 把 `situated`、`conditions`、`Exhausts` 分开；`Independent` / `NonExhaustible` / `Horizonless` 已由反模型证明不能词面互换。
- `HasSituatedIndependentExcess` 只作为中性兼容性 profile，不命名为 `Saturated`。
- `independent_implies_nonExhaustible_iff_capture_refutes_independence` 把 `Independent p → NonExhaustible p` 的**确切点态逻辑条件**写成 `Captured p → ¬ Independent p`。因此点态最弱要求只是排除同一 p 上的 `Captured ∧ Independent`，不需要新增 philosophical primitive。
- `appearing_independence_implies_nonExhaustible_iff_capture_refutes_independence` 把同一逻辑正规化提升到首问真正使用的**实际显现域**：`∀p, appears p → Independent p → NonExhaustible p` 等价于 `∀p, appears p → Captured p → ¬Independent p`。
- `appearing_independence_implies_nonExhaustible_iff_no_captured_independent_witness` 把同一条件写成不存在实际显现的 `Captured ∧ Independent` 冲突 witness。
- `ExhaustiveCaptureConditions` 隔离出一种更强的结构化充分 bridge；`captured_independent_refutes_exhaustiveCaptureConditions` 给出 witness-level 冲突判据，`exact_appearing_condition_is_strictly_weaker_than_exhaustiveCaptureConditions` 则用 `displacedCaptureConditioning` 证明该 same-horizon bridge 严格强于精确显现域条件。
- 构造性细化已证明 `¬ Independent p ↔ ¬¬ Conditioned p`，所以精确排斥只产生 double-negated conditioning obligation；witness-producing `appears → Captured → Conditioned` 是更强前提，且仍严格弱于 same-horizon `ExhaustiveCaptureConditions`。
- 固定 p 上，`not_independent_iff_conditioned_iff_conditioned_stable` 已把 witness gap 的**精确证明论条件**识别为 `¬¬ Conditioned p → Conditioned p`，而不是完整 decidability。
- `appearing_witness_bridge_iff_exact_and_captured_stability` 又把 witness-producing bridge 精确分解为：实际显现域的 exact exclusion + **只在 `appears ∧ Captured` 域需要的 stability**。全域 pointwise stability 是更强的充分版本。
- 本轮进一步证明 `exact_appearing_condition_iff_witness_bridge_of_captured_decidable`：即使使用更强的 decidability，也只需在 `appears ∧ Captured` 域给出 `Decidable (Conditioned p)`。全域 `∀ p, Decidable (Conditioned p)` 版本现只是该 theorem 的更强 corollary；没有开启全局 `Classical`。

### 当前范围决定

当前不扩展 saturation 语言，而继续把证明论与历史归属分开。外部查重显示 pinned Lean v4.24.0 已有 `Decidable.not_not`，Mathlib 的 `Order/Heyting/Regular.isRegular_of_decidable` 已把 decidability → regular/stable 登记为通用结果；因此项目只做 Lean Core 级薄适配，不引入 Mathlib、LogiKEy 或 Isabelle 重依赖，也不作原创逻辑宣称。

Marion 1996 primary text 与 crosswalk 已经足以说明：完整 saturation 的 horizon 关系比“无视域”或“逐一不可穷尽”更复杂。根据 prior-art gate，当前继续**不新增** `priorDelimits`、horizon-combination、intention/intuition primitive：

- 现有 `conditions` 已足以承载首问所需的最弱先行条件接口；
- 点态和实际显现域的 `Independent → NonExhaustible` 确切形式条件已经写清，不需要再造 bridge primitive；
- constructive exact exclusion、witness-producing bridge、same-horizon `ExhaustiveCaptureConditions` 及其 strictness 已分层；
- captured-domain stability 是从 `¬¬ Conditioned` 到 witness 的 exact FORMAL premise；captured-domain decidability 是更强的 sufficient source；全域 stability / decidability 又是量词范围更强的 sufficient versions；都不能由历史文本偷渡；
- horizon combination 属于完整 saturation 的进一步语义，不影响 `UniversalStructure ↛ ClosureBridge`；
- intention/intuition/constitution 对完整 Marion 理论重要，但不是否定首问纯逻辑蕴含所必需。

### 当前 M1 判定

- A / `UniversalStructure`：Merleau-Ponty 有直接证据支持，但形式化是弱压缩。
- B / `ClosureBridge`：不对应已核查 Merleau-Ponty 文本；其方向反而被开放／未完成文本抵制。
- C / `NonExhaustible`：只能是 excess 的弱模型影子，不能定义 Marion saturation。
- `Independent`：作为“不受 horizon 的先行限定／条件化”的弱接口，现在有 Marion 1996 primary-text 动机，并有 Djian 2018、Murga 2024、Lind 2026、Llorente Cardo 2025 等同题 prior art；仍不等于完整 saturation。
- `Horizonless`：Marion 1996 p. 117 直接使其不适合作为默认 saturation 编码。
- 点态 `Independent → NonExhaustible`：其确切 FORMAL 条件为 `Captured → ¬Independent`，但这不自动获得任何历史归属。
- 显现域 `Independent → NonExhaustible`：其确切 FORMAL 条件是在 `appears` 范围内排除 `Captured ∧ Independent`；该量词范围正好匹配首问，不扩大历史主张。
- constructive exact condition：等价于 `Captured → ¬¬ Conditioned`；没有额外 stability 时不应自然语言偷换成 existence witness。
- captured-domain stability：纯 FORMAL、在 `appears ∧ Captured` 域是把 exact exclusion 提升为 witness bridge 的精确附加性质。
- captured-domain `Decidable (Conditioned p)`：纯 FORMAL、更强的 sufficient source；只需在 `appears ∧ Captured` 域给出，全域 decidability 更强且无必要。
- `ExhaustiveCaptureConditions`：继续为 MODEL/QUESTION；没有原典或同题研究把 `situated ∧ Exhausts → conditions` 规定成定理，而且已经形式证明它严格强于 witness-producing bridge 与精确显现域条件。

### 尚未通过的停止门

首个研究问题**尚未完成**。版本门已经从“找哪一段法文”缩小为两个精确页段并增加了正式重印路线：

1. 合法直接查看 BG pp. 209–212、225–226，**或者**直接查看法文 ED **pp. 292–297、314–315**，**或者**在已确认的正式重印中直接取得对应正文并通过文本锚点和 BG/ED crosswalk 互证；核对 1996 论文中的 horizon / conditioning / manifestation / constitution 论证在书本版本中的重写与顺序。
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

新增 theorem 必须进入根模块导入链和 `Audit.lean`；定义变化同步 `RESULTS` / `INTERPRETATION`；哲学归属变化必须同步 `SOURCES` / 原典证据记录 / `PRIOR_ART`。构建未通过、只有静态检查通过、或只看到出版社索引而没有直接目标正文，都分别如实记录。