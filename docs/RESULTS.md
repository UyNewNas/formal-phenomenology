# 视域结构与穷尽性的分离

本页给出首个研究问题的形式层。代码中的命题均以 Lean 定义为准；哲学解释与原典证据见 [INTERPRETATION.md](INTERPRETATION.md) 和 [PASSAGE_CARDS.md](PASSAGE_CARDS.md)，外部工作与复用判断见 [PRIOR_ART.md](PRIOR_ART.md)。

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

## 5. 相关视域、条件化视域与穷尽视域

`HorizonConditioning` 增加关系

$$
K(p,h)=\text{“h 在当前解释中条件化 p”},
$$

并定义：

$$\begin{aligned}
\mathrm{Conditioned}(p)&\iff \exists h\,K(p,h),\\
\mathrm{Independent}(p)&\iff \forall h\,\neg K(p,h).
\end{aligned}$$

`conditions` 与旧的 `situated` 是两个不同关系；可选一致性条件 `ConditioningIsSituated` 只说条件化视域必须也是相关视域。

Lean 已证明：

- `horizonIndependent_iff_not_conditioned`；
- `horizon_independence_need_not_be_horizonless`；
- `horizon_independence_does_not_imply_nonExhaustible`；
- `nonExhaustible_does_not_imply_horizon_independence`。

因此当前模型严格分开：

$$
\boxed{\text{有相关视域}}\qquad
\boxed{\text{被视域条件化}}\qquad
\boxed{\text{被视域穷尽}}.
$$

尤其在没有额外 bridge 时：

$$
\mathrm{Independent}\not\Rightarrow\mathrm{NonExhaustible},\qquad
\mathrm{NonExhaustible}\not\Rightarrow\mathrm{Independent}.
$$

## 6. 精确定位缺失前提：`ExhaustiveCaptureConditions`

本轮加入一个显式压力测试 bridge：

$$
E(M):\quad
\forall p,h\,[S(p,h)\land \mathrm{Exhausts}(p,h)\to K(p,h)].
$$

代码名为 `HorizonConditioning.ExhaustiveCaptureConditions`。它说：如果一个**相关视域**已经穷尽现象的全部已编码侧面，那么该视域就被计作对该现象的条件化关系。

在这个额外前提下，Lean 证明：

$$
\boxed{E(M)\land \mathrm{Independent}(p)
\to \mathrm{NonExhaustible}(p)}.
$$

入口是 `exhaustiveCaptureConditions_independent_implies_nonExhaustible`。证明只需反证：若存在 situated 且 exhaustive 的 h，E 会推出 K(p,h)，与 `Independent p` 矛盾。

相应地，`exhaustiveCaptureConditions_structuredIndependent_implies_situatedExcess` 给出非空真版本：若某个显现实际出现、有相关视域且 independent，那么在 E 下它产生 `HasSituatedExcess`。

这确实是**额外前提**而不是定义展开。原有 `closedIndependentConditioning` 同时有 `Independent` 与完整 capture；新增定理 `closedIndependentConditioning_not_exhaustiveCaptureConditions` 证明这个反模型恰好违反 E。因此现在有完整的双侧审计：

$$
\begin{aligned}
&\text{无 E：}\quad \mathrm{Independent}\not\Rightarrow\mathrm{NonExhaustible},\\
&\text{有 E：}\quad \mathrm{Independent}\Rightarrow\mathrm{NonExhaustible}.
\end{aligned}
$$

E 目前不归给 Marion 或 Merleau-Ponty；它只是把“如果要从不受视域条件化推出不可被视域穷尽，至少需要什么类型的 bridge”变成可验证命题。

## 7. 三条形式轴可以在同一显现上联合一致

中性 profile `HasSituatedIndependentExcess(M)` 表示存在同一个显现 p，使：

$$
F(p)\land \mathrm{Structured}(p)\land
\mathrm{Independent}(p)\land \mathrm{NonExhaustible}(p).
$$

`splitIndependentConditioning_hasSituatedIndependentExcess` 在有限 `splitModel` 上给出见证；`related_independent_nonExhaustible_are_jointly_consistent` 进一步证明：

$$
\boxed{
\exists M\,[\mathrm{ConditioningIsSituated}(M)\land
\mathrm{HasSituatedIndependentExcess}(M)]
}.
$$

所以即使要求所有“条件化视域”都是相关视域，也可以同时出现：**有相关视域、没有视域作为条件化关系、没有任何相关视域穷尽该显现**。

这个结果只是一致性见证。`conditions` 仍是人为给出的独立关系；它不证明 Marion 的概念必然满足这组三条件，也不把 conjunction 定义成 saturated phenomenon。已有 Marion 解释文献已经讨论“保留 horizon 但拒绝其先行限定作用”的读法，因此这里的工作是将一个已有解释空间显式模型化，而不是宣称发现新的历史命题。

两个投影定理记录该 profile 与旧接口的关系：

- `situatedIndependentExcess_implies_structuredIndependentAppearance`；
- `situatedIndependentExcess_implies_situatedExcess`。

## 8. 逐一覆盖不等于整体覆盖

`IndividuallyCoverable p` 表达：

$$\forall a\,[G(p,a)\to\exists h\,(S(p,h)\land R(h,a))].$$

`Captured p` 要求先选一个 h，再覆盖全部侧面。因此：

$$\forall a\,\exists h\quad\not\Rightarrow\quad\exists h\,\forall a.$$

`individual_cover_does_not_imply_capture` 由有限 `splitModel` 给出反模型。

## 9. 持续扩展仍可不穷尽；理想视域会改变结论

在 `expandingModel` 中，H=D=ℕ，R(h,a) 定义为 a<h。每个侧面最终可被某个更大视域容纳，但没有最终穷尽视域。`completedModel` 再人为加入一个理想全覆盖视域后，不可穷尽性消失。这显示“哪些视域进入量词域”本身是解释前提。

## 10. 证明地图

| 文件 | 具名定理数 | 作用 |
|---|---:|---|
| `Horizon/Basic.lean` | 0 | 基础关系语言 |
| `Horizon/Separation.lean` | 9 | 基本等价、蕴含和 A/B/C 条件冲突 |
| `Horizon/SituatedExcess.lean` | 4 | 非空真 excess 与 closure 的直接冲突 |
| `Horizon/Conditioning.lean` | 7 | 分离“相关/条件化”、显式 capture→conditioning bridge 及 profile 投影 |
| `Models/Finite.lean` | 11 | 有限见证、最小冲突与首问反例 |
| `Models/Conditioning.lean` | 12 | 条件化/穷尽/无视域分离、联合见证及 bridge 反模型审计 |
| `Models/OpenHorizon.lean` | 6 | 开放扩展、逐一覆盖和单调性 |
| `Models/HorizonExtension.lean` | 4 | 域扩展与穷尽性变化 |

共 **53** 个具名引理／定理，全部列入 `Audit.lean`。执行 `python3 scripts/check.py` 进行根模块覆盖、禁用证明占位符、`lake build` 与逐项 `#print axioms` 检查。

形式结论现在不仅说明“有视域不推出可穷尽”，还精确定位了 conditioning 与 exhaustive capture 之间何种附加 bridge 足以恢复一条原本无效的蕴含。历史解释仍有硬门槛：Marion *Being Given* pp. 210–212、225–226 尚未由本项目独立查看原书正文。对应最终结论必须等待该原典门通过，不能用二手引文、外部解释或本页模型论事实代替。
