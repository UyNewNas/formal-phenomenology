# Formal Phenomenology

[![Lean verification](https://github.com/UyNewNas/formal-phenomenology/actions/workflows/lean.yml/badge.svg)](https://github.com/UyNewNas/formal-phenomenology/actions/workflows/lean.yml)

**以可检查的模型研究现象学论证：原典 → 解释选择 → 形式定义 → 证明与反模型。**

首个问题：**在视域中显现，是否必然意味着能够被某个视域穷尽？**

项目从梅洛-庞蒂与马里翁的视域问题出发。v0.1 先建立一个独立的关系模型，把“有视域”“某个视域穷尽现象”“无视域”拆开。哲学家的主张与这些形式命题是否对应，由单独的文本研究检验。

## 当前成果

Lean 4.24.0；不依赖 Mathlib 或其他外部 Lean 包。共有 **5 个库模块、5 个具体模型、27 个具名引理／定理**。每个定理都列入内核公理依赖审计。

| 检验 | 形式结论 | 入口 |
|---|---|---|
| 结构与不可穷尽是否兼容 | 二侧面有限模型同时满足两者 | `splitModel_structure`、`splitModel_excess` |
| 何时产生冲突 | A、B、C 联合不可满足；任意两条有模型 | `minimal_conflict` |
| 逐一覆盖是否等于整体覆盖 | 不等价，有限反模型已足够 | `individual_cover_does_not_imply_capture` |
| 视域持续扩展是否必然终结 | 自然数模型中每个侧面可覆盖，却没有最终穷尽视域 | `open_horizon_compatibility` |
| 改变视域的量词域会怎样 | 加入理想全覆盖视域后，不可穷尽性不再成立 | `horizon_domain_changes_exhaustibility` |

这里 A 是“显现都有视域”，B 是“有视域的显现能够被某个视域穷尽”的**额外桥接前提**，C 是“有不可被任何相关视域穷尽的显现”。

**A 与 C 不直接冲突；加入 B 才得到这组命题的矛盾。** 这定位了需要核查的推理步骤，不把 B 直接归给梅洛-庞蒂，也不把 C 直接定义成马里翁的饱和现象。

## 复现

先按 [Lean 官方安装说明](https://lean-lang.org/install/) 安装工具链管理器，并准备 Python 3.10 或以上版本。

```sh
git clone https://github.com/UyNewNas/formal-phenomenology.git
cd formal-phenomenology
lake build
python3 scripts/check.py
```

Windows 可将最后一行替换为 `py -3 scripts/check.py`。以 `lean-toolchain` 固定的版本为准；这里不要求使用最新 Lean。

`check.py` 执行库构建、入口模块覆盖检查、证明占位符检查，以及 `Audit.lean` 中全部定理的 `#print axioms` 检查。当前审计要求所有列出的定理没有公理依赖；哲学前提通过定理参数显式传入，而不是声明为全局 `axiom`。

只有运行 `python3 scripts/check.py --static-only` 时不会调用 Lean；静态检查通过不等于证明已经通过内核检查。实际构建状态见上方 CI。

## 项目导航

```text
FormalPhenomenology/
  Horizon/Basic.lean             # 显现、视域、侧面与覆盖的语言
  Horizon/Separation.lean        # 分离定理和条件冲突
  Models/Finite.lean            # 三个有限见证及最小冲突核
  Models/OpenHorizon.lean        # 持续扩展的自然数视域
  Models/HorizonExtension.lean   # 加入理想视域的敏感性检验
Audit.lean                      # 27 项具名证明的依赖审计
scripts/check.py                # 构建与审计入口
```

| 文档 | 内容 |
|---|---|
| [形式结果与证明地图](docs/RESULTS.md) | 完整定义、模型和量词结构 |
| [解释选择登记](docs/INTERPRETATION.md) | 每个建模词与哲学词之间的距离 |
| [来源与阅读状态](docs/SOURCES.md) | 已核查研究文献、原典待核对项 |
| [研究路线与验收条件](docs/ROADMAP.md) | 下一阶段的具体任务 |
| [协作规则](AGENTS.md) | 代码、证据、模型修改和验证约定 |

## 下一阶段

优先完成原典段落卡：固定版本、定位段落、给出解释与替代解释，再决定是否加入具身主体、时间和意向性结构。**当前已形式化的是一组明确的逻辑关系；它们对两位哲学家的解释忠实度仍是研究任务。**
