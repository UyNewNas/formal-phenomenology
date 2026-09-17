# Exhaustive-capture bridge 与显现域精确条件：形式层级审计

核查日期：2026-09-17。

本文只处理首个研究问题已经使用的三个形式轴：related horizon (`situated`)、conditioning (`conditions`) 与 extensional aspect coverage (`Exhausts` / `Captured`)。它不新增 philosophical primitive，也不把任何一条形式关系直接命名为 Marion 的 saturated phenomenon。

## 1. 本轮要闭合的形式缺口

仓库此前已经证明实际显现域上的精确正规化：

```text
(∀ p, appears p → Independent p → NonExhaustible p)
↔
(∀ p, appears p → Captured p → ¬ Independent p)
```

并由 `displacedCaptureConditioning` 证明右侧精确条件可以成立而 `ExhaustiveCaptureConditions` 失败。因此强 bridge 的 converse 已有反模型。

此前文档说 `ExhaustiveCaptureConditions` “严格更强”，但缺少一个单独具名 theorem 明示正向蕴含：

```text
ExhaustiveCaptureConditions M
→
∀ p, appears p → Captured p → ¬ Independent p
```

本轮新增：

```text
exhaustiveCaptureConditions_implies_exact_appearing_condition
```

证明复用 `exhaustiveCaptureConditions_independent_implies_nonExhaustible` 与已有 `nonExhaustible_iff_not_captured`，没有新增定义。

因此形式层级现在由一条正向 theorem 与一个 converse countermodel 完整闭合：

```text
ExhaustiveCaptureConditions
        ↓
exact appearing-domain exclusion of Captured ∧ Independent

converse: false (displacedCaptureConditioning)
```

这比只从一个 countermodel 口头称“更强”更明确：前者是后者的严格加强。

## 2. 为什么这不是新的哲学公理

`ExhaustiveCaptureConditions` 逐个 horizon 绑定两个角色：如果某个 related horizon 本身 exhaustive，它自己就必须 conditioning。显现域精确条件只要求 existential capture 与 horizon-independence 不得在同一个实际显现上并存，并不要求负责 capture 与负责 conditioning 的 horizon 是同一个。

因此新增 theorem 只是当前关系语言中的 FORMAL 层级事实。它不支持以下任何未经文本证明的归属：

- Marion 主张 `situated ∧ Exhausts → conditions`；
- Merleau-Ponty 主张 closure；
- `Captured` 等于 Marion 的 “saturates a horizon”；
- `Independent`、`NonExhaustible` 或二者合取等于完整 `Saturated`。

## 3. 外部查重／复用决定

在写入 theorem 前完成针对本轮对象的增量查重：

1. GitHub 全局精确搜索 `ExhaustiveCaptureConditions`：命中本仓，没有定位到外部 formal-philosophy 同型 API。
2. 扩大检索词到 `Captured Independent NonExhaustible horizon conditioning`：主要命中本仓与无关词典／数据文件，没有定位到可直接复用的同型声明。
3. `novaspivack/phenomenology-lean` 的 `main` 本轮重新核对仍为 commit `75230e4eab333ad0fc47573747521ccc1a31a163`（2026-05-20）；针对 `horizon Marion saturated exhaustive conditioning` 的仓库代码搜索无结果。
4. LogiKEy、AFP Abstract Object Theory、Lowe reconstruction 与 computational-hermeneutics 仍是方法／基础设施 prior art；它们说明“形式哲学、解释重构、反模型审计”不是本项目发明，但本轮这个 Lean Core 命题不值得为复用方法先例引入重依赖。
5. Murga、Djian、Falabretti、Leung、Mason、Mackinlay 等继续作为同题解释 prior art：它们约束 related / conditioning / saturation 的历史解释边界，但没有提供本项目的 extensional horizon-by-horizon bridge。

**复用决定**：直接复用本仓已验证的逻辑 API，以一条薄的 Lean theorem 补全层级；不平行重写 exhaustion 语义，不新增依赖，不作原创数学或原创历史解释宣称。

## 4. direct-primary 访问门本轮复查

本轮继续检查合法正式入口，而不绕过访问限制：

- Stanford / De Gruyter Brill 的 *Being Given* §21 仍只提供章节元数据，不能在当前环境直接读出目标 pp. 209–212、225–226 正文。
- Google Books 的 *Being Given* 页面继续只提供书目、目录与有限预览，没有暴露目标页。
- Google Books 的 *Phenomenology: Critical Concepts in Philosophy*, vol. 4 可确认正式重印卷及 Marion `Sketch of the Saturated Phenomenon` 从该卷 p. 5 开始，但当前预览只开放选择性页面，仍不足以直接核对目标重印段落。
- Fordham / De Gruyter Brill 的 *The Essential Writings* 中 `Sketch of the Saturated Phenomenon` 正式章节页仍显示正文访问受限。

因此本轮访问复查只强化 provenance，不把 metadata / selected preview / secondary exact quotation 冒充 `PRIMARY-DIRECT-PAGE`。停止门仍需 BG 209–212、225–226，或 ED 292–297、314–315，或经文本锚点可靠互证的正式重印正文。

## 5. 首问当前状态

纯形式答案已经稳定：

```text
UniversalStructure ↛ ClosureBridge
```

若进一步询问 `Independent → NonExhaustible`，精确的实际显现域条件是排除 `Captured ∧ Independent`；`ExhaustiveCaptureConditions` 是一种严格更强的结构化充分机制，而非逻辑上最弱或唯一的 bridge。

首问尚不能宣告历史解释层完成，因为 Marion 的指定书本版本 direct-primary 页仍未独立逐页核对。新增 theorem 不改变这一停止门。
