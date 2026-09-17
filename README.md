# Formal Phenomenology

[![Lean verification](https://github.com/UyNewNas/formal-phenomenology/actions/workflows/lean.yml/badge.svg)](https://github.com/UyNewNas/formal-phenomenology/actions/workflows/lean.yml)

**以可检查的模型研究现象学论证：原典 → 解释选择 → 形式定义 → 证明与反模型。**

首个问题：**在视域中显现，是否必然意味着能够被某个视域穷尽？**

项目从梅洛-庞蒂与马里翁的视域问题出发。当前把“有相关视域”“被视域条件化”“某个视域穷尽现象”“有视域但不可穷尽”“无视域”分别编码，再核查哪些关系能够忠实对应原典。

## 当前形式答案

Lean 已直接证明首个问题的最弱逻辑蕴含不成立：

```text
UniversalStructure ⟹ ClosureBridge     ✗
```

`horizon_structure_does_not_entail_closure` 使用一个有限反模型：一个显现有两个侧面和两个相关视域，每个视域只容纳一个侧面。因此它确实具有视域结构，却没有任何一个相关视域穷尽它。

`HasSituatedExcess` 明确要求“实际有相关视域 + 不可被任何相关视域穷尽”，排除无视域造成的空真。

`HorizonConditioning` 再把“h 是 p 的相关视域”与“h 作为条件规定 p 的可显现性”分开。Lean 已给出双向反模型：

```text
HorizonIndependent ⟹ NonExhaustible      ✗
NonExhaustible      ⟹ HorizonIndependent ✗
HorizonIndependent  ⟹ Horizonless        ✗
```

另有一个**联合一致性见证**：同一个显现可以同时有相关视域、没有 horizon 被标记为其条件化关系，并且不被任何相关视域穷尽；该模型还满足“条件化视域必须是相关视域”的一致性约束。入口是 `related_independent_nonExhaustible_are_jointly_consistent`。

“`Independent → NonExhaustible` 到底需要什么”现在有两层精确答案。点态上：

```text
(Independent p → NonExhaustible p)
↔
(Captured p → ¬ Independent p)
```

入口是 `independent_implies_nonExhaustible_iff_capture_refutes_independence`。因此对同一个 p，确切要求只是排除 `Captured p ∧ Independent p`。

该结论也已经提升到首问实际谈论的**显现域**，而不无理由要求 `Phenomenon` 类型的所有居民都满足它：

```text
(∀ p, appears p → Independent p → NonExhaustible p)
↔
(∀ p, appears p → Captured p → ¬ Independent p)
```

入口是 `appearing_independence_implies_nonExhaustible_iff_capture_refutes_independence`。这仍只是形式正规化，不是新的哲学公理。

同一精确条件现已进一步压成**冲突见证正规形**：

```text
(∀ p, appears p → Independent p → NonExhaustible p)
↔
¬ ∃ p, appears p ∧ Captured p ∧ Independent p
```

入口是 `appearing_independence_implies_nonExhaustible_iff_no_captured_independent_witness`。因此若只问首问中的实际显现，确切的兼容性条件就是不存在一个实际显现同时 `Captured` 且 `Independent`；这仍是 FORMAL 命题逻辑正规化，不是 Marion 的历史公理。

`ExhaustiveCaptureConditions` 则是一个更强的结构化压力测试：**一个相关视域若穷尽现象的全部已编码侧面，就计作条件化该现象。** 在这个 bridge 下：

```text
ExhaustiveCaptureConditions
∧ HorizonIndependent
⟹ NonExhaustible
```

入口是 `exhaustiveCaptureConditions_independent_implies_nonExhaustible`。若同一个 p 同时 `Captured` 与 `Independent`，则这个较强 bridge 必然失败，入口是 `captured_independent_refutes_exhaustiveCaptureConditions`。

“较强”现在已经两侧形式闭合。`exhaustiveCaptureConditions_implies_exact_appearing_condition` 直接证明强 bridge 蕴含实际显现域的精确排斥 `Captured → ¬ Independent`；反方向则由 `displacedCaptureConditioning` 反驳：一个 related horizon 负责 exhaustive capture、另一个 related horizon 负责 conditioning，于是所有实际显现仍满足精确排斥且 `ConditioningIsSituated` 成立，但 `ExhaustiveCaptureConditions` 失败。入口是 `exact_appearing_condition_is_strictly_weaker_than_exhaustiveCaptureConditions`。因此这个结构化 bridge 真正严格强于精确条件，而不是其改写。

这些都是中性的 model-theoretic / propositional 结论，不是 Marion 的 saturated phenomenon 定义。

## 原典与外部工作核查

已固定并直接核查 Merleau-Ponty, *Phenomenology of Perception*, Colin Smith trans., Routledge Classics 2002 的关键段落。pp. 79–82 与 384–386 明确强调透视不穷尽、视域开放、综合未完成，因此当前 **B / ClosureBridge 不应归给梅洛-庞蒂**。

Marion, *Being Given*, Jeffrey L. Kosky trans., Stanford UP 2002 的版本、§21（pp. 199–212）和 §23 已定位。Leung、Moran 等二手研究把 p. 211 的“不依赖视域”放在 horizon 作为 `condition of possibility` 的语义下；Mason 与 Murga 的研究又提示 Marion 并非简单删除一切 horizon。正因如此，本项目新增了独立 conditioning 关系，而没有把 `does not depend on a horizon` 错写成 `¬ Structured`。

作者本人文本方面，Marion 1996 年 “The Saturated Phenomenon” 的 PDCnet 出版者索引已直接返回作者正文和原刊页码：p. 117 明确说不是一般取消 horizon，而是摆脱其先行限定；p. 118 列出一个／多个／超过 horizon 等关系并称 saturated phenomenon 不依赖 horizon 这一 possibility-condition；p. 119 把完整 saturation 连到 intuitive excess 与 constitution reversal。直接 PDF 当前仍返回 403，因此状态记为 `PRIMARY-DIRECT-INDEXED`，不冒充 PDF page-image review。

合法访问路线现已单列 [Marion 重印 provenance](docs/MARION_REPRINT_PROVENANCE.md)。Fordham / De Gruyter 2013 *The Essential Writings* 有 Marion `Sketch` pp. 108–134 的正式章节页；另有更明确的书目链：Dermot Moran 的作者公开稿说明 *Being Given* `Sketch` pp. 199–221 重印于 Moran / Embree 编 *Phenomenology: Critical Concepts*（Routledge, 2004）, vol. 4, pp. 5–28，Routledge / Taylor & Francis 元数据可独立确认该正式出版物。本轮再次检查 Stanford/De Gruyter、Google Books 与正式重印路线，仍只得到元数据或选择性预览，没有合法暴露目标正文，因此不关闭停止门。

2013 Quadrige 版另有精确的 secondary crosswalk：Schulzki 2015 将 *Being Given* p. 225 的 intuition/intention 核心句定位到 *Étant donné* 2013 p. 370。该页仍未由本项目在 Cairn/PUF 直接展开完整作者正文，因此只记为 `SECONDARY-EXACT-CROSSWALK`，不能替代 direct-primary gate。

同题 prior art 方面，Aurélien Djian 2018 直接研究 *Étant donné* 中 horizon 的角色并引用 ED pp. 304–305；Ericson Falabretti 2015/2016 已直接把 *Phenomenology of Perception* 与 *Étant donné* 放在同一比较问题中。因此本项目不把 related/conditioned 的历史区分、或 Merleau-Ponty/Marion 的比较配对本身包装成新发现。

本项目强制进行 [外部工作与复用审计](docs/PRIOR_ART.md)。已经确认：Lean 中存在独立的 `novaspivack/phenomenology-lean` formal-phenomenology 工程，Isabelle/HOL / AFP 与 LogiKEy 也已有成熟 formal philosophy / computational metaphysics / computational hermeneutics 方法。因此本项目**不声称首创“形式化哲学”或“形式化现象学”工作流**。本轮针对冲突见证正规形做增量查重：GitHub 全局搜索 `Captured Independent NonExhaustible` 没有定位到 external formal-philosophy 同型 API；`novaspivack/phenomenology-lean` 仍固定在 `75230e4e...`，LogiKEy 最新固定在 `b29954b0...`。因此只复用本仓已验证的 Lean Core 逻辑 API，不引入重依赖，也不作原创数学／哲学宣称。详见 [strict bridge 层级审计](docs/STRICT_BRIDGE_HIERARCHY.md)。

但 **pp. 209–212、225–226 的 *Being Given* 原书正文仍未由本项目独立逐页核对**。Internet Archive 可确认 1997 法文 *Étant donné* 的受限借阅条目存在，Google Books 也能确认 1997 PUF 版本及索引词，但当前环境都未提供目标页可直接读取正文；项目不会绕过访问控制。因此尚未达到首个研究问题的停止条件。

详见 [段落卡](docs/PASSAGE_CARDS.md)、[来源登记](docs/SOURCES.md)、[重印 provenance](docs/MARION_REPRINT_PROVENANCE.md)、[strict bridge 层级审计](docs/STRICT_BRIDGE_HIERARCHY.md) 与 [外部工作审计](docs/PRIOR_ART.md)。

## 工程状态

Lean 4.24.0；不依赖 Mathlib 或其他外部 Lean 包。本分支共有 **8 个库模块、59 个具名引理／定理**，全部列入内核公理依赖审计；最终通过状态以对应提交 CI 为准。

| 检验 | 形式结论 | 入口 |
|---|---|---|
| 有视域是否推出可穷尽 | 否；有限反模型 | `horizon_structure_does_not_entail_closure` |
| 有视域且不可穷尽是否非空真 | 是；有限见证 | `splitModel_situatedExcess` |
| 不依赖视域是否等于无视域 | 否；有相关视域且独立的模型 | `horizon_independence_need_not_be_horizonless` |
| 不依赖视域是否推出不可穷尽 | 无额外条件时否 | `horizon_independence_does_not_imply_nonExhaustible` |
| 上条蕴含的确切点态条件是什么 | 等价于 `Captured p → ¬ Independent p` | `independent_implies_nonExhaustible_iff_capture_refutes_independence` |
| 在实际显现域的确切条件是什么 | 等价于对 `appears p` 排除 `Captured p ∧ Independent p` | `appearing_independence_implies_nonExhaustible_iff_capture_refutes_independence` |
| 精确显现域条件的冲突见证正规形是什么 | 不存在实际显现的 `Captured ∧ Independent` witness | `appearing_independence_implies_nonExhaustible_iff_no_captured_independent_witness` |
| 强结构 bridge 是否蕴含精确显现域条件 | 是 | `exhaustiveCaptureConditions_implies_exact_appearing_condition` |
| 这个结构化 bridge 是否严格更强 | 是；精确显现域条件可成立而 bridge 失败 | `exact_appearing_condition_is_strictly_weaker_than_exhaustiveCaptureConditions` |
| captured + independent 对该 bridge 意味着什么 | 同一 witness 足以反证 bridge | `captured_independent_refutes_exhaustiveCaptureConditions` |
| 该 bridge 是否真是额外前提 | 是；旧 closed-independent 反模型违反它 | `closedIndependentConditioning_not_exhaustiveCaptureConditions` |
| 不可穷尽是否推出不依赖视域 | 否；可受条件化但仍不可穷尽 | `nonExhaustible_does_not_imply_horizon_independence` |
| 三轴能否同时成立 | 能；相关 + 独立 + 不可穷尽有同一有限见证 | `related_independent_nonExhaustible_are_jointly_consistent` |
| 何时产生 A/B/C 冲突 | A、B、C 联合不可满足；任意两条有模型 | `minimal_conflict` |
| 持续扩展是否必然终结 | 不必；每侧面可达仍无最终视域 | `open_horizon_compatibility` |
| 改变视域量词域会怎样 | 加入理想全覆盖视域后不可穷尽性消失 | `horizon_domain_changes_exhaustibility` |

## 复现

先按 [Lean 官方安装说明](https://lean-lang.org/install/) 安装工具链管理器，并准备 Python 3.10 或以上版本。

```sh
git clone https://github.com/UyNewNas/formal-phenomenology.git
cd formal-phenomenology
lake build
python3 scripts/check.py
```

`check.py` 执行库构建、入口模块覆盖检查、证明占位符检查，以及 `Audit.lean` 中全部定理的 `#print axioms` 检查。哲学前提通过定理参数显式传入，不声明成全局 `axiom`。

只有 `python3 scripts/check.py --static-only` 不调用 Lean；静态检查通过不等于内核验证成功。实际构建状态以对应提交 CI 为准。

## 项目导航

```text
FormalPhenomenology/
  Horizon/Basic.lean
  Horizon/Separation.lean
  Horizon/SituatedExcess.lean
  Horizon/Conditioning.lean      # 三轴分离 + 点态/显现域/冲突见证确切条件 + 强 bridge → 精确条件
  Models/Finite.lean
  Models/Conditioning.lean       # 分离、联合见证、bridge 反模型及 strictness witness
  Models/OpenHorizon.lean
  Models/HorizonExtension.lean
Audit.lean
scripts/check.py
```

| 文档 | 内容 |
|---|---|
| [形式结果与证明地图](docs/RESULTS.md) | 定义、模型和正式首问命题 |
| [原典段落卡](docs/PASSAGE_CARDS.md) | 版本、页码、访问状态、竞争解释 |
| [解释选择登记](docs/INTERPRETATION.md) | 形式词与哲学词之间的距离 |
| [来源与阅读状态](docs/SOURCES.md) | 一手／二手证据与未核查项 |
| [Marion 重印 provenance](docs/MARION_REPRINT_PROVENANCE.md) | 正式重印范围、合法获取路线与证据等级 |
| [strict bridge 层级审计](docs/STRICT_BRIDGE_HIERARCHY.md) | 强 bridge、精确条件、冲突见证正规形、查重和访问复查 |
| [外部工作与复用审计](docs/PRIOR_ART.md) | 形式哲学先例、同题文献、复用/去重决定 |
| [研究路线与验收条件](docs/ROADMAP.md) | 下一阶段与停止条件 |
| [协作规则](AGENTS.md) | 代码、证据、模型、查重与验证约定 |

## 下一步

首要硬门槛仍是**独立核对 Marion *Being Given* pp. 209–212、225–226 的原书正文**，或取得可可靠逐段对应的法文 *Étant donné* / 正式重印正文。形式层现在不仅拆开相关视域、条件化、穷尽三者，还把 `Independent → NonExhaustible` 的确切条件写成点态形式、实际显现域形式和“无 `Captured ∧ Independent` 显现见证”形式，并用正向 theorem + converse countermodel 完整证明其严格弱于 `ExhaustiveCaptureConditions` 这种 horizon-by-horizon 结构 bridge。下一轮继续突破合法原典访问门，决定真实文本是否支持任何额外 bridge，而不是继续无边界扩张模型。
