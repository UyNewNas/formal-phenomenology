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

已新增：

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

### 1.1 本轮新增：把精确条件压成单一冲突见证的不存在

为了让“兼容性或冲突所需的确切前提”不再停留在嵌套 implication 形式，本轮新增：

```text
appearing_independence_implies_nonExhaustible_iff_no_captured_independent_witness
```

其命题是：

```text
(∀ p, appears p → Independent p → NonExhaustible p)
↔
¬ ∃ p, appears p ∧ Captured p ∧ Independent p
```

这不是新的 bridge，也没有增加 predicate。它只是把已有显现域正规化进一步写成**冲突见证正规形**：首问的 conditioning 变体要成立，逻辑上需要且只需要不存在一个实际显现同时 `Captured` 且 `Independent`。

因此当前的精确层级可以读成：

```text
Independent → NonExhaustible on appearances
        ↕ exact FORMAL equivalence
no appearing Captured ∧ Independent witness
        ↑ implied by
ExhaustiveCaptureConditions
```

最后一条仍严格更强；`displacedCaptureConditioning` 继续反证 converse。

## 2. 为什么这不是新的哲学公理

`ExhaustiveCaptureConditions` 逐个 horizon 绑定两个角色：如果某个 related horizon 本身 exhaustive，它自己就必须 conditioning。显现域精确条件只要求 existential capture 与 horizon-independence 不得在同一个实际显现上并存，并不要求负责 capture 与负责 conditioning 的 horizon 是同一个。

因此新增 theorem 只是当前关系语言中的 FORMAL 层级事实。它不支持以下任何未经文本证明的归属：

- Marion 主张 `situated ∧ Exhausts → conditions`；
- Merleau-Ponty 主张 closure；
- `Captured` 等于 Marion 的 “saturates a horizon”；
- `Independent`、`NonExhaustible` 或二者合取等于完整 `Saturated`。

新增的 no-witness 形式也只是在逻辑上明确“冲突发生在哪里”：它没有证明原典中的“独立”“穷尽”就是本仓两个 predicate，也没有给它们增加历史必然联系。

## 3. 外部查重／复用决定

在写入 theorem 前完成针对本轮对象的增量查重：

1. GitHub 全局搜索 `Captured Independent NonExhaustible`：有效 formal-philosophy 命中仍是本仓；其他命中主要为无关词典／数据文件，没有定位到同型 API。
2. `novaspivack/phenomenology-lean` 的 `main` 本轮重新核对仍为 commit `75230e4eab333ad0fc47573747521ccc1a31a163`（2026-05-20）；没有出现 Marion / horizon / exhaustion 同型接口。
3. LogiKEy 本轮重新核对最新 commit 为 `b29954b0876d7991baf12f17378f31700f9de759`（2026-09-13）。其 computational metaphysics / semantic-embedding 工作继续构成方法 prior art，但本轮 theorem 只是 Lean Core 命题逻辑正规化，不值得引入 Isabelle/LogiKEy 依赖。
4. AFP Abstract Object Theory、Lowe reconstruction 与 computational-hermeneutics 仍是方法／基础设施 prior art；它们说明“形式哲学、解释重构、反模型审计”不是本项目发明。
5. Murga、Djian、Falabretti、Leung、Mason、Mackinlay、Schulzki 等继续作为同题解释或版本定位 prior art；它们约束历史解释边界，但没有提供本项目 extensional `Captured` / `Independent` 的 no-witness theorem。

**复用决定**：直接复用本仓已验证的 `NonExhaustible ↔ ¬ Captured` 与显现域量词纪律，以一条薄的 Lean Core theorem给出冲突见证正规形；不平行重写通用逻辑 API、不新增依赖、不作原创数学或原创历史解释宣称。

## 4. direct-primary 访问门与 2013 p.370 导航

本轮继续检查合法正式入口，而不绕过访问限制。

Irina Schulzki 2015, “Love at Loss: Jean-Luc Marion’s Concept of Erotic Reduction and Paul Thomas Anderson’s Magnolia”, pp. 145–172 的可检索全文明确把 *Being Given* p. 225 的核心句对应到 **Étant donné 2013 p. 370**；其短引为 `l’intuition subvertit, donc précède toute intention...`。Schulzki 本人的大学个人页和该文集的出版社目录可独立确认篇名、作者与出版信息。

证据等级保持：

> **SECONDARY-EXACT-CROSSWALK**：研究文献给出准确 2013 页码和法文短引，但本项目尚未在 Cairn/PUF 直接展开 2013 p.370 的完整作者书页。

这一锚点实际推进了 §23 版本导航：BG p.225 的 intuition/intention reversal 在 2013 Quadrige 中可精确搜索 p.370，而不再只能使用 1997/early-pagination 的 ED p.314–315。它同时支持一个范围决定：intention/intuition 对**完整 saturation**很重要，但这条维度没有改变首问的纯逻辑答案，也没有暴露需要立即扩展当前 Lean 语言的新缺口。

本轮仍未取得以下 direct-primary 目标正文：

- BG pp. 209–212、225–226；
- ED 1997 / early-pagination pp. 292–297、314–315；
- ED 2013 p.370 的完整作者书页；
- 或经文本锚点可靠互证的正式重印正文。

因此不把 secondary exact crosswalk 冒充 `PRIMARY-DIRECT-PAGE`，停止门继续保持。

## 5. 首问当前状态

纯形式答案已经稳定：

```text
UniversalStructure ↛ ClosureBridge
```

若进一步询问 `Independent → NonExhaustible`，现在有三种完全等价／分层清楚的 FORMAL 说法：

```text
∀ appearing p, Independent p → NonExhaustible p

∀ appearing p, Captured p → ¬ Independent p

¬ ∃ appearing p, Captured p ∧ Independent p
```

`ExhaustiveCaptureConditions` 是一种严格更强的结构化充分机制，而非逻辑上最弱或唯一的 bridge。

首问尚不能宣告历史解释层完成，因为 Marion 的指定书本版本 direct-primary 页仍未独立逐页核对。新增 theorem 不改变这一停止门。
