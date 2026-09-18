# Stability / decidable conditioning bridge audit

核查日期：2026-09-18。

本页只审计首个研究问题里一个很窄的证明论对象：在已经证明

```text
Captured → ¬ Independent
↔
Captured → ¬¬ Conditioned
```

之后，什么额外前提才能把双重否定 obligation 提升成真正的 `Conditioned := ∃ h, conditions p h` witness。这里讨论的是证明论强度，不是 Marion 或 Merleau-Ponty 的历史归属。

## 1. 从点态 stability 再收紧到首问真正使用的域

上一轮已经证明固定 `p` 上的精确刻画：

```text
((¬ Independent p) ↔ Conditioned p)
↔
(¬¬ Conditioned p → Conditioned p)
```

入口：

```text
not_independent_iff_conditioned_iff_conditioned_stable
```

并证明了一个方便的全域充分版本：如果

```text
∀ p, ¬¬ Conditioned p → Conditioned p
```

则 actual-appearance exact exclusion 与 witness-producing bridge 等价。

进一步检查量词范围后，首个研究问题并不需要对所有 `Phenomenon` 类型居民都假设 stability；真正会调用双重否定消去的只有**实际显现且已经 `Captured` 的 p**。因此已有：

```text
exact_appearing_condition_iff_witness_bridge_of_captured_stable
```

其前提仅为：

```text
∀ p, appears p → Captured p →
  (¬¬ Conditioned p → Conditioned p)
```

在该局部前提下，Lean 证明：

```text
(∀ p, appears p → Captured p → ¬ Independent p)
↔
(∀ p, appears p → Captured p → Conditioned p).
```

因此“全体 p 上的 stability”仍是正确的充分条件，但对首问而言比实际需要更强。

更进一步，定理

```text
appearing_witness_bridge_iff_exact_and_captured_stability
```

给出 witness-producing bridge 的精确构造性分解：

```text
(∀ p, appears p → Captured p → Conditioned p)
↔
  ((∀ p, appears p → Captured p → ¬ Independent p) ∧
   (∀ p, appears p → Captured p →
      (¬¬ Conditioned p → Conditioned p))).
```

即：在首问对应的实际显现／capture 域上，真正产生 existential conditioning witness 的 bridge，恰好等于

1. 已经识别出的冲突排除 `Captured → ¬ Independent`；加上
2. 只在同一 appearing+captured 域上需要的 double-negation stability。

这避免把证明论要求无理由施加到不显现、或根本未被 capture 的类型居民。

## 2. decidability 也只需出现在 appearing + captured 域

固定 `p` 上已有：

```text
[Decidable (Conditioned p)]
⊢ (¬ Independent p ↔ Conditioned p)
```

Lean 入口：

```text
not_independent_iff_conditioned_of_decidable
```

本轮进一步把 **decidability 自己的量词范围**也收紧到首问实际需要的位置。新增：

```text
exact_appearing_condition_iff_witness_bridge_of_captured_decidable
```

只假设：

```text
∀ p, appears p → Captured p → Decidable (Conditioned p).
```

在这一前提下，actual-appearance exact exclusion 与 witness-producing bridge 已经等价。证明只是把该局部 decision procedure 转成当前 `p` 的实例，再复用 Lean Core `Decidable.not_not` 与上一节的 captured-domain stability theorem。

因此旧的全域逐点版本

```text
∀ p, Decidable (Conditioned p)
```

仍然正确，但只是更强的方便假设。`exact_appearing_condition_iff_witness_bridge_of_decidable` 现直接作为 `..._of_captured_decidable` 的 corollary 实现。

当前证明论强度应区分为：

```text
exact exclusion on appearing/captured p
  Captured → ¬ Independent
      ↕
  Captured → ¬¬ Conditioned

+ stability only on appearing/captured p
  ¬¬ Conditioned → Conditioned
      ↓
  Captured → Conditioned

+ Decidable (Conditioned)
  only on appearing/captured p
  is a stronger sufficient source of that stability

+ global pointwise stability / decidability
  are still stronger sufficient premises
```

这里仍没有开启全局 `Classical`。更重要的是，**stability 才是精确的 proof-theoretic condition；decidability 无论局部还是全局，都只是更强的充分来源。**

## 3. 工程／证明复用检查

### Lean Core，当前 pinned 版本

项目固定 `leanprover/lean4:v4.24.0`。既有审计已直接实读该 tag 的 `src/Init/Classical.lean`，其中已有 `Decidable.not_not` 所提供的局部双重否定消去。这个结果继续直接复用，不新增通用 DNE，也不引入逻辑公理。

### Mathlib4：regular/stable proposition 已有通用表达

已核对 Mathlib `Mathlib/Order/Heyting/Regular.lean` 中的：

```lean
theorem isRegular_of_decidable (p : Prop) [Decidable p] : IsRegular p :=
  propext <| Decidable.not_not
```

所以 stable/regular proposition 以及 decidability 产生 stability 都是既有通用逻辑基础设施。本项目不定义新的通用 `Stable` API，也不为应用级 theorem 引入 Mathlib。

Mathlib 的 `Mathlib/Data/Fintype/Defs.lean` 还有 `Fintype.decidableExistsFintype`；首问同样没有理由另造有限存在量词 decision framework。

### 相关 formal-philosophy 仓库

本轮在动代码前重新核对：

- `novaspivack/phenomenology-lean`：最新 `main` 仍为 `75230e4eab333ad0fc47573747521ccc1a31a163`（2026-05-20）。围绕 horizon / Marion / saturation / conditioning / stability / decidability / witness 没有定位到可直接复用的同型 API。
- `cbenzmueller/LogiKEy`：最新 `master` 仍为 `b29954b0876d7991baf12f17378f31700f9de759`（2026-09-13）。其 shallow/deep semantic embedding、自动证明与反模型方法继续作为 prior art；当前 theorem 不需要移植其逻辑层。
- AFP AOT、Lowe reconstruction、computational hermeneutics：沿用已固定审计。它们覆盖计算形而上学以及解释—形式化—反模型工作流，不提供本项目 `Conditioned` 接口的现成 Lean bridge。

GitHub 增量代码搜索 `exact_appearing_condition captured decidable conditioned` 没有定位到外部 formal-philosophy 同型实现；命中主要来自本仓。这个负结果只表示本次检索未找到可直接复用 API，不据此声称不存在相关前人工作。

**复用决定：** 新 theorem 只是在本仓已经机核的 captured-domain stability theorem 上薄适配 Lean Core `Decidable.not_not`；不平行重造 regular/stable 通用理论，不引入 Mathlib/LogiKEy/Isabelle 重依赖，也不把量词收紧本身声称为原创逻辑。

外部仓库与 Mathlib 本轮只做 source-level 检索／版本核对，没有重新构建；不能把其自述构建状态冒充本项目实测。

## 4. 同题解释查重：Llorente Cardo 2025 增量

本轮新增核查 Jaime Llorente Cardo, “Encrucijadas de la fenomenología acontecial. Entre el horizonte y la neutralidad,” *Invisto* 2(1), 56–72，2025-06-30，DOI `10.21703/invisto.2025.10`。期刊官方页面为开放访问；本轮直接读取了官方 HTML 的书目信息、摘要和参考文献，未把 PDF 链接冒充成已逐页审读全文。

摘要明确把问题设为：当代“事件现象学”中，包括 Jean-Luc Marion 在内的路线如何尝试超越给予物的“horizonte de constitución”，以及这种超越与“中性／非人格化”之间的张力。它还直接列出 Marion、Romano、Henry 为比较对象，并在参考文献中登记西语 *Siendo dado*、*De surcroît*、*Le visible et le révélé* 与 Murga 2024。

**用途与限制：** 这是一条新的同题 secondary prior art，进一步说明“超越 constitution-horizon”与事件／给予现象的关系已有持续研究；它不提供本仓 `Captured`、`Conditioned`、stability 或 decidability 的形式 bridge，也不替代 Marion 原书目标页。证据等级保持 `SECONDARY-OFFICIAL-ABSTRACT/METADATA-READ`，不是 full-text/page review。

Deery 2025、Murga 2024、Djian 2018、Falabretti 2015/2016、Pommier 2020、Deketelaere 2018、Lind 2026、Ngoma Tassoulou 2023 等既有工作继续限制 historical novelty：related horizon、先行 possibility-condition 与开放／不可穷尽之间的解释空间已有大量前人讨论。本轮 local-decidability theorem 只是证明论量词收紧，不是新的 Marion / Merleau-Ponty reading。

## 5. direct-primary 门重新检查

本轮再次针对 *Being Given* pp. 209–212、225–226，以及早期 *Étant donné* pp. 292–297、314–315 和正式重印路线做合法公开入口检索。

当前仍可独立确认 *Being Given* §21 `Sketch of the Saturated Phenomenon: The Horizon` 为 pp. 199–212，DOI `10.1515/9780804785723-024`，以及 §23 为 pp. 221–233；但本轮依然没有取得目标作者书页的 direct-primary 正文。检索仍主要回到出版社／书目元数据、PhilPapers chapter metadata、Leung 等 secondary exact quotation、既有 BG/ED crosswalk，以及正式重印 provenance。受限 preview、feuilletage 或借阅内容没有绕过，非正式转载也不作为停止门证据。

因此证据等级不升级：

- stability / decidability 都是 FORMAL 前提；
- captured-domain stability / decidability 也是 FORMAL 量词纪律，不是历史谓词；
- `Captured → Conditioned` 仍是 witness-producing MODEL/QUESTION；
- `ExhaustiveCaptureConditions` 仍是更强的 same-horizon pressure test；
- Marion 书本版本的 direct-primary stop gate 继续保持。

## 6. 本轮复用／增量结论

本轮的新形式增量继续遵循“删掉不必要的量词强度”而不是增添哲学自由度：

```text
captured-domain decidability
  ⇒ captured-domain stability
  ⇒ witness-producing bridge from exact exclusion
```

但精确分解仍是：

```text
witness-producing bridge
↔ exact exclusion
  + stability restricted to appearing ∧ captured phenomena.
```

所以 localized decidability 只是比 global decidability 更精确的**充分 corollary**，并没有取代 stability 的必要且充分地位。

这条细化不改变历史结论：`Captured` 仍只是 extensional aspect coverage，不等同 Marion 的 “saturates a horizon”；local stability / decidability 也没有 Merleau-Ponty / Marion 归属。项目自身的构建、根导入覆盖和零公理依赖状态必须以本分支／最终 master 的 GitHub Actions 实测为准。