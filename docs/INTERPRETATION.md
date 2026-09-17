# 解释选择登记

版本：v0.6-work，2026-09-17。

## 证据层、形式层与外部工作

本项目区分：`MODEL`（人为规定的形式结构）、`FORMAL`（定义和显式前提的 Lean 后果）、`READING`（需要原典支持的解释）、`QUESTION`（尚未解决的解释桥）。证明通过不会自动把 MODEL 升格为某位哲学家的 READING；外部已有解释也必须注明来源，不能因换成 Lean 就变成“新发现”。

来源状态见 [SOURCES.md](SOURCES.md)，Merleau-Ponty / *Being Given* 段落卡见 [PASSAGE_CARDS.md](PASSAGE_CARDS.md)，Marion 1996 作者文本见 [MARION_1996_PRIMARY.md](MARION_1996_PRIMARY.md)，外部查重见 [PRIOR_ART.md](PRIOR_ART.md)。

## 词汇映射

| 代码 | 严格含义 | 当前解释状态 |
|---|---|---|
| `Phenomenon` | 被量化的对象类型 | MODEL；未规定现象如何个体化 |
| `appears p` | p 被模型标记为显现 | MODEL；未编码给予过程或体验强度 |
| `Horizon` | 模型允许量化的视域 | MODEL；必须交代实际／可达／可能／理想域 |
| `situated p h` | h 是 p 的相关视域 | MODEL；不自动表示先验条件或限定 |
| `Aspect`, `presents` | 被选定描述语言编码的侧面 | MODEL；不等于感觉数据或信息比特 |
| `admits h a` | h 容纳侧面 a | MODEL |
| `Exhausts p h` | h 容纳所有被编码为 p 的侧面 | MODEL；只相对于当前 aspect 词汇 |
| `Captured p` | 存在 situated 且 exhaustive 的 h | MODEL；不能直接等同 Marion 的 “saturates a horizon” |
| `NonExhaustible p` | 每个 related h 都不穷尽 p | MODEL；不是 `Saturated` 的定义 |
| `HasSituatedExcess` | 存在显现 p：有 related horizon 且不可被任何 related horizon 穷尽 | MODEL；排除 horizonless 空真 |
| `conditions p h` | h 被单独标记为 p 的条件化／约束视域 | MODEL；用于区分 related 与 condition-of-possibility 角色 |
| `Independent p` | 没有 h 条件化 p | MODEL + 有 PRIMARY 动机的弱接口；仍不等于完整 saturation |
| `ExhaustiveCaptureConditions` | related 且 exhaustive 的 h 必定 conditions p | MODEL/QUESTION；只是一条压力测试 bridge |
| `HasSituatedIndependentExcess` | 同一显现 related + independent + non-exhaustible | MODEL；中性兼容性 profile，不命名为 `Saturated` |

## A、B、C 的当前归属

### A — `UniversalStructure`

每个显现都有某个 related horizon。Merleau-Ponty Colin Smith 2002 pp. 78–82、384–386 为“显现伴随视域”提供直接支持，但 A 只保留一个存在量词，省略身体位置、时间、探索及内外视域。因此 A 只是其文本的弱后果候选。

### B — `ClosureBridge`

每个已具有 related horizon 的显现，都能被某个 related horizon 完整 capture。已核查的 Merleau-Ponty 原文方向恰恰相反：视域开放、综合未完成、没有单一透视穷尽世界。因此 B 不应归给 Merleau-Ponty，只保留为压力测试前提。

### C / C+ — `HasExcess` / `HasSituatedExcess`

它们表达“当前 aspect 语言中的不可穷尽”，其中 C+ 另要求实际有 related horizon。它们可以作为 excess 的弱形式影子，但不能等同 Marion 的 saturated phenomenon。

Marion 1996 primary text 进一步确认这一谨慎是必要的：作者本人不是只给一个“所有 horizon 都失败”的单一关系，而是明确区分一个 horizon、多个 horizons、超过 horizon、乃至任何 horizon 组合都不能承受的极端情况；完整理论还涉及 intuition surplus 与 subject/constitution reversal。

## related / conditioned / exhaustive：现在有作者本人文本支持分层方向

此前 related/conditioned 的分层主要由 Leung、Moran、Murga 等研究文献推动。本轮 PDCnet 出版者索引直接提供 Marion 1996 “The Saturated Phenomenon” 的作者正文，因此解释状态得到实质提升。

### PRIMARY 约束 1：不是一般取消 horizon

Marion 1996 p. 117 明确说，问题不是一般地取消 horizon，因为那会阻止 manifestation；要解除的是 horizon 的 **delimiting anteriority**。因此：

- `Horizonless` 不能作为 Marion saturation 的默认编码；
- `Structured` 与某种“摆脱 horizon 先行限定”的 `Independent` 候选可以并存；
- `conditions` 比把 `situated` 直接取反更适合作为最小接口。

这里仍然只说“接口有 primary 动机”：Lean 的 `conditions` 没有编码时间上的 anteriority、预期、意向性或对象构成。

### PRIMARY 约束 2：horizon-independence 不等于逐一 non-exhaustibility

Marion 1996 p. 118 在同一段落中既说 saturated phenomenon 不依赖 horizon 这一 condition of possibility，又列出它可以“simply saturate”一个 horizon、增殖多个 horizons、超过 horizon 等不同情形。

因此项目已有形式结论

```text
Independent p → NonExhaustible p
```

**不是纯逻辑定理**，现在不仅有反模型理由，也有直接作者文本要求我们不要用词义把二者强行等同。

这并不等于把 `Captured` 直接翻译为 Marion 的 “saturates a horizon”。`Captured` 只是 extensional aspect coverage；两者的对应仍是 QUESTION。最稳妥的结论是：**作者文本不允许我们把 horizon-independence 简化成一种唯一的“所有 related horizons 都不能覆盖”结构。**

### PRIMARY 约束 3：完整 saturation 超出首问的最小语言

Marion 1996 p. 119 直接把 saturated phenomenon 与过剩的 intuitive givenness、对象 constitution 失败以及 constituting / constituted 反转联系起来。这与 *Being Given* pp. 225–226 的二手精确引文方向一致。

所以：

- 首个窄问题的形式答案不需要先完成 intention/intuition/constitution 的全套编码；有限反模型已经否定 `UniversalStructure → ClosureBridge`。
- 但任何把 `Independent`、`NonExhaustible`、`Captured` 或它们的 conjunction 命名为完整 `Saturated` 的做法都仍不成立。
- M3 的完整 saturation 理论继续留在后续，不为 theorem count 强行提前。

## `ExhaustiveCaptureConditions` 的解释状态进一步收紧

压力测试 bridge：

```text
situated p h ∧ Exhausts p h → conditions p h
```

足以让 Lean 推出：

```text
ExhaustiveCaptureConditions M
→ Independent p
→ NonExhaustible p
```

这精确说明“从 independence 推 non-exhaustibility”需要额外连接前提。旧 `closedIndependentConditioning` 同时有 `Captured` 与 `Independent`，并已证明违反这条 bridge，因此 bridge 不是定义展开。

本轮 primary text **没有**把这条 bridge 升级为 READING。恰恰相反，Marion 1996 p. 118 同时讨论“不依赖 horizon”与在一个 horizon 中 saturation，使任何“只要在某 horizon 中达到某种完成就必定受其条件化”的翻译都必须额外论证。由于 `Captured ≠ saturates a horizon` 尚未建立，当前只能说存在解释张力，不能宣布文本反驳 bridge。

## 首个问题的当前答案

最弱形式问题是：

> `UniversalStructure` 是否蕴含 `ClosureBridge`？

Lean 的 `horizon_structure_does_not_entail_closure` 给出否定答案；有限 `splitModel` 是反模型。Merleau-Ponty 直接文本又独立地反对把 horizon 理解成最终封闭。

Marion 一侧现在也有 direct primary support for the distinction：1996 作者文本说明 manifestation 不能简单取消 horizon，同时 saturated phenomenon 要摆脱 horizon 的先行限定，并可能以多种方式与一个或多个 horizons 发生关系。因此对比较问题最稳妥的结论是：

> **“在 horizon 中／有 related horizon”本身不含“可被某个 horizon 穷尽”；若要推出后一命题，必须增加独立 closure 前提。Marion 式的 horizon-independence 也不能不经 bridge 就改写成 `NonExhaustible`。**

这个比较结论已经相当稳定；尚未完成的是 *Being Given* 版本本身的目标页直接核对。

## 容易发生的偷换

1. `Structured → Captured` 需要额外前提；共享“horizon”一词不产生蕴含。
2. `NonExhaustible` 不等于 `Horizonless`。
3. `Independent` 不等于 `NonExhaustible`；Marion 1996 primary text 也要求保留多个 horizon 关系情形。
4. `ExhaustiveCaptureConditions` 是足够 bridge，不是哲学家已经承诺的公理。
5. 抽象谓词可联合一致只证明当前语言的模型论一致性，不证明历史概念独立。
6. Marion 的 saturated phenomenon 还涉及 intuition/intention/constitution；首问不需要把整个理论提前搬进 Lean。

## 当前仍未建立的断言

- 尚未直接看到 *Being Given* pp. 209–212、225–226；二手精确引文和 Marion 1996 primary text不能冒充这一本书的逐页核对。
- 尚未定位 Marion 直接把 Merleau-Ponty 称为“去主体化不彻底前辈”的原文，因此项目不用它作前提。
