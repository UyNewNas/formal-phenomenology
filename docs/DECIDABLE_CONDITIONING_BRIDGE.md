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

本轮继续检查量词范围。首个研究问题并不需要对所有 `Phenomenon` 类型居民都假设 stability；真正会调用双重否定消去的只有**实际显现且已经 `Captured` 的 p**。因此新增：

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

更进一步，新增定理

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

## 2. decidability 仍只是更强的充分来源

已有结果继续保持：

```text
[Decidable (Conditioned p)]
⊢ (¬ Independent p ↔ Conditioned p)
```

Lean 入口：

```text
not_independent_iff_conditioned_of_decidable
```

逐点 decidability 下，`exact_appearing_condition_iff_witness_bridge_of_decidable` 继续成立。它复用 Lean Core `Decidable.not_not`，没有开启全局 `Classical`。

因此当前证明论强度应区分为：

```text
exact exclusion on appearing/captured p
  Captured → ¬ Independent
      ↕
  Captured → ¬¬ Conditioned

+ stability only on appearing/captured p
  ¬¬ Conditioned → Conditioned
      ↓
  Captured → Conditioned

+ global pointwise stability
  is a stronger sufficient premise

+ Decidable (Conditioned)
  gives stability via Lean Core Decidable.not_not
```

## 3. 工程／证明复用检查

### Lean Core，当前 pinned 版本

项目固定 `leanprover/lean4:v4.24.0`。既有审计已直接实读该 tag 的 `src/Init/Classical.lean`，其中已有 `Decidable.not_not` 所提供的局部双重否定消去。这个结果继续直接复用，不新增通用 DNE，也不引入逻辑公理。

### Mathlib4：regular/stable proposition 已有通用表达

已核对 Mathlib `Mathlib/Order/Heyting/Regular.lean` 中的：

```lean
theorem isRegular_of_decidable (p : Prop) [Decidable p] : IsRegular p :=
  propext <| Decidable.not_not
```

所以 stable/regular proposition 以及 decidability 产生 stability 都是既有通用逻辑基础设施。本项目不定义新的通用 `Stable` API，也不为两个应用级 theorem 引入 Mathlib。

Mathlib 的 `Mathlib/Data/Fintype/Defs.lean` 还有 `Fintype.decidableExistsFintype`；首问同样没有理由另造有限存在量词 decision framework。

### 相关 formal-philosophy 仓库

本轮在动代码前重新核对：

- `novaspivack/phenomenology-lean`：最新 `main` 仍为 `75230e4eab333ad0fc47573747521ccc1a31a163`（2026-05-20）。围绕 horizon / Marion / saturation / conditioning / stability / witness 没有定位到可直接复用的同型 API。
- `cbenzmueller/LogiKEy`：最新 `master` 仍为 `b29954b0876d7991baf12f17378f31700f9de759`（2026-09-13）。其 shallow/deep semantic embedding、自动证明与反模型方法继续作为 prior art；当前两条命题不需要移植其逻辑层。
- AFP AOT、Lowe reconstruction、computational hermeneutics：沿用已固定审计。它们覆盖计算形而上学以及解释—形式化—反模型工作流，不提供本项目 `Conditioned` 接口的现成 Lean bridge。

GitHub 增量代码搜索 `not_not stability conditioned captured` 与 `local stability witness bridge appearing captured` 没有定位到外部 formal-philosophy 同型实现；结果主要是本仓和无关代码。这个负结果只表示本次检索未找到可直接复用 API，不据此声称不存在相关前人工作。

**复用决定：** 只在本仓既有接口上做 Lean Core 级薄适配；不平行重造 regular/stable 通用理论，不引入 Mathlib/LogiKEy/Isabelle 重依赖，也不把量词收紧本身声称为原创逻辑。

外部仓库与 Mathlib 本轮只做 source-level 检索／版本核对，没有重新构建；不能把其自述构建状态冒充本项目实测。

## 4. 同题解释查重：新增 Deery 2025

本轮新增核查 James Deery, “The Imaginary Texture of the Real: The Role of the Imagination in Merleau-Ponty’s Phenomenology of Perception,” *European Journal of Philosophy* 33(4), 1500–1517，first published 2025-06-30，DOI `10.1111/ejop.70001`。Wiley Version of Record 为 Open Access，HTML 全文已直接读取。

Deery 在解释 Merleau-Ponty 的 “horizon of sense” 时明确强调：事物由此向进一步探索、不同观看方式和更确定化开放；这个 horizon 本身是 indeterminate，并不预先规定事物将如何感性显现，而只是按 style 提示它可能如何出现。

用途：这是一条**同题 secondary corroboration / prior art**。它进一步限制本项目的新颖性表述：把 Merleau-Ponty 的 horizon 理解成开放的可能性场、而不是已经完成的 exhaustive closure，并不是本项目新发现。它与本仓已经直接核查的 *Phenomenology of Perception* pp. 79–82、384–386 方向一致，但不能替代 primary text，也没有给出 `Captured` / `Conditioned` 的任何形式 bridge。

Murga 2024、Djian 2018、Falabretti 2015/2016、Pommier 2020、Deketelaere 2018、Lind 2026、Ngoma Tassoulou 2023 等既有工作继续限制 historical novelty：related horizon、先行 possibility-condition 与开放／不可穷尽之间的解释空间已有大量前人讨论。本轮 local-stability theorem 只是证明论量词收紧，不是新的 Marion / Merleau-Ponty reading。

## 5. direct-primary 门重新检查

本轮再次针对 *Being Given* pp. 209–212、225–226，以及早期 *Étant donné* pp. 292–297、314–315 和正式重印路线做合法公开入口检索。

结果仍然只是：出版社／书目元数据、Leung 等 secondary exact quotation、既有 BG/ED crosswalk，以及 Moran/Routledge 的正式重印 provenance；没有取得目标作者书页的 direct-primary 正文。受限 preview、feuilletage 或借阅内容没有绕过。

因此证据等级不升级：

- stability / decidability 都是 FORMAL 前提；
- local captured-domain stability 也是 FORMAL 量词纪律，不是历史谓词；
- `Captured → Conditioned` 仍是 witness-producing MODEL/QUESTION；
- `ExhaustiveCaptureConditions` 仍是更强的 same-horizon pressure test；
- Marion 书本版本的 direct-primary stop gate 继续保持。

## 6. 本轮复用／增量结论

本轮真正的新形式增量不是再增加一条更强假设，而是**删掉不必要的量词强度**：

```text
witness-producing bridge
↔ exact exclusion
  + stability restricted to appearing ∧ captured phenomena.
```

此前的全域 stability theorem 与 decidability theorem 都继续有效，但现在被更准确地定位为更强的 sufficient corollaries。

这条分解不改变历史结论：`Captured` 仍只是 extensional aspect coverage，不等同 Marion 的 “saturates a horizon”；local stability 也没有 Merleau-Ponty / Marion 归属。项目自身的构建、根导入覆盖和零公理依赖状态必须以本分支／最终 master 的 GitHub Actions 实测为准。