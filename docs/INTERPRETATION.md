# 解释选择登记

版本：v0.3-work，2026-09-17。

## 证据层与形式层

本项目区分四种记录：`MODEL` 是人为规定的形式模型；`FORMAL` 是由定义和前提推出的结果；`READING` 是需要原典支持的解释；`QUESTION` 是尚待解决的问题。证明通过不会自动将 `MODEL` 升格为某位哲学家的 `READING`。

来源阅读状态见 [SOURCES.md](SOURCES.md)，逐段卡见 [PASSAGE_CARDS.md](PASSAGE_CARDS.md)。本页不是学说真伪裁决，而是解释接口。

## 词汇映射

| 代码 | 严格含义 | 解释状态与尚缺内容 |
|---|---|---|
| `Phenomenon` | 被量化的对象类型 | MODEL；没有规定对象如何个体化，也未承诺现象可以完全对象化 |
| `appears p` | 模型中 p 被标记为显现 | MODEL；未编码显现过程、给予性或体验强度 |
| `Horizon` | 本模型允许谈论的视域类型 | MODEL；必须交代是实际、可达、可能还是理想视域 |
| `situated p h` | h 是 p 的相关视域 | MODEL；只表达“相关/所在”，不表达 h 是 p 显现的先验条件 |
| `Aspect`、`presents p a` | 选定描述语言中的侧面及关联 | MODEL；不等于感觉数据或信息比特 |
| `admits h a` | h 在模型中容纳侧面 a | MODEL；没有度量，也不直接表示概念理解或意向充实 |
| `Exhausts p h` | h 容纳所有被编码为 p 的侧面 | MODEL；只相对于所选侧面词汇 |
| `NonExhaustible p` | 每个相关 h 都不能穷尽 p | MODEL；不是 Marion “饱和”的定义 |
| `HasSituatedExcess` | 存在显现 p，p 实际有相关视域，同时所有相关视域都不能穷尽 p | MODEL；排除“没有任何相关视域”造成的空真 |
| `HorizonConditioning.conditions p h` | h 被单独标记为 p 的条件化视域 | MODEL；用于区分“相关视域”和“作为可能性条件的视域” |
| `HorizonConditioning.Independent p` | 没有任何 h 条件化 p | MODEL；是 `does not depend on a horizon` 的候选接口，不是已确认的 Marion 定义 |

把“侧面”当作集合论上可指认的项，是当前基础模型的实质假设。若文本要求意义在经验中生成而非预列侧面，应建立替代模型。

## A、B、C 的归属更新

### A — `UniversalStructure`

每个显现都有至少一个相关视域。

**当前证据状态：有支持，但形式化过弱。** Colin Smith 译本 pp. 78–80 明确使用对象—视域结构，并把视域作为对象探索及同一性的条件；pp. 384–385 又把自然世界称作所有视域的视域。但 A 只剩一个存在量词，删掉了身体位置、时间、内外视域和探索过程。

因此可以把 A 当作 Merleau-Ponty 文本的**弱后果候选**，不能说它等于他的视域概念。

### B — `ClosureBridge`

每个已经有相关视域的显现，存在一个相关视域穷尽它。

**当前证据状态：压力测试前提；本轮核查的 Merleau-Ponty 原典反而指向其否定。** pp. 79–82 把实际视域综合描述成推定、开放而未完成；pp. 384–386 明确讨论没有透视穷尽世界、视域始终开放、综合从未完成。

因此 B 不应归给 Merleau-Ponty。若未来有人主张某种“理想完成视域”，那应作为新的量词域或额外结构加入，而不是偷偷塞回 A。

### C — `HasExcess`

存在显现，不能被任何相关视域穷尽。

**当前证据状态：对 Marion 只能算弱形式影子。** 二手文献带页码地定位 *Being Given* §21 pp. 210–212 和 pp. 225–226：饱和现象不以视域作为可能性条件，并讨论饱和、增殖、溢出多个视域，以及直观超过意向。由于关键页尚未直接核对，项目不把 C 标成 Marion 的定义。

### C+ — `HasSituatedExcess`

存在显现，它有至少一个相关视域，同时不能被任何相关视域穷尽。

这是**非空真版本**。它适合表达 Merleau-Ponty 已核查段落里的弱关系结构：显现并非“无视域”，但视域不构成最终封闭。Lean 证明表明 C+ 单独就足以反驳 B。

C+ 仍然不是 Marion 饱和的定义。

## 新增解释轴：related / conditioned / exhaustive

上一版只区分：

1. p 是否有相关视域；
2. 某相关视域是否穷尽 p。

但 *Being Given* 的二手带页码材料反复出现另一种语义：horizon 作为 `condition of possibility`，或现象是否 `depend on` horizon。若把这一层直接塞进 `situated`，会把两种不同问题混在一起。因此 v0.3 新增 `HorizonConditioning` 包装层：

- `situated p h`：h 与 p 的显现相关；
- `conditions p h`：h 作为模型中的条件/约束规定 p；
- `Exhausts p h`：h 容纳当前模型列出的 p 的全部侧面。

这三者没有定义性等同。

形式上已经给出双向分离：

- 一个现象可以 `Structured` 且 `Independent`，所以“无视域依赖”不等于“无相关视域”；
- `Independent` 不推出 `NonExhaustible`：可有一个被完整捕获、但不把任何视域标记为条件化的模型；
- `NonExhaustible` 不推出 `Independent`：可有受视域条件化、但任何相关视域仍不足以穷尽的模型。

因此当前最稳妥的解释结论是：

> **`does not depend on a horizon`、`is not exhausted by any related horizon`、`has no related horizon` 是三个不同候选命题。**

这一步只清理概念空间。要把 `Independent` 真正归给 Marion 的 saturated phenomenon，仍须直接核对 *Being Given* pp. 210–212 的原书上下文；要把 pp. 225–226 的直观/意向结构形式化，则还需额外关系。

## 当前首个问题的形式答案

研究问题的最弱形式是：

> `UniversalStructure` 是否蕴含 `ClosureBridge`？

Lean 中 `horizon_structure_does_not_entail_closure` 给出否定答案；有限 `splitModel` 同时满足视域结构和 `HasSituatedExcess`，因此不存在从“有视域”到“可被某个视域穷尽”的纯逻辑推理。

更强地，`situatedExcess_refutes_closureBridge` 证明：只要已经有一个实际显现、实际有视域、但不可由任何相关视域穷尽的见证，B 就直接失败。

新增条件化层进一步说明：即使将 Marion 的“不依赖视域”候选编码为 `Independent`，也**不能**从中纯逻辑推出 `NonExhaustible`；反向也不成立。若文本要建立两者联系，需要明确的额外原则，而不能靠词义滑移。

## 三个容易偷换的地方

### 1. 结构不等于封闭

`Structured p → Captured p` 需要额外前提。仅仅都使用“视域”一词不会产生该蕴含。

### 2. 无法穷尽不等于完全没有视域

`splitModel` 与 `expandingModel` 都有实际相关视域，同时不可穷尽。`HasSituatedExcess` 把这点直接编码。

### 3. 不受视域条件化也不等于无法被视域穷尽

新增 `closedIndependentConditioning` 是反例：现象可不依赖任何被标记为条件化的视域，却仍被一个相关视域完整捕获。反方向也由 `splitDependentConditioning` 否定。

所以即使 Marion 原文确认 saturated phenomenon `does not depend on any horizon`，仍不能自动推出当前的 `NonExhaustible`，更不能推出 `HasHorizonlessAppearance`。

## 从对话直觉到文献问题

以下口头概括仍不能直接作为公理：

- “梅洛-庞蒂的视域把经验封闭在人类尺度内。”——本轮直接文本证据反而强调开放与未完成。
- “马里翁的饱和现象完全没有视域。”——二手带页码材料显示他讨论饱和一个、多个乃至溢出视域的情形；直接原书仍待复核。
- “马里翁的不依赖视域就是不可穷尽。”——新增模型已经证明这两个形式谓词逻辑独立；文本若要连接它们，必须提供额外桥接前提。
- “马里翁明确把梅洛-庞蒂称为去主体化不彻底的前辈。”——尚未定位直接原文。

## 当前不涉及的结构

主体、身体图式、时间、他者、意向活动、前反思经验与给予方式，都没有被声称已经完整刻画。尤其是 Merleau-Ponty 的原文把开放性与时间综合紧密相连，而 Marion 的饱和涉及 intuition/intention；这些结构应在原典映射完成后按需要加入。
