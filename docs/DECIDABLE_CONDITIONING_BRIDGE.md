# Decidable conditioning bridge audit

核查日期：2026-09-17。

本页只审计首个研究问题里一个很窄的新增对象：在已经证明

```text
Captured → ¬ Independent
↔
Captured → ¬¬ Conditioned
```

之后，什么额外前提足以把双重否定 obligation 提升成真正的 `Conditioned := ∃ h, conditions p h` witness。这里讨论的是证明论强度，不是 Marion 或 Merleau-Ponty 的历史归属。

## 1. 拟新增声明与量词

本轮新增两条 Lean theorem：

```text
[Decidable (Conditioned p)]
⊢ (¬ Independent p ↔ Conditioned p)
```

以及

```text
(∀ p, Decidable (Conditioned p))
⊢
  [(∀ p, appears p → Captured p → ¬ Independent p)
   ↔
   (∀ p, appears p → Captured p → Conditioned p)].
```

它们不增加新 relation，不改变 `Captured`、`Independent`、`Conditioned` 的既有语义；唯一新增前提是**局部／逐点可判定性**。

## 2. 工程／证明复用检查

### Lean Core，当前 pinned 版本

项目固定 `leanprover/lean4:v4.24.0`。本轮直接实读该 tag 的 `src/Init/Classical.lean`。其中已有：

```lean
@[simp] theorem not_not : ¬¬a ↔ a := Decidable.not_not
```

文件注释明确指出：双重否定消去的左到右方向在经典逻辑中成立、在构造性逻辑中一般不成立。这里真正可直接复用的是更底层、带 `[Decidable a]` 前提的 `Decidable.not_not`。

**决定：直接复用 Lean Core `Decidable.not_not`。** 不自己证明通用 DNE，不开启全局 `Classical`，不新增逻辑公理。

### Mathlib4

本轮代码搜索 `Decidable.not_not`，定位到当前索引 commit
`a218e50f981942cba4fd060faff7cae680805062` 的
`Mathlib/Order/Heyting/Regular.lean`：

```lean
theorem isRegular_of_decidable (p : Prop) [Decidable p] : IsRegular p :=
  propext <| Decidable.not_not
```

这说明“可判定命题在 intuitionistic/Heyting 意义下是 regular/stable”已有通用库表达。该模块比本轮需要的命题更抽象；本项目当前不依赖 Mathlib，为两行 Lean Core 逻辑引入整个依赖没有收益。

**决定：方法／通用结果归属 Mathlib prior art，但实现直接薄复用 Lean Core。** 本轮未重新构建 Mathlib；这里只实读搜索命中的源码，不冒充外部构建验证。

### 相关 formal-philosophy 仓库

- `novaspivack/phenomenology-lean`：本轮再次核对最新 `main`，仍为 `75230e4eab333ad0fc47573747521ccc1a31a163`。既有审计中的 horizon / Marion / saturation / conditioning 搜索未发现同型 API；本轮新增的 decidability collapse 是普通命题逻辑，不需要移植其 manifestation/meta-theory 基础设施。
- `cbenzmueller/LogiKEy`：本轮再次核对最新 `master`，仍为 `b29954b0876d7991baf12f17378f31700f9de759`。其 shallow/deep semantic embedding、自动证明与反模型方法仍是方法 prior art，但本轮没有模态／嵌入需求。
- AFP AOT、Lowe reconstruction、computational hermeneutics：沿用既有固定审计；本轮没有新增对象要求引入其逻辑层。

**决定：不平行造通用逻辑 API；不引入 Lean/Isabelle 重依赖。**

## 3. 同题解释查重

本轮新增核查 Andreas Gonçalves Lind, “Givenness as the Opening of All Phenomenological Possibility: Marion’s Overcoming of Henry Through Heidegger,” *Philosophies* 11(4), 145，2026-08-14，DOI `10.3390/philosophies11040145`。官方全文把 Marion 的 givenness/saturated phenomenality 解释为超出主体的 anticipation / constitution horizons，并反复以“不受 subject-imposed conditions 限定”描述其方向。

这与仓库已经登记的 Murga、Djian、Pommier、Deketelaere 一起，进一步限制项目的新颖性表述：**horizon-as-condition / anticipation 与 horizon 的一般相关性之间的区分不是本项目新发现。**

但 Lind 并没有提出本项目形式语言中的

```text
Captured p → Conditioned p
```

或

```text
Decidable (Conditioned p)
```

这样的 extensional / proof-theoretic bridge。因此本轮 Lean 新增只应描述为对既有接口的证明论细化，不是复现 Lind 的一条定理，也不是新的 Marion 解释。

## 4. 原典访问门重新检查

本轮继续针对 *Being Given* pp. 209–212、225–226 及早期 *Étant donné* pp. 292–297、314–315 做合法公开入口检索。仍只得到出版社元数据、二手带页码引文与已有 crosswalk；没有在当前环境取得目标书页的 direct-primary 正文。受限借阅／受限 PDF 不绕过访问控制。

因此：

- `Decidable (Conditioned p)` **没有历史归属**，只是显式的形式前提；
- `Captured → Conditioned` 仍是 MODEL/QUESTION 级 witness-producing bridge；
- `ExhaustiveCaptureConditions` 仍是更强的 same-horizon pressure test；
- 本轮结果不能关闭 Marion 书本版本的 direct-primary 停止门。

## 5. 复用／增量结论

本轮真正的形式增量只有一个边界澄清：

```text
constructive exact exclusion
    = Captured → ¬¬ Conditioned

+ pointwise Decidable (Conditioned)
    ⇔ Captured → Conditioned.
```

所以要从“排除 independent”升级为“给出 conditioning witness”，不必含混地说“需要经典逻辑”；更精确的充分前提是目标 existential proposition 的局部可判定性。该结论直接复用 Lean Core `Decidable.not_not`，不构成原创逻辑结果；它的价值在于把首问所需的额外证明论前提显式化。

外部源码只做了 source-level 实读与版本核对；项目自身的构建与零公理依赖状态必须以本分支／最终 master 的实际 GitHub Actions 结果为准。
