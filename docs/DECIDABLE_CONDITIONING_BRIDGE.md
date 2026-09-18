# Stability / decidable conditioning bridge audit

核查日期：2026-09-18。

本页只审计首个研究问题里一个很窄的证明论对象：在已经证明

```text
Captured → ¬ Independent
↔
Captured → ¬¬ Conditioned
```

之后，什么额外前提才能把双重否定 obligation 提升成真正的 `Conditioned := ∃ h, conditions p h` witness。这里讨论的是证明论强度，不是 Marion 或 Merleau-Ponty 的历史归属。

## 1. 本轮纠正：decidability 不是最弱前提

上一轮已经证明：

```text
[Decidable (Conditioned p)]
⊢ (¬ Independent p ↔ Conditioned p)
```

以及逐点 decidability 下，实际显现域的 exact exclusion 与 witness-producing bridge 等价。这个结论正确，但把“局部可判定性”称为“精确／最小额外前提”仍然过强：证明实际只需要 `Conditioned p` 自身的**双重否定稳定性**。

本轮新增 exact characterization：

```text
((¬ Independent p) ↔ Conditioned p)
↔
(¬¬ Conditioned p → Conditioned p)
```

Lean 入口：

```text
not_independent_iff_conditioned_iff_conditioned_stable
```

因此，对固定 `p` 而言，真正精确的 proof-theoretic premise 是：`Conditioned p` 是 stable proposition。`Decidable (Conditioned p)` 只是产生这种 stability 的一个更强、方便的充分条件。

相应地，本轮又证明：若

```text
∀ p, ¬¬ Conditioned p → Conditioned p
```

则

```text
(∀ p, appears p → Captured p → ¬ Independent p)
↔
(∀ p, appears p → Captured p → Conditioned p).
```

入口：

```text
exact_appearing_condition_iff_witness_bridge_of_stable
```

原有 `exact_appearing_condition_iff_witness_bridge_of_decidable` 现作为该 stability theorem 的 corollary 实现；没有开启全局 `Classical`。

## 2. 工程／证明复用检查

### Lean Core，当前 pinned 版本

项目固定 `leanprover/lean4:v4.24.0`。此前已直接实读该 tag 的 `src/Init/Classical.lean`，其中已有 `Decidable.not_not` 所提供的局部双重否定消去。这个结果继续直接复用，不新增通用 DNE，也不引入逻辑公理。

### Mathlib4：regular/stable proposition 已有通用表达

本轮重新代码搜索定位到当前索引 commit `a218e50f981942cba4fd060faff7cae680805062` 的 `Mathlib/Order/Heyting/Regular.lean`：

```lean
theorem isRegular_of_decidable (p : Prop) [Decidable p] : IsRegular p :=
  propext <| Decidable.not_not
```

也就是说，把命题满足双重否定稳定性视为 Heyting-regular，以及“decidable proposition 是 regular”这一层通用逻辑基础设施已经存在。**本项目不声称发明 stable/regular proposition 概念，也不为这两条应用级 theorem 引入 Mathlib。**

本轮还检索了 Mathlib 的有限存在量词基础设施，`Mathlib/Data/Fintype/Defs.lean` 已有 `Fintype.decidableExistsFintype`。因此也不应为把有限 countermodel 变成一个 decision procedure 而在本仓重造通用有限枚举逻辑；首问当前不需要这条额外工程线。

外部 Mathlib 只做 source-level 检索／实读，没有在本轮重新构建，不能把其构建状态冒充本项目实测。

### 相关 formal-philosophy 仓库

- `novaspivack/phenomenology-lean`：2026-09-18 再次核对最新 `main`，仍为 `75230e4eab333ad0fc47573747521ccc1a31a163`（2026-05-20）。针对 horizon / Marion / saturation / conditioning 及当前 stability/witness 对象，没有定位到可直接复用的同型 API。
- `cbenzmueller/LogiKEy`：2026-09-18 再次核对最新 `master`，仍为 `b29954b0876d7991baf12f17378f31700f9de759`（2026-09-13）。其 shallow/deep semantic embedding、自动证明和反模型方法继续作为方法 prior art；本轮 theorem 不需要导入其模态／嵌入基础设施。
- AFP AOT、Lowe reconstruction、computational hermeneutics：沿用已固定审计。它们覆盖计算形而上学与解释—形式化—反模型工作流，不提供本项目当前 `Conditioned` 命题的现成 Lean bridge。

**复用决定：** 只做现有 Lean Core 等价的应用级薄适配；不平行重造 regular/stable 通用理论，不引入 Mathlib/LogiKEy/Isabelle 重依赖。

## 3. 同题解释查重

本轮用英／法／西语组合再次检索 Marion、Merleau-Ponty、horizon / horizontality / horizonticité / horizonticidad、saturation、condition of possibility、exhaustibility 等。结果继续支持既有历史边界，而没有出现把 proof-theoretic stability 或 decidability 归给这些哲学概念的文献。

- Murga 2024 继续明确主张 Marion 并非简单放弃 horizon，而是需要区分 horizon 的不同用法，尤其是其形而上学式先行限定用法。
- Lind 2026 继续把 Marion 的方向表述为超出主体 anticipation / constitution horizons。
- Deketelaere 2018 把 horizon 作为 a priori condition 与 saturated phenomena 对这种条件的挑战分开。
- 2023 年 Hilaire Ngoma Tassoulou 关于 Husserl / Merleau-Ponty horizon 的文章将 Merleau-Ponty 一侧描述为不能穷尽 horizon 的开放结构；这与本仓直接核查 *Phenomenology of Perception* 得到的开放／未完成方向一致，但只是 secondary corroboration。

因此：`situated` / `conditions` / `Exhausts` 的解释分层已有同题 prior art；本轮的 stability theorem **只是对既有形式接口的证明论精化**，不是新的 Marion / Merleau-Ponty reading。

## 4. 原典访问门重新检查

本轮再次针对 *Being Given* pp. 209–212、225–226，以及早期 *Étant donné* pp. 292–297、314–315 做合法公开入口检索。仍没有在当前环境取得这些目标书页的 direct-primary 正文。

2013 Quadrige *Étant donné* 的正式／书商元数据可继续确认该版为修订增订版，且公开页面提供受限“feuilletage”入口；当前工具环境不能直接展开目标正文。Cairn 的 2013 p. 295 仍只能作为此前登记的 `PRIMARY-DIRECT-INDEXED-BOOK-PAGE / UNMAPPED-TO-BG-TARGET`，不能替代目标页核读。没有绕过访问控制。

所以本轮不提升任何历史归属：

- stability / decidability 都是 FORMAL 前提；
- `Captured → Conditioned` 仍是 MODEL/QUESTION 级 witness-producing bridge；
- `ExhaustiveCaptureConditions` 仍是更强的 same-horizon pressure test；
- Marion 书本版本的 direct-primary stop gate 继续保持。

## 5. 复用／增量结论

当前证明论层级应写成：

```text
exact exclusion
  Captured → ¬ Independent
      ↕
  Captured → ¬¬ Conditioned

+ stability of Conditioned
  (¬¬ Conditioned → Conditioned)
      ↓
  Captured → Conditioned

+ Decidable (Conditioned)
  gives the stability premise via Lean Core Decidable.not_not
```

因此这轮真正修正的是：**局部 decidability 不是最弱额外前提；局部 double-negation stability 才是把 `¬ Independent` 与 existential `Conditioned` witness 等同起来的精确条件。**

外部源码只做 source-level 实读与版本核对；项目自身的构建、根导入覆盖和零公理依赖状态必须以本 PR／最终 master 的实际 GitHub Actions 结果为准。
