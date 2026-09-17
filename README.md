# Formal Phenomenology

[![Lean verification](https://github.com/UyNewNas/formal-phenomenology/actions/workflows/lean.yml/badge.svg)](https://github.com/UyNewNas/formal-phenomenology/actions/workflows/lean.yml)

**以可检查的模型研究现象学论证：原典 → 解释选择 → 形式定义 → 证明与反模型。**

首个问题：**在视域中显现，是否必然意味着能够被某个视域穷尽？**

项目从梅洛-庞蒂与马里翁的视域问题出发。当前先把“有视域”“某个视域穷尽现象”“有视域但不可穷尽”“无视域”拆开，再分别核查哲学文本。

## 当前形式答案

Lean 已直接证明首个问题的最弱逻辑蕴含不成立：

```text
UniversalStructure ⟹ ClosureBridge     ✗
```

`horizon_structure_does_not_entail_closure` 使用一个有限反模型：一个显现有两个侧面和两个相关视域，每个视域只容纳一个侧面。因此它确实具有视域结构，却没有任何一个相关视域穷尽它。

新增 `HasSituatedExcess` 明确要求“实际有相关视域 + 不可被任何相关视域穷尽”，排除无视域造成的空真。`situatedExcess_refutes_closureBridge` 进一步证明：只要存在这样一个见证，ClosureBridge 就直接失败。

这只是形式层答案，不自动等于对哲学家的解释。

## 原典核查进度

已固定并直接核查 Merleau-Ponty, *Phenomenology of Perception*, Colin Smith trans., Routledge Classics 2002 的关键段落。pp. 79–82 与 384–386 明确强调透视不穷尽、视域开放、综合未完成，因此当前 **B / ClosureBridge 不应归给梅洛-庞蒂**。

Marion, *Being Given*, Jeffrey L. Kosky trans., Stanford UP 2002 的版本、§21（pp. 199–212）和关键页已经定位；二手文献带页码地指向“饱和不依赖视域”、多视域溢出及直观超过意向。但关键页尚未独立回原书逐页核对，所以项目**尚未达到首个研究问题的停止条件**，也不把 `HasExcess` 冒称为 saturated phenomenon 的完整定义。

详见 [段落卡](docs/PASSAGE_CARDS.md)。

## 工程状态

Lean 4.24.0；不依赖 Mathlib 或其他外部 Lean 包。当前共有 **6 个库模块、5 个具体模型、34 个具名引理／定理**，全部列入内核公理依赖审计。

| 检验 | 形式结论 | 入口 |
|---|---|---|
| 有视域是否推出可穷尽 | 否；有限反模型 | `horizon_structure_does_not_entail_closure` |
| 有视域且不可穷尽是否非空真 | 是；有限见证 | `splitModel_situatedExcess` |
| 何时产生 A/B/C 冲突 | A、B、C 联合不可满足；任意两条有模型 | `minimal_conflict` |
| 逐一覆盖是否等于整体覆盖 | 不等价 | `individual_cover_does_not_imply_capture` |
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
  Horizon/SituatedExcess.lean    # 非空真“有视域但不可穷尽”
  Models/Finite.lean             # 首问有限反例与三组基础模型
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
| [研究路线与验收条件](docs/ROADMAP.md) | 下一阶段与停止条件 |
| [协作规则](AGENTS.md) | 代码、证据、模型与验证约定 |

## 下一步

首要缺口不是继续堆逻辑定理，而是**独立核对 Marion *Being Given* pp. 210–212、225–226 的原书正文**，确认“不依赖视域”“多视域溢出”和直观/意向过剩之间的精确关系。完成后再决定是否需要为“条件化视域”增加新关系，而不是把它误写成 `¬ Structured`。
