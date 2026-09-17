# 视域结构与穷尽性的分离

本页给出首个研究问题的形式层。代码中的命题均以 Lean 定义为准；哲学解释与原典证据见 [INTERPRETATION.md](INTERPRETATION.md) 和 [PASSAGE_CARDS.md](PASSAGE_CARDS.md)。

## 1. 关系语言

固定现象类型 P、视域类型 H、侧面类型 D，以及关系：

- F(p)：p 显现；S(p,h)：h 是 p 的相关视域。
- G(p,a)：a 是 p 被编码的侧面；R(h,a)：h 容纳侧面 a。

定义：

$$\begin{aligned}
\mathrm{Structured}(p)&\iff \exists h\,S(p,h),\\
\mathrm{Exhausts}(p,h)&\iff \forall a\,(G(p,a)\to R(h,a)),\\
\mathrm{Captured}(p)&\iff \exists h\,(S(p,h)\land \mathrm{Exhausts}(p,h)),\\
\mathrm{NonExhaustible}(p)&\iff \forall h\,(S(p,h)\to\neg\mathrm{Exhausts}(p,h)).
\end{aligned}$$

可构造性地证明 `NonExhaustible p ↔ ¬ Captured p`。

非空真谓词：

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

## 3. A、B、C 与增强的 C+

$$\begin{aligned}
A&:\quad \forall p\,(F(p)\to\mathrm{Structured}(p)),\\
B&:\quad \forall p\,(F(p)\to\mathrm{Structured}(p)\to\mathrm{Captured}(p)),\\
C&:\quad \exists p\,(F(p)\land\mathrm{NonExhaustible}(p)),\\
C^+&:\quad \exists p\,(F(p)\land\mathrm{Structured}(p)\land\mathrm{NonExhaustible}(p)).
\end{aligned}$$

A、B、C 不可同时满足；相对于这三条公式，任意删除一条都有具体模型。新增结果包括：`C+ → C`、`A ∧ C → C+`、`C+ → ¬B`。因此在文本已经给出“该现象实际有视域”时，一个 C+ 见证本身就足以排除 B。

## 4. “不可穷尽”不等于“无视域”

`splitModel_situatedExcess` 构造 C+；`situated_excess_need_not_be_horizonless` 给出：

$$
\exists M\,[C^+(M)\land\neg\mathrm{HasHorizonlessAppearance}(M)].
$$

所以“不能被任何相关视域穷尽”与“完全没有相关视域”是不同命题。

## 5. 新增：相关视域与条件化视域分层

文本研究显示还必须区分另一组概念：一个视域**与现象相关**，不等于该视域作为先验条件**规定/条件化**现象的可显现性。为避免把 Marion 的 `does not depend on a horizon` 偷换成 `¬ Structured`，新增包装结构 `HorizonConditioning`：

$$
K(p,h)=\text{“h 在当前解释中条件化 p”}.
$$

并定义：

$$\begin{aligned}
\mathrm{Conditioned}(p)&\iff \exists h\,K(p,h),\\
\mathrm{Independent}(p)&\iff \forall h\,\neg K(p,h).
\end{aligned}
$$

`conditions` 与旧的 `situated` 是两个不同关系。可选一致性条件 `ConditioningIsSituated` 只说：若 h 条件化 p，则 h 也必须是 p 的相关视域。

Lean 已证明：

- `horizonIndependent_iff_not_conditioned`：不依赖任何条件化视域等价于不存在条件化视域。
- `horizon_independence_need_not_be_horizonless`：一个显现可以有相关视域，同时不受任何视域条件化。
- `horizon_independence_does_not_imply_nonExhaustible`：视域独立不推出不可穷尽；一个被完整捕获的显现也可在条件化层上独立。
- `nonExhaustible_does_not_imply_horizon_independence`：不可穷尽也不推出视域独立；一个现象可以被标记为受视域条件化，同时仍没有任何相关视域穷尽它。

因此当前模型严格分开三件事：

$$
\boxed{\text{有相关视域}}\qquad
\boxed{\text{被视域条件化}}\qquad
\boxed{\text{被视域穷尽}}.
$$

尤其：

$$
\mathrm{Independent}\not\Rightarrow\mathrm{NonExhaustible},\qquad
\mathrm{NonExhaustible}\not\Rightarrow\mathrm{Independent}.
$$

这不是对 Marion 文本的最终归属，而是为原典中“horizon as condition of possibility”提供不混词的形式接口。

## 6. 逐一覆盖不等于整体覆盖

`IndividuallyCoverable p` 表达：

$$\forall a\,[G(p,a)\to\exists h\,(S(p,h)\land R(h,a))].$$

`Captured p` 要求先选一个 h，再覆盖全部侧面。因此：

$$\forall a\,\exists h\quad\not\Rightarrow\quad\exists h\,\forall a.$$

`individual_cover_does_not_imply_capture` 由有限 `splitModel` 给出反模型。

## 7. 持续扩展仍可不穷尽；理想视域会改变结论

在 `expandingModel` 中，H=D=ℕ，R(h,a) 定义为 a<h。每个侧面最终可被某个更大视域容纳，但没有最终穷尽视域。`completedModel` 再人为加入一个理想全覆盖视域后，不可穷尽性消失。这显示“哪些视域进入量词域”本身是解释前提。

## 8. 证明地图

| 文件 | 具名定理数 | 作用 |
|---|---:|---|
| `Horizon/Basic.lean` | 0 | 基础关系语言 |
| `Horizon/Separation.lean` | 9 | 基本等价、蕴含和 A/B/C 条件冲突 |
| `Horizon/SituatedExcess.lean` | 4 | 非空真 excess 与 closure 的直接冲突 |
| `Horizon/Conditioning.lean` | 3 | 分离“相关视域”与“条件化视域” |
| `Models/Finite.lean` | 11 | 有限见证、最小冲突与首问反例 |
| `Models/Conditioning.lean` | 9 | 条件化/穷尽/无视域的双向分离反模型 |
| `Models/OpenHorizon.lean` | 6 | 开放扩展、逐一覆盖和单调性 |
| `Models/HorizonExtension.lean` | 4 | 域扩展与穷尽性变化 |

共 **46** 个具名引理／定理，全部列入 `Audit.lean`。执行 `python3 scripts/check.py` 进行根模块覆盖、禁用证明占位符、`lake build` 与逐项 `#print axioms` 检查。

形式结论已经把首问中的逻辑偷换拆开；历史解释仍有一个硬门槛：Marion *Being Given* pp. 210–212、225–226 尚未由本项目独立查看原书正文。对应最终结论必须等待该原典门通过，不能用二手引文或本页的模型论事实代替。
