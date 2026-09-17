# 解释选择登记

版本：v0.5-work，2026-09-17。

## 证据层、形式层与外部工作

本项目区分四种记录：`MODEL` 是人为规定的形式模型；`FORMAL` 是由定义和前提推出的结果；`READING` 是需要原典支持的解释；`QUESTION` 是尚待解决的问题。证明通过不会自动将 `MODEL` 升格为某位哲学家的 `READING`。

来源阅读状态见 [SOURCES.md](SOURCES.md)，逐段卡见 [PASSAGE_CARDS.md](PASSAGE_CARDS.md)，外部形式化/方法/同题解释的查重见 [PRIOR_ART.md](PRIOR_ART.md)。本页不是学说真伪裁决，也不以“Lean 中可证明”作为原创性证据。

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
| `HorizonConditioning.ExhaustiveCaptureConditions` | 若相关 h 穷尽 p，则 h 条件化 p | MODEL/QUESTION；本轮用于隔离 `Independent → NonExhaustible` 所缺的额外前提，不归给任何哲学家 |
| `HorizonConditioning.HasSituatedIndependentExcess` | 存在同一显现：有相关视域、不受任何视域条件化、且不被任何相关视域穷尽 | MODEL；是三条形式轴的兼容性 profile，不命名为 `Saturated` |

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

*Being Given* 的带页码二手材料和 Murga (2024) 的解释争论都要求区分：一个 horizon **与显现相关**，不等于它作为先行条件**规定**显现，更不等于它**穷尽**显现。因此当前模型使用三个关系：

- `situated p h`：h 与 p 的显现相关；
- `conditions p h`：h 作为模型中的条件/约束规定 p；
- `Exhausts p h`：h 容纳当前模型列出的 p 的全部侧面。

这三者没有定义性等同。Murga 的公开论文已经明确讨论“保留 horizon、批判其形而上学式先行限定”这一解释，因此本项目不把 related/conditioned 的区分包装成新的历史发现；这里的工作是把该解释差异变成可检查的形式接口。

形式上此前给出双向分离：

- 一个现象可以 `Structured` 且 `Independent`，所以“无视域依赖”不等于“无相关视域”；
- `Independent` 不推出 `NonExhaustible`；
- `NonExhaustible` 不推出 `Independent`。

上一轮定义中性的 `HasSituatedIndependentExcess`，要求**同一个**显现同时满足：

1. `Structured`；
2. `Independent`；
3. `NonExhaustible`。

`splitIndependentConditioning` 提供有限见证，证明这三条形式轴可以共同满足；而且模型满足 `ConditioningIsSituated`。这个定理只回答“我们的抽象语言中有没有矛盾”，并不把该 conjunction 认定为 Marion 的 saturated phenomenon。特别地，因为 `conditions` 当前是一个独立关系，模型的一致性不能替代原典对 related/conditioned 之间约束的论证。

因此当前最稳妥的解释结论是：

> **`has a related horizon`、`does not depend on a horizon as prior condition`、`is not exhausted by any related horizon`、`has no related horizon` 是不同的候选命题；其中前三者在当前中性模型中可以联合一致。**

要把 `Independent` 真正归给 Marion，仍须直接核对 *Being Given* pp. 210–212 的原书上下文；要把 pp. 225–226 的直观/意向结构形式化，则还需额外关系。

## 本轮新增的精确 bridge：穷尽何时推出条件化？

此前我们已经证明：

```text
Independent p → NonExhaustible p
```

在当前语言中**不是纯逻辑定理**。本轮不再添加另一个自由谓词，而是把缺失前提直接写成：

```text
ExhaustiveCaptureConditions M :=
  ∀ p h, situated p h → Exhausts p h → conditions p h
```

它表达一个明确的压力测试：**如果一个相关视域真的穷尽了 p 的所有已编码侧面，就把这个穷尽行为计作该视域对 p 的条件化。** 在这一 bridge 下，Lean 可直接证明：

```text
ExhaustiveCaptureConditions M
→ Independent p
→ NonExhaustible p
```

逻辑很简单但解释意义明确：若出现一个 situated 且 exhaustive 的 h，bridge 会给出 `conditions p h`，与 `Independent p` 矛盾。

原有反模型 `closedIndependentConditioning` 同时满足 `Independent` 和 `Captured`；本轮新增定理证明它**恰好违反** `ExhaustiveCaptureConditions`。因此该 bridge 不是从既有定义偷偷展开出来的，而是连接“穷尽”与“条件化”的真正额外前提。

**解释状态：MODEL/QUESTION，不是 READING。** Marion 的作者本人论文/摘要与 Leung、Murga 等研究支持“horizon 作为 condition”的轴，但当前没有直接文本证据说“任何 extensional exhaustion 都必然构成 conditioning”。所以本项目只用它定位推理需要什么，不把它归给 Marion、Merleau-Ponty，也不把它混同于饱和现象定义。

## 当前首个问题的形式答案

研究问题的最弱形式是：

> `UniversalStructure` 是否蕴含 `ClosureBridge`？

Lean 中 `horizon_structure_does_not_entail_closure` 给出否定答案；有限 `splitModel` 同时满足视域结构和 `HasSituatedExcess`，因此不存在从“有视域”到“可被某个视域穷尽”的纯逻辑推理。

更强地，`situatedExcess_refutes_closureBridge` 证明：只要已经有一个实际显现、实际有视域、但不可由任何相关视域穷尽的见证，B 就直接失败。

条件化层进一步说明：即使将 Marion 的“不依赖视域”候选编码为 `Independent`，也**不能**从中纯逻辑推出 `NonExhaustible`；反向也不成立。上一轮联合见证只证明 `Structured ∧ Independent ∧ NonExhaustible` 可以一致，不证明文本必然要求这个 conjunction。

本轮把第一条失败蕴含进一步精确化：**若额外接受 `ExhaustiveCaptureConditions`，那么 `Independent → NonExhaustible` 成立；若不接受它，`closedIndependentConditioning` 就是反例。** 于是“Marion 式不依赖视域”要推出“不可被相关视域穷尽”，至少必须有某种连接 conditioning 与 exhaustive capture 的 bridge；究竟是不是本轮这条最简单 bridge，则仍是文本问题。

## 五个容易偷换的地方

### 1. 结构不等于封闭

`Structured p → Captured p` 需要额外前提。仅仅都使用“视域”一词不会产生该蕴含。

### 2. 无法穷尽不等于完全没有视域

`splitModel` 与 `expandingModel` 都有实际相关视域，同时不可穷尽。`HasSituatedExcess` 把这点直接编码。

### 3. 不受视域条件化也不等于无法被视域穷尽

`closedIndependentConditioning` 是反例；反方向由 `splitDependentConditioning` 否定。

### 4. 从不受条件化到不可穷尽，需要显式 bridge

`ExhaustiveCaptureConditions` 是一种足够条件，但目前只作为压力测试。把这一步埋进 `Independent` 的词义会重新制造我们试图排除的偷换。

### 5. 三个谓词可联合一致不等于历史概念已被证明独立

`splitIndependentConditioning` 中 `conditions := False` 是模型选择。它证明抽象关系语言不强迫冲突，但 Merleau-Ponty / Marion 的文本可能增加关系公设。外部解释和原典决定这些 bridge，Lean 反模型本身不能决定。

## 从对话直觉到文献问题

以下口头概括仍不能直接作为公理：

- “梅洛-庞蒂的视域把经验封闭在人类尺度内。”——本轮直接文本证据反而强调开放与未完成。
- “马里翁的饱和现象完全没有视域。”——Murga 等研究明确提出相反的竞争解释；Marion 原书关键页仍待直接复核。
- “马里翁的不依赖视域就是不可穷尽。”——无 bridge 时模型证明两个形式谓词互不推出；有 `ExhaustiveCaptureConditions` 时才得到一个条件性蕴含，而该 bridge 尚未归属于原典。
- “马里翁明确把梅洛-庞蒂称为去主体化不彻底的前辈。”——尚未定位直接原文。

## 当前不涉及的结构

主体、身体图式、时间、他者、意向活动、前反思经验与给予方式，都没有被声称已经完整刻画。尤其是 Merleau-Ponty 的原文把开放性与时间综合紧密相连，而 Marion 的饱和涉及 intuition/intention；这些结构应在原典映射完成后按需要加入。
