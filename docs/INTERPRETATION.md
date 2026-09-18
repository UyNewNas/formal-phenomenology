# 解释选择登记

版本：v0.15-work，2026-09-17。

## 证据层、形式层与外部工作

本项目区分：`MODEL`（人为规定的形式结构）、`FORMAL`（定义和显式前提的 Lean 后果）、`READING`（需要原典支持的解释）、`QUESTION`（尚未解决的解释桥）。证明通过不会自动把 MODEL 升格为某位哲学家的 READING；外部已有解释也必须注明来源，不能因换成 Lean 就变成“新发现”。

来源状态见 [SOURCES.md](SOURCES.md)，Merleau-Ponty / *Being Given* 段落卡见 [PASSAGE_CARDS.md](PASSAGE_CARDS.md)，Marion 1996 作者文本见 [MARION_1996_PRIMARY.md](MARION_1996_PRIMARY.md)，重印与合法访问路径见 [MARION_REPRINT_PROVENANCE.md](MARION_REPRINT_PROVENANCE.md)，structure/closure/conditioning gap 审计见 [STRUCTURE_COHERENCE_GAP.md](STRUCTURE_COHERENCE_GAP.md)，强 bridge 层级审计见 [STRICT_BRIDGE_HIERARCHY.md](STRICT_BRIDGE_HIERARCHY.md)，构造性层级见 [CONSTRUCTIVE_BRIDGE_HIERARCHY.md](CONSTRUCTIVE_BRIDGE_HIERARCHY.md)，本轮局部可判定性审计见 [DECIDABLE_CONDITIONING_BRIDGE.md](DECIDABLE_CONDITIONING_BRIDGE.md)，外部查重见 [PRIOR_ART.md](PRIOR_ART.md)。

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
| `Conditioned p` | 存在 h 使 `conditions p h` | MODEL；是 witness-producing 存在命题，不等同于 `¬ Independent p` 的构造性强度 |
| `Independent p` | 没有 h 条件化 p | MODEL + 有 PRIMARY 动机的弱接口；仍不等于完整 saturation |
| `Decidable (Conditioned p)` | 对“是否存在 conditioning horizon”给出局部判定过程 | FORMAL 前提；不是历史谓词，也不归给 Marion / Merleau-Ponty |
| `ExhaustiveCaptureConditions` | related 且 exhaustive 的 h 必定 conditions p | MODEL/QUESTION；同-horizon 强 bridge，严格强于 witness-producing capture→conditioning |
| `HasSituatedIndependentExcess` | 同一显现 related + independent + non-exhaustible | MODEL；中性兼容性 profile，不命名为 `Saturated` |

## A、B、C 的当前归属

### A — `UniversalStructure`

每个显现都有某个 related horizon。Merleau-Ponty Colin Smith 2002 pp. 78–82、384–386 为“显现伴随视域”提供直接支持，但 A 只保留一个存在量词，省略身体位置、时间、探索及内外视域。因此 A 只是其文本的弱后果候选。

### B — `ClosureBridge`

每个已具有 related horizon 的显现，都能被某个 related horizon 完整 capture。已核查的 Merleau-Ponty 原文方向恰恰相反：视域开放、综合未完成、没有单一透视穷尽世界。因此 B 不应归给 Merleau-Ponty，只保留为压力测试前提。

已经形式证明：**即使把 B 当作纯形式假设直接授予，它也不能替代 capture/conditioning bridge。** `closedIndependentConditioning` 同时满足 `UniversalStructure`、`ClosureBridge` 与 `ConditioningIsSituated`，却仍有实际显现同时 `Captured ∧ Independent`。所以 B 只把 “structured → exists exhaustive related horizon” 写进去，没有任何逻辑理由把 exhaustive horizon 变成 conditioning horizon。

### C / C+ — `HasExcess` / `HasSituatedExcess`

它们表达“当前 aspect 语言中的不可穷尽”，其中 C+ 另要求实际有 related horizon。它们可以作为 excess 的弱形式影子，但不能等同 Marion 的 saturated phenomenon。

Marion 1996 primary text 进一步确认这一谨慎是必要的：作者本人不是只给一个“所有 horizon 都失败”的单一关系，而是明确区分一个 horizon、多个 horizons、超过 horizon、乃至任何 horizon 组合都不能承受的极端情况；完整理论还涉及 intuition surplus 与 subject/constitution reversal。

## related / conditioned / exhaustive：作者文本与 prior art 都要求分层

此前 related/conditioned 的分层主要由 Leung、Moran、Murga 等研究文献推动。PDCnet 出版者索引直接提供 Marion 1996 “The Saturated Phenomenon” 的作者正文，因此解释方向已有 primary-text 支撑。Djian 2018 又直接讨论 *Étant donné* §21–22，并引用 ED pp. 304–305，把 horizon 与 I 分析为限制 donation / phenomenality 的 possibility-conditions。

Falabretti 2015/2016 是更直接的比较 prior art：它把 *Phenomenology of Perception* 与 *Étant donné* 放在同一论文中，p. 90 明确描述 Merleau-Ponty 的开放 horizon 与知觉的不穷尽；p. 98 又以“no horizon / overflowing presence”概括 Marion saturation。后一句与 Marion 1996 p. 117–118、Murga 2024、Djian 2018 形成解释张力，因此它被登记为**竞争 secondary reading**，而不是覆盖 primary evidence。详见 [FALABRETTI_COMPARISON.md](FALABRETTI_COMPARISON.md)。

因此需要把三个判断分开：

1. **分层方向有充分解释依据。** `situated` 不能自动承担 “condition of possibility / prior delimitation” 的语义，另设 `conditions` 是合理的最小形式接口。
2. **这种历史区分不是本项目新发现。** Murga、Djian 等已有明确同题讨论；本项目的增量只是把解释差异显式编码，并检验它和 `Exhausts` 的逻辑关系。
3. **Merleau-Ponty / Marion 的比较配对本身也不是本项目首创。** Falabretti 已直接进行两者比较；项目不能把“开放视域 vs donation/saturation”的历史对照当作原创性主张。

2026 年 Lind 的新近同题论文继续把 Marion 的方向解释成超出 subjectivity 的 anticipation / constitution horizons。它进一步确认“horizon-as-condition / anticipation”这一解释空间已有持续研究，但仍没有提供本项目的 extensional `Captured → Conditioned`、局部 decidability 或 same-horizon bridge。因此它限制历史新颖性，不改变形式前提层级。

### PRIMARY 约束 1：不是一般取消 horizon

Marion 1996 p. 117 明确说，问题不是一般地取消 horizon，因为那会阻止 manifestation；要解除的是 horizon 的 **delimiting anteriority**。因此：

- `Horizonless` 不能作为 Marion saturation 的默认编码；
- `Structured` 与某种“摆脱 horizon 先行限定”的 `Independent` 候选可以并存；
- `conditions` 比把 `situated` 直接取反更适合作为最小接口。

这里仍然只说“接口有 primary 动机”：Lean 的 `conditions` 没有编码时间上的 anteriority、预期、意向性或对象构成。

Falabretti p. 98 的 horizonless 二手概括不改变这一 boundary；它的存在反而证明 secondary literature 内部需要竞争解释登记，不能以单个二手概括覆盖作者本人文本。

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

## `Independent → NonExhaustible` 的确切条件：点态与实际显现域

由于基础层已经构造性证明

```text
NonExhaustible p ↔ ¬ Captured p
```

项目不增加新的 philosophical primitive，而是把目标蕴含本身规范化。Lean 定理 `independent_implies_nonExhaustible_iff_capture_refutes_independence` 给出：

```text
(Independent p → NonExhaustible p)
↔
(Captured p → ¬ Independent p)
```

因此，对固定 p 而言，**确切逻辑前提就是排除 `Captured p ∧ Independent p`**。这是一条 FORMAL 等价，不是 Marion 或 Merleau-Ponty 的 READING。它把“需要一个 bridge”说得更精确：最弱的点态要求只是 capture 与 independence 不可并存；任何更结构化的 bridge 都需要另外解释。

同一个正规化也已经提升到首问真正使用的显现域。Lean 定理 `appearing_independence_implies_nonExhaustible_iff_capture_refutes_independence` 给出：

```text
(∀ p, appears p → Independent p → NonExhaustible p)
↔
(∀ p, appears p → Captured p → ¬ Independent p)
```

这里 `appears p` 在两边都被保留。其解释意义只是**量词纪律**：如果首问只谈实际显现，那么精确排斥也只需要对实际显现成立；不能无理由把结论加强为对 `Phenomenon` 类型全部居民成立。这仍是 FORMAL 正规化，不增加新的 Marion reading。

这也解释了为什么旧反模型重要：`closedIndependentConditioning` 恰好同时满足 `Captured` 和 `Independent`，所以在没有额外前提时 `Independent → NonExhaustible` 必然失败。

即使同时给 `closedIndependentConditioning` 的 base 加上 `UniversalStructure` 与 `ClosureBridge`，再要求 `ConditioningIsSituated`，冲突 witness 仍然存在。形式入口是 `structure_closure_and_conditioning_coherence_do_not_imply_exact_appearing_condition`。所以 closure 只解决 “有没有 exhaustive related horizon”，没有解决 “exhaustive/captured 为什么会与 independence 冲突”。

## 构造性解释纪律：`¬ Independent` 不自动产生 conditioning witness

由于

```text
Independent p ↔ ¬ Conditioned p
```

Lean Core 可直接证明

```text
¬ Independent p ↔ ¬¬ Conditioned p.
```

因此实际显现域的精确排斥 `Captured p → ¬ Independent p`，在当前构造性内核里精确等价于：

```text
Captured p → ¬¬ Conditioned p.
```

这只排除了“没有任何 conditioning horizon”的证明；它**没有自动构造** `Conditioned p := ∃ h, conditions p h` 的 witness。若解释者要求“capture 必须实际给出一个 conditioning horizon”，则需要更强的 witness-producing bridge：

```text
appears p → Captured p → Conditioned p.
```

该 bridge 足以推出精确排斥，但不能从精确排斥在零公理构造性内核中反向得到。项目不会为了让自然语言看起来更简洁而偷偷引入 classical double-negation elimination。

更强的 `ExhaustiveCaptureConditions` 又要求 horizon-by-horizon 的角色同一性：实际产生 capture 的每个 related exhaustive horizon 自己就必须 conditioning。`displacedCaptureConditioning` 已证明 witness-producing bridge + `ConditioningIsSituated` 可以成立而这个 same-horizon bridge 失败。因此现在解释层级是：

```text
same-horizon bridge
    ⇒ witness-producing capture→conditioning
    ⇒ exact conflict exclusion
    ↔ double-negated conditioning obligation.
```

第一步是已验证的严格加强；第二步是构造性蕴含。任何一层若要被归给 Marion，都需要独立文本依据；这里只是在 FORMAL 层防止把 negation 结果误说成存在 witness。详见 [CONSTRUCTIVE_BRIDGE_HIERARCHY.md](CONSTRUCTIVE_BRIDGE_HIERARCHY.md)。

### 局部可判定性：什么时候 exact exclusion 真能产生 witness

本轮进一步把“需要 DNE”缩成更精确的局部条件。若目标 proposition 本身可判定：

```text
[Decidable (Conditioned p)]
```

则 Lean Core 的 `Decidable.not_not` 已足够证明：

```text
¬ Independent p ↔ Conditioned p.
```

所以若显式给出逐点前提

```text
∀ p, Decidable (Conditioned p),
```

实际显现域的 exact exclusion 与 witness-producing bridge 等价：

```text
(∀ p, appears p → Captured p → ¬ Independent p)
↔
(∀ p, appears p → Captured p → Conditioned p).
```

这条新增边界非常重要但**没有历史含义**：`Decidable (Conditioned p)` 不是现象学概念，也没有文本依据可归给 Marion。它只说明在何种形式环境下双重否定可以安全降为 existential witness。项目因此不把“如果愿意使用经典逻辑”这种宽泛措辞混进哲学解释，而把需要的 proof-theoretic premise 单独参数化。详见 [DECIDABLE_CONDITIONING_BRIDGE.md](DECIDABLE_CONDITIONING_BRIDGE.md)。

## `ExhaustiveCaptureConditions`：较强的足够 bridge，但没有历史归属

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

因此 `ExhaustiveCaptureConditions` 是实现上述点态排斥的一种**结构化充分机制**，但等价定理同时说明：它不是逻辑上唯一的表达，也不应被误称为“确切最弱前提”。

强 bridge 与显现域精确条件的正向关系已经单独内核化：

```text
ExhaustiveCaptureConditions M
→ ∀ p, appears p → Captured p → ¬ Independent p
```

入口为 `exhaustiveCaptureConditions_implies_exact_appearing_condition`。它只复用已经验证的 bridge consequence 与 `NonExhaustible ↔ ¬ Captured`，没有增加任何历史或哲学前提。

并且已经完成 witness-level 诊断：

```text
Captured p
→ Independent p
→ ¬ ExhaustiveCaptureConditions M
```

入口为 `captured_independent_refutes_exhaustiveCaptureConditions`。证明只使用当前模型定义：从 `Captured p` 取一个 situated + exhaustive 的 h，bridge 会把 h 变成 conditioning horizon，于是与 `Independent p` 冲突。这个 theorem **没有**把 `Captured` 解释成 Marion 的 “saturates a horizon”。

旧 `closedIndependentConditioning` 同时有 `Captured` 与 `Independent`，并已证明违反这条 bridge。因此 bridge 的额外性有具体反模型，也有一般 witness-level 冲突定理。

`displacedCaptureConditioning` 则给出 converse countermodel：一个 related horizon 可以负责 exhaustive capture，另一个 related horizon 可以负责 conditioning。这样所有实际显现仍满足 `Captured → ¬ Independent`，而且 `ConditioningIsSituated` 成立；但是 `ExhaustiveCaptureConditions` 仍失败，因为它额外要求 exhaustive 的那个 horizon 自己必须 conditioning。定理 `exact_appearing_condition_is_strictly_weaker_than_exhaustiveCaptureConditions` 内核化了这个反方向失败。

Marion 1996 primary text、Djian 2018、Murga 2024、Falabretti 的直接比较论文都没有提供 `situated ∧ Exhausts → conditions` 这一 extensional 蕴含。因此 `ExhaustiveCaptureConditions` 继续保持 MODEL/QUESTION。

## 重印 provenance 对解释门的影响

正式 Routledge 重印路径已确认：Moran 的作者公开稿把 *Being Given* `Sketch of the Saturated Phenomenon` pp. 199–221 明确登记为重印于 *Phenomenology: Critical Concepts* (Routledge, 2004), vol. 4, pp. 5–28；Routledge / Taylor & Francis 元数据可独立确认该出版物。另有 Fordham / De Gruyter 2013 *The Essential Writings* pp. 108–134 的正式作者文集入口。详见 [MARION_REPRINT_PROVENANCE.md](MARION_REPRINT_PROVENANCE.md)。

本轮再次检查 Stanford/DeGruyter、Google Books、早期 ED crosswalk 与正式重印入口，仍没有合法取得目标正文。搜索中出现的未经确认授权第三方整书镜像不纳入证据链。这只强化 provenance / access ledger，不改变当前解释层级：在目标正文真正可读前，重印目录、书目关系和二手 exact quotation 都不能把 `Independent` 从“有 primary 动机的弱接口”升级为书本版本已冻结的 reading。

## 首个问题的当前答案

最弱形式问题是：

> `UniversalStructure` 是否蕴含 `ClosureBridge`？

Lean 的 `horizon_structure_does_not_entail_closure` 给出否定答案；有限 `splitModel` 是反模型。Merleau-Ponty 直接文本又独立地反对把 horizon 理解成最终封闭。

Marion 一侧现在也有 direct primary support for the distinction：1996 作者文本说明 manifestation 不能简单取消 horizon，同时 saturated phenomenon 要摆脱 horizon 的先行限定，并可能以多种方式与一个或多个 horizons 发生关系。Djian 2018 又证明“horizon 作为 possibility-condition / limit”的读法已有明确 *Étant donné* 解释 prior art。Falabretti 进一步说明**两位哲学家的比较研究本身已经存在**，而且 secondary literature 对 Marion 是否“无 horizon”并不一致。Lind 2026 继续在最新研究中把 Marion 置于超出 anticipation / constitution horizons 的方向，但并不提供本项目的 extensional bridge。

因此对比较问题最稳妥的结论是：

> **“在 horizon 中／有 related horizon”本身不含“可被某个 horizon 穷尽”；若要推出后一命题，必须增加独立 closure 前提。但即使直接加入 `ClosureBridge`，它也不把 capture 与 conditioning 自动连接起来。若进一步讨论 Marion 式 horizon-independence，则对实际显现域的精确 FORMAL 条件是排除 `Captured ∧ Independent`，构造性地等价于 `Captured → ¬¬ Conditioned`；真正产生 conditioning witness 的 `Captured → Conditioned` 更强，除非另给诸如逐点 `Decidable (Conditioned p)` 这样的显式证明论前提；`ExhaustiveCaptureConditions` 又进一步要求同一个 exhaustive horizon 本身承担 conditioning。后两层都不是文本已经承诺的公理。**

这个比较结论已经相当稳定；尚未完成的是 *Being Given* 版本本身的目标页直接核对。

## 容易发生的偷换

1. `Structured → Captured` 需要额外前提；共享“horizon”一词不产生蕴含。
2. 即使授予全局 `ClosureBridge`，也不能从 `ConditioningIsSituated` 推出 captured appearance 必定非-independent；closure 和 conditioning 仍是不同轴。
3. `NonExhaustible` 不等于 `Horizonless`。
4. `Independent` 不等于 `NonExhaustible`；Marion 1996 primary text 也要求保留多个 horizon 关系情形。
5. 点态上 `Independent → NonExhaustible` 等价于排除 `Captured ∧ Independent`；在“实际显现”的量词域上，同样只需在 `appears` 范围内排除该组合。不要把量词域无理由扩到所有类型居民。
6. 构造性地，`Captured → ¬ Independent` 等价于 `Captured → ¬¬ Conditioned`，**不是**自动得到 `Captured → Conditioned`。不要把双重否定存在偷换成 witness-producing bridge。
7. 若显式假定 `Decidable (Conditioned p)`，双重否定可局部消去；但这是 FORMAL 可判定性前提，不是哲学家的历史承诺，也不能从文本沉默中推得。
8. `ExhaustiveCaptureConditions` 还比 witness-producing bridge 更强：它要求 exhaustive horizon 自身就是 conditioning horizon；`displacedCaptureConditioning` 已分离这两个层级。
9. 抽象谓词可联合一致只证明当前语言的模型论一致性，不证明历史概念独立。
10. Marion 的 saturated phenomenon 还涉及 intuition/intention/constitution；首问不需要把整个理论提前搬进 Lean。
11. Falabretti 的 “no horizon” 是竞争二手解释，不能覆盖 Marion 1996 primary evidence；反过来，primary evidence 也不使 Falabretti 作为比较史 prior art 消失。

## 当前仍未建立的断言

- 尚未直接看到 *Being Given* pp. 209–212、225–226；二手精确引文、Djian 对法文版的研究、Falabretti 的比较论文、Lind 2026、重印 provenance 以及 Marion 1996 primary text 都不能冒充这一本书的逐页核对。
- Google Books 已确认 1997 PUF *Étant donné* 的版本和相关索引词，但未开放目标正文，因此不能作为 direct primary passage。
- `Decidable (Conditioned p)` 没有历史归属；它只在形式层说明何时 `¬¬ Conditioned` 可以提升为 witness。
- 尚未定位 Marion 直接把 Merleau-Ponty 称为“去主体化不彻底前辈”的原文，因此项目不用它作前提。Falabretti 的直接比较研究反而明确避免假定 Marion 会如何直接解释 Merleau-Ponty，并称后者在 *Étant donné* 中仅边缘、脚注式出现；这提高了强归属的证据门槛，但仍不是 Marion 原典本身的证明。