# 解释选择登记

版本：v0.2-work，2026-09-17。

## 证据层与形式层

本项目区分四种记录：`MODEL` 是人为规定的形式模型；`FORMAL` 是由定义和前提推出的结果；`READING` 是需要原典支持的解释；`QUESTION` 是尚待解决的问题。证明通过不会自动将 `MODEL` 升格为某位哲学家的 `READING`。

来源阅读状态见 [SOURCES.md](SOURCES.md)，逐段卡见 [PASSAGE_CARDS.md](PASSAGE_CARDS.md)。本页不是学说真伪裁决，而是解释接口。

## 词汇映射

| 代码 | 严格含义 | 解释状态与尚缺内容 |
|---|---|---|
| `Phenomenon` | 被量化的对象类型 | MODEL；没有规定对象如何个体化，也未承诺现象可以完全对象化 |
| `appears p` | 模型中 p 被标记为显现 | MODEL；未编码显现过程、给予性或体验强度 |
| `Horizon` | 本模型允许谈论的视域类型 | MODEL；必须交代是实际、可达、可能还是理想视域 |
| `situated p h` | h 是 p 的相关视域 | MODEL；不是把一切视域都当作可交换容器 |
| `Aspect`、`presents p a` | 选定描述语言中的侧面及关联 | MODEL；不等于感觉数据或信息比特 |
| `admits h a` | h 在模型中容纳侧面 a | MODEL；没有度量，也不直接表示概念理解或意向充实 |
| `Exhausts p h` | h 容纳所有被编码为 p 的侧面 | MODEL；只相对于所选侧面词汇 |
| `NonExhaustible p` | 每个相关 h 都不能穷尽 p | MODEL；不是 Marion “饱和”的定义 |
| `HasSituatedExcess` | 存在显现 p，p 实际有相关视域，同时所有相关视域都不能穷尽 p | MODEL；排除“没有任何相关视域”造成的空真，适合表达“开放于视域而不被视域穷尽”的弱结构 |

把“侧面”当作集合论上可指认的项，是当前模型的实质假设。若文本要求意义在经验中生成而非预列侧面，应建立替代模型。

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

这是本轮新增的**非空真版本**。它特别适合表达 P-MP-1b / P-MP-2a 的弱关系结构：显现并非“无视域”，但视域不构成最终封闭。Lean 证明表明 C+ 单独就足以反驳 B；不再需要额外借助 A 来排除 horizonless vacuity。

C+ 仍然不是 Marion 饱和的定义。Marion 的“不依赖任何视域”可能是“不受视域条件化”，而不是 `¬ Structured`；其完整形式化还需要 intention/intuition/constitution。

## 当前首个问题的形式答案

研究问题的最弱形式是：

> `UniversalStructure` 是否蕴含 `ClosureBridge`？

Lean 中 `horizon_structure_does_not_entail_closure` 给出否定答案；有限 `splitModel` 同时满足视域结构和 `HasSituatedExcess`，因此不存在从“有视域”到“可被某个视域穷尽”的纯逻辑推理。

更强地，`situatedExcess_refutes_closureBridge` 证明：只要已经有一个实际显现、实际有视域、但不可由任何相关视域穷尽的见证，B 就直接失败。

这与本轮 Merleau-Ponty 原典的方向一致；但这仍不是“Lean 证明了 Merleau-Ponty 正确”，而是文本解释与一个明确模型结论发生了可追踪的对应。

## 三个容易偷换的地方

### 1. 结构不等于封闭

`Structured p → Captured p` 需要额外前提。仅仅都使用“视域”一词不会产生该蕴含。

### 2. 无法穷尽不等于完全没有视域

`splitModel` 与 `expandingModel` 都有实际相关视域，同时不可穷尽。新增 `HasSituatedExcess` 把这点直接编码；`situated_excess_need_not_be_horizonless` 给出有限模型见证。

因此即使 Marion 说 saturated phenomenon “does not depend on any horizon”，也不能未经论证翻译为 `HasHorizonlessAppearance`。

### 3. 无限多个侧面不等于饱和

有限 `splitModel` 已能区分逐一覆盖与整体覆盖。自然数模型只展示持续扩展；不声称过剩等于元素无限。`completedModel` 加入理想全覆盖视域后结论变化，说明量词域本身属于解释选择。

## 从对话直觉到文献问题

以下口头概括仍不能直接作为公理：

- “梅洛-庞蒂的视域把经验封闭在人类尺度内。”——本轮直接文本证据反而强调开放与未完成。
- “马里翁的饱和现象完全没有视域。”——二手带页码材料显示他讨论多个饱和/溢出视域的情形；直接原书仍待复核。
- “马里翁明确把梅洛-庞蒂称为去主体化不彻底的前辈。”——尚未定位直接原文。

## 当前不涉及的结构

主体、身体图式、时间、他者、意向活动、前反思经验与给予方式，都没有被声称已经完整刻画。尤其是 Merleau-Ponty 的原文把开放性与时间综合紧密相连，而 Marion 的饱和涉及 intuition/intention；这些结构应在原典映射完成后按需要加入。
