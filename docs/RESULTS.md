# 视域结构与穷尽性的分离

本页给出首个研究问题的形式层。代码中的命题均以 Lean 定义为准；哲学解释与原典证据见 [INTERPRETATION.md](INTERPRETATION.md) 和 [PASSAGE_CARDS.md](PASSAGE_CARDS.md)。

## 1. 关系语言

固定现象类型 P、视域类型 H、侧面类型 D，以及关系：

- F(p)：p 显现；S(p,h)：h 是 p 的相关视域。
- G(p,a)：a 是 p 被编码的侧面；R(h,a)：h 容纳 a。

定义：

$$\begin{aligned}
\mathrm{Structured}(p)&\iff \exists h\,S(p,h),\\
\mathrm{Exhausts}(p,h)&\iff \forall a\,(G(p,a)\to R(h,a)),\\
\mathrm{Captured}(p)&\iff \exists h\,(S(p,h)\land \mathrm{Exhausts}(p,h)),\\
\mathrm{NonExhaustible}(p)&\iff \forall h\,(S(p,h)\to\neg\mathrm{Exhausts}(p,h)).
\end{aligned}$$

可构造性地证明 `NonExhaustible p ↔ ¬ Captured p`。

新增非空真谓词：

$$
\mathrm{HasSituatedExcess}(M)\iff
\exists p\,[F(p)\land\mathrm{Structured}(p)\land\mathrm{NonExhaustible}(p)].
$$

它明确要求见证实际有相关视域，因此不能靠“没有任何 situated 关系”使 `NonExhaustible` 空真。

## 2. 首个研究问题的直接形式答案

问题：

> “显现有视域结构”是否纯逻辑地推出“能够被某个相关视域穷尽”？

形式化为：

$$
\forall M\,[\mathrm{UniversalStructure}(M)\to\mathrm{ClosureBridge}(M)]\; ?
$$

Lean 定理 `horizon_structure_does_not_entail_closure` 证明其否定：

$$
\boxed{\neg\forall M\,(A(M)\to B(M))}.
$$

反模型是有限 `splitModel`：一个显现、两个侧面、两个相关视域；每个视域只容纳其中一个侧面。它同时满足 `UniversalStructure` 与 `HasSituatedExcess`，所以显现确实“在视域中”，但不存在一个相关视域穷尽它。

这比仅仅展示 A 与 C 一致更直接：它把首个问题写成本身需要反驳的蕴含式，并提供有限见证。

## 3. A、B、C 与增强的 C+

$$\begin{aligned}
A&:\quad \forall p\,(F(p)\to\mathrm{Structured}(p)),\\
B&:\quad \forall p\,(F(p)\to\mathrm{Structured}(p)\to\mathrm{Captured}(p)),\\
C&:\quad \exists p\,(F(p)\land\mathrm{NonExhaustible}(p)),\\
C^+&:\quad \exists p\,(F(p)\land\mathrm{Structured}(p)\land\mathrm{NonExhaustible}(p)).
\end{aligned}$$

旧结果：A、B、C 不可同时满足；相对于这三条公式，任意删除一条都有具体模型。

新增结果：

- `hasSituatedExcess_implies_excess`：$C^+\Rightarrow C$。
- `structure_and_excess_implies_situatedExcess`：$A\land C\Rightarrow C^+$。
- `situatedExcess_refutes_closureBridge`：$C^+\Rightarrow\neg B$。
- `situatedExcess_refutes_universalCapture`：$C^+$ 排除所有显现都被捕获。

因此，在原典已经给出“该现象实际有视域”时，不必再通过 A 排除 horizonless vacuity；单个 $C^+$ 见证就足以与 B 冲突。

## 4. “不可穷尽”不等于“无视域”

`splitModel_situatedExcess` 构造 $C^+$；而 `structure_excludes_horizonless` 与 `splitModel_structure` 又给出该模型不存在 horizonless appearance。

`Situated_excess_need_not_be_horizonless` 于是给出：

$$
\exists M\,[C^+(M)\land\neg\mathrm{HasHorizonlessAppearance}(M)].
$$

这条分离对文本解释很重要：“不能被任何相关视域穷尽”与“完全没有相关视域”是不同命题。

## 5. 逐一覆盖不等于整体覆盖

`IndividuallyCoverable p` 表达：

$$\forall a\,[G(p,a)\to\exists h\,(S(p,h)\land R(h,a))].$$

`Captured p` 要求先选一个 h，再覆盖全部侧面。因此：

$$\forall a\,\exists h\quad\not\Rightarrow\quad\exists h\,\forall a.$$

`individual_cover_does_not_imply_capture` 由有限 `splitModel` 给出反模型。

## 6. 持续扩展仍可不穷尽

在 `expandingModel` 中，P 为单元素类型，H=D=ℕ，F、S、G 全成立，R(h,a) 定义为 a<h。

每个侧面 a 被 h=a+1 容纳；每个 h 又遗漏 a=h。视域可单调扩展，却没有最终穷尽视域。

`open_horizon_compatibility` 证明 A、C 和逐一可覆盖同时成立；`expandingModel_monotone` 证明单调性。

## 7. 理想视域的加入

`completedModel` 把视域类型换成 `Option Nat`。`some n` 保留原来的有限视域；`none` 是人为加入的理想全覆盖视域。

`finite_horizon_agrees` 证明旧视域关系不变，`completedModel_capture` 证明新增理想视域穷尽显现，所以：

$$C(\mathrm{expandingModel})\land\neg C(\mathrm{completedModel}).$$

这显示“哪些视域进入量词域”本身是解释前提；代码并未证明理想视域在真实经验中可达。

## 8. 证明地图

| 文件 | 具名定理数 | 作用 |
|---|---:|---|
| `Horizon/Basic.lean` | 0 | 基础关系语言 |
| `Horizon/Separation.lean` | 9 | 基本等价、蕴含和 A/B/C 条件冲突 |
| `Horizon/SituatedExcess.lean` | 4 | 非空真 excess 与 closure 的直接冲突 |
| `Models/Finite.lean` | 11 | 有限见证、最小冲突与首问反例 |
| `Models/OpenHorizon.lean` | 6 | 开放扩展、逐一覆盖和单调性 |
| `Models/HorizonExtension.lean` | 4 | 域扩展与穷尽性变化 |

共 **34** 个具名引理／定理，全部列入 `Audit.lean`。执行 `python3 scripts/check.py` 进行根模块覆盖、禁用占位符、`lake build` 与逐项 `#print axioms` 检查。

这里的形式结论是模型论事实。原典研究目前已经直接核查 Merleau-Ponty 的关键开放视域段落；Marion 的关键页仍待独立原书复核，所以不能把 34 个零公理依赖证明误报成“完整哲学命题已经结束”。
