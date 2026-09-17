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

`ExhaustiveCaptureConditions` 把一条缺失前提显式隔离出来：**一个相关视域若穷尽现象的全部已编码侧面，就计作条件化该现象。** 在这个 bridge 下：

```text
ExhaustiveCaptureConditions
∧ HorizonIndependent
⟹ NonExhaustible
```

入口是 `exhaustiveCaptureConditions_independent_implies_nonExhaustible`。本轮又补上点态对偶：若同一个 p 同时 `Captured` 与 `Independent`，则这个 bridge 必然失败，入口是 `captured_independent_refutes_exhaustiveCaptureConditions`。因此 bridge 的逻辑地位现在既有充分方向，也有具体 witness 的冲突判据；它仍只是压力测试，不归给 Marion 或 Merleau-Ponty。

这些都是中性的 model-theoretic 结论，不是 Marion 的 saturated phenomenon 定义。

## 原典与外部工作核查

已固定并直接核查 Merleau-Ponty, *Phenomenology of Perception*, Colin Smith trans., Routledge Classics 2002 的关键段落。pp. 79–82 与 384–386 明确强调透视不穷尽、视域开放、综合未完成，因此当前 **B / ClosureBridge 不应归给梅洛-庞蒂**。

Marion, *Being Given*, Jeffrey L. Kosky trans., Stanford UP 2002 的版本、§21（pp. 199–212）和 §23 已定位。Leung、Moran 等二手研究把 p. 211 的“不依赖视域”放在 horizon 作为 `condition of possibility` 的语义下；Mason 与 Murga 的研究又提示 Marion 并非简单删除一切 horizon。正因如此，本项目新增了独立 conditioning 关系，而没有把 `does not depend on a horizon` 错写成 `¬ Structured`。

作者本人文本方面，Marion 1996 年 “The Saturated Phenomenon” 的 PDCnet 出版者索引已直接返回作者正文和原刊页码：p. 117 明确说不是一般取消 horizon，而是摆脱其先行限定；p. 118 列出一个／多个／超过 horizon 等关系并称 saturated phenomenon 不依赖 horizon 这一 possibility-condition；p. 119 把完整 saturation 连到 intuitive excess 与 constitution reversal。直接 PDF 当前返回 403，因此状态记为 `PRIMARY-DIRECT-INDEXED`，不冒充 PDF page-image review。

本轮新增同题 prior art：Aurélien Djian 2018 “L’horizon et le destin de la phénoménologie” 直接研究 *Étant donné* 中 horizon 的角色，并引用 ED pp. 304–305，把 horizon 与 I 分析为限制 donation 的 possibility-conditions。这进一步确认：`situated` / `conditions` 的历史解释区分已有明确前人工作，本项目的增量是将其压成可检查的形式接口，而不是发现该区分本身。

本项目强制进行 [外部工作与复用审计](docs/PRIOR_ART.md)。已经确认：Lean 中存在独立的 `novaspivack/phenomenology-lean` formal-phenomenology 工程，Isabelle/HOL / AFP 与 LogiKEy 也已有成熟 formal philosophy / computational metaphysics / computational hermeneutics 方法。因此本项目**不声称首创“形式化哲学”或“形式化现象学”工作流**。当前未定位到覆盖本项目具体 horizon 首问的同型 Lean 定理。

但 **pp. 209–212、225–226 的 *Being Given* 原书正文仍未由本项目独立逐页核对**。Internet Archive 可确认 1997 法文 *Étant donné* 的受限借阅条目存在，Google Books 也能确认 1997 PUF 版本及索引词，但当前环境都未提供目标页可直接读取正文；项目不会绕过访问控制。因此尚未达到首个研究问题的停止条件。

详见 [段落卡](docs/PASSAGE_CARDS.md)、[来源登记](docs/SOURCES.md) 与 [外部工作审计](docs/PRIOR_ART.md)。

## 工程状态

Lean 4.24.0；不依赖 Mathlib 或其他外部 Lean 包。本分支共有 **8 个库模块、54 个具名引理／定理**，全部列入内核公理依赖审计；最终通过状态以对应提交 CI 为准。

| 检验 | 形式结论 | 入口 |
|---|---|---|
| 有视域是否推出可穷尽 | 否；有限反模型 | `horizon_structure_does_not_entail_closure` |
| 有视域且不可穷尽是否非空真 | 是；有限见证 | `splitModel_situatedExcess` |
| 不依赖视域是否等于无视域 | 否；有相关视域且独立的模型 | `horizon_independence_need_not_be_horizonless` |
| 不依赖视域是否推出不可穷尽 | 无额外 bridge 时否 | `horizon_independence_does_not_imply_nonExhaustible` |
| 哪个显式 bridge 足以恢复上条蕴含 | situated + exhaustive → conditioning 足够 | `exhaustiveCaptureConditions_independent_implies_nonExhaustible` |
| captured + independent 对 bridge 意味着什么 | 同一 witness 足以反证 bridge | `captured_independent_refutes_exhaustiveCaptureConditions` |
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
  Horizon/Conditioning.lean      # 相关/条件化分离 + 显式 capture→conditioning bridge
  Models/Finite.lean
  Models/Conditioning.lean       # 分离、联合见证及 bridge 反模型审计
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
| [外部工作与复用审计](docs/PRIOR_ART.md) | 形式哲学先例、同题文献、复用/去重决定 |
| [研究路线与验收条件](docs/ROADMAP.md) | 下一阶段与停止条件 |
| [协作规则](AGENTS.md) | 代码、证据、模型、查重与验证约定 |

## 下一步

首要硬门槛仍是**独立核对 Marion *Being Given* pp. 209–212、225–226 的原书正文**，或取得可可靠逐段对应的法文 *Étant donné*。形式层现在不仅拆开相关视域、条件化、穷尽三者，还精确展示了 bridge 的充分方向与点态冲突条件。下一轮继续突破合法原典访问门，决定真实文本是否支持任何类似 bridge，而不是继续无边界扩张模型。
