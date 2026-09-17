# 研究路线与验收条件

## M0 — 可复现的逻辑原型

已完成基线：结构／穷尽分离、A/B/C 删除最小冲突、量词次序的有限反模型、开放视域与理想视域差别，以及可复现 CI。后续新增内容不能借用这一步的“已验证”状态，必须在自己的提交上重新构建和审计。

## M1 — 原典映射（最高优先级）

围绕 P-MP 与 P-JM 建立段落卡，固定版本、页码、访问状态、候选解释、竞争解释与形式化损失。当前工作卡见 [PASSAGE_CARDS.md](PASSAGE_CARDS.md)，Marion 指定页的证据三角核对见 [MARION_HORIZON_GATE.md](MARION_HORIZON_GATE.md)。

### 已推进

- 已固定 Merleau-Ponty, *Phenomenology of Perception*, Colin Smith trans., Routledge Classics 2002，并直接查看关键正文页。
- 已完成 5 张 Merleau-Ponty `reviewed` 卡。pp. 79–82 与 384–386 对“视域开放、综合未完成、透视不穷尽”的证据使 B / `ClosureBridge` 不应归给 Merleau-Ponty。
- 已固定 Marion, *Being Given*, Jeffrey L. Kosky trans., Stanford UP 2002，并由出版社／Google Books 元数据定位 §21 pp. 199–212、§23 起于 p. 221。
- 已建立 3 张 Marion 工作卡，但仍为 `proposed-secondary`：二手研究提供 pp. 210–212、225–226 的页码与短引文／转述，尚未独立看到原书正文。
- 已新增二手交叉核查：Leung、Moran 均将 p. 211 的 horizon 读成条件/条件化语义；Mason 与 Murga 的研究又提示 Marion 并非简单删除一切 horizon，而需要区分视域的不同功能。
- 2026-09-17 增量核查进一步取得两条彼此独立的带页码学术来源（Cheongho Lee 2017；Myka Lahaie 博士论文），都把 *Being Given* p. 209 定位为“不能完全取消 horizon，否则 manifestation 本身受阻”的上下文；Lahaie 与 Leung 又分别对 p. 226 的 intuition/intention/constitution 句意形成交叉。该结果显著削弱 `Horizonless` 读法，但仍是二手精确引文，**不替代原书直接核查**。详见 `MARION_HORIZON_GATE.md`。
- 已直接查看 Jean-Luc Marion 2007 *Filozofia* “A Saturated Phenomenon” 的官方期刊页面与摘要；摘要把 horizon 描述为给予的 constitutive condition，并把 saturated phenomenon 与 intuition surplus、unconditioned / irreducible phenomenality 及主体反转联系起来。正文 PDF 尚未成功读取，因此只把摘要视为作者本人旁证。
- 形式层已新增 `HasSituatedExcess` 与 `horizon_structure_does_not_entail_closure`，直接反驳“有视域必然可穷尽”的纯逻辑蕴含。
- 形式层进一步新增 `HorizonConditioning`，把 `situated`（相关视域）、`conditions`（条件化视域）与 `Exhausts`（穷尽）分开。Lean 反模型证明 `Independent` 与 `NonExhaustible` 互不蕴含，且 `Independent` 不等于 horizonless。
- 已隔离压力测试 bridge `ExhaustiveCaptureConditions`：它足以使 `Independent → NonExhaustible` 成立，旧反模型则证明该 bridge 真是额外前提。当前文本证据**不支持把这条 extensional exhaustion→conditioning bridge 归给 Marion**；它继续保持 MODEL/QUESTION。
- 本轮根据 prior-art gate **刻意不新增** `priorDelimits` 一类自由谓词：现有文本提示“先行限定”可能是关键，但在指定原页未直接核查前再加一个未约束关系只会制造形式自由度，而不会推进历史解释。

### 当前 M1 验收状态

- A：**有直接证据支持，但当前形式化是弱压缩**。
- B：**不对应本轮核查的 Merleau-Ponty 段落；文本方向反而是开放和未完成**。
- C：**对 Marion 只能作为弱候选影子，不等于饱和现象的完整定义**。
- “不依赖视域”“不能被视域穷尽”“没有任何相关视域”已经在解释层和代码层正式分开。
- 关于“是否需要新增条件化关系”的工程判断：**已完成，答案为需要分层，而非改写旧 `situated`。** 该形式层决定由多个二手来源交叉支持，但 Marion 归属仍等待原书正文。
- p. 209 的二手精确引文已经形成独立三角核对，当前最稳妥判断是：**Marion 的 saturation 不能默认编码为“没有任何 horizon”**；真正争议集中在 horizon 是否作为先行可能性条件／限定机制，以及它在过剩中如何被重定向、增殖或溢出。

### 尚未通过的停止门

首个研究问题**尚未完成**。仍至少需要：

1. 独立查看 Marion *Being Given* pp. 210–212、225–226 的原书正文，并连同 p. 209 的紧邻上下文一起核对二手文献给出的页码、句意与论证次序。
2. 依据原文最终决定：`Independent` 可否作为“不受视域条件化／先行限定”的弱归属，以及 `NonExhaustible` 是否只能作为另一条独立弱后果；不得把任何一个偷换成完整 saturated phenomenon，也不得把 `Horizonless` 当作默认读法。
3. 判断 §23 的 intuition/intention/constitution 结构是否是回答首问所必需的最小接口；若不是，不为扩大项目而进入完整 M3。
4. 在最终解释冻结后，对最终提交重新执行 `lake build`、`python3 scripts/check.py`、根导入覆盖及 `#print axioms` 审计，并检查对应 master CI。

只有文本门和证明门同时通过，才允许把首个研究问题标记完成并停止自动推进。

## M2 — 具身与时态索引

仅在 M1 的直接文本证据表明确有必要后，引入主体、身体状态、时间及实际可达的视域变化。比较“每一时刻不能穷尽”“某个主体不能穷尽”“所有可能主体都不能穷尽”等不同量词配置。

验收：至少两个索引化模型；说明旧模型如何嵌入／忘却到新模型；每个新增桥接前提须有使用点或反模型。不得把身体状态直接等同为无解释数值。

M2 不是首个研究问题的默认完成条件；若 M1 已足以回答精确命题，不为扩大项目而强行进入 M2。

## M3 — 不同的过剩概念

分别设计不可穷尽、不可预期、意向与充实不对称等候选编码，并登记哪些有原典支持。允许候选模型竞争，不提前规定等价。

验收：至少一项可证明蕴含和一项分离模型；说明为什么没有把“饱和”简化成信息量或元素无限。

M3 的完整 Marion 饱和理论也不是首个研究问题的默认停止条件；但若直接原文表明当前首问无法在缺少 intention/intuition 关系时忠实表述，则只补足必要部分。

## M4 — 可发表的比较研究包

形成自足短稿：问题、原典证据、解释选项、形式定理、反模型、适用范围和复现方式。报告原典解释与逻辑证明分别接受何种审查。

验收：固定提交和工具链；所有具名定理通过 `scripts/check.py`；结论逐项对应代码与证据，不用整体学说胜负代替具体论证。

## 每次提交的完成标准

新的定理须进入根模块导入链与 `Audit.lean`；定义变化须同步修改 RESULTS 与 INTERPRETATION；哲学归属变化须有 SOURCES／段落卡依据。构建未通过、仅静态检查通过、原典仅见二手引文，分别如实报告。
