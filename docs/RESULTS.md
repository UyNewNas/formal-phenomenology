# 视域结构与穷尽性的分离

本页给出首个研究问题的**形式层**。哲学解释与原典证据见 [INTERPRETATION.md](INTERPRETATION.md)、[SOURCES.md](SOURCES.md) 与 [MARION_1996_PRIMARY.md](MARION_1996_PRIMARY.md)；外部工作与复用判断见 [PRIOR_ART.md](PRIOR_ART.md)。

## 1. 基础关系语言

固定现象类型 P、视域类型 H、侧面类型 D，以及关系：F(p) 表示 p 显现；S(p,h) 表示 h 是 p 的相关视域；G(p,a) 表示 a 是 p 被编码的侧面；R(h,a) 表示 h 容纳 a。

$$
\begin{aligned}
\mathrm{Structured}(p)&\iff \exists h\,S(p,h),\\
\mathrm{Exhausts}(p,h)&\iff \forall a\,(G(p,a)\to R(h,a)),\\
\mathrm{Captured}(p)&\iff \exists h\,(S(p,h)\land \mathrm{Exhausts}(p,h)),\\
\mathrm{NonExhaustible}(p)&\iff \forall h\,(S(p,h)\to\neg\mathrm{Exhausts}(p,h)).
\end{aligned}
$$

Lean 构造性证明 `NonExhaustible p ↔ ¬ Captured p`。

`HasSituatedExcess(M)` 进一步要求一个实际显现既 `Structured` 又 `NonExhaustible`，排除没有任何 related horizon 所造成的空真。

## 2. 首个问题的直接形式答案

问题：

> “显现有视域结构”是否纯逻辑地推出“能够被某个相关视域穷尽”？

对应：

$$
\forall M\,[\mathrm{UniversalStructure}(M)\to\mathrm{ClosureBridge}(M)]\; ?
$$

`horizon_structure_does_not_entail_closure` 证明其否定。有限 `splitModel` 有一个显现、两个侧面、两个相关视域，每个视域只容纳其中一个侧面；所以该显现确实有 horizon，却没有一个 related horizon 穷尽它。

因此：

$$
\boxed{\mathrm{UniversalStructure}\not\Rightarrow\mathrm{ClosureBridge}}.
$$

这已经回答首问的纯逻辑部分；任何正向推理都必须增加独立 closure 前提。

## 3. A、B、C 与 C+

$$
\begin{aligned}
A&:\forall p(F(p)\to\mathrm{Structured}(p)),\\
B&:\forall p(F(p)\to\mathrm{Structured}(p)\to\mathrm{Captured}(p)),\\
C&:\exists p(F(p)\land\mathrm{NonExhaustible}(p)),\\
C^+&:\exists p(F(p)\land\mathrm{Structured}(p)\land\mathrm{NonExhaustible}(p)).
\end{aligned}
$$

A、B、C 联合不可满足；相对于这三条公式，任意删除一条都有具体模型。另有 `C+ → C`、`A ∧ C → C+`、`C+ → ¬B`。

## 4. 不可穷尽不等于没有 horizon

`splitModel_situatedExcess` 构造 C+；`situated_excess_need_not_be_horizonless` 给出一个模型同时满足 C+ 且没有 horizonless appearance。因此：

$$
\mathrm{NonExhaustible}\not\equiv\mathrm{Horizonless}.
$$

## 5. related / conditioned / exhaustive 三轴

`HorizonConditioning` 增加

$$
K(p,h)=\text{“h 在当前模型中条件化 p”}.
$$

并定义 `Conditioned(p) := ∃h K(p,h)`，`Independent(p) := ∀h ¬K(p,h)`。`conditions` 与旧 `situated` 不定义性等同；可选的 `ConditioningIsSituated` 只要求条件化视域也是 related horizon。

Lean 已证明：

- `horizonIndependent_iff_not_conditioned`；
- `horizon_independence_need_not_be_horizonless`；
- `horizon_independence_does_not_imply_nonExhaustible`；
- `nonExhaustible_does_not_imply_horizon_independence`。

所以：

$$
\boxed{\text{related horizon}}\quad
\boxed{\text{conditioning horizon}}\quad
\boxed{\text{exhaustive horizon}}
$$

必须分开。

## 6. 显式 bridge：`ExhaustiveCaptureConditions`

压力测试前提：

$$
E(M):\forall p,h\,[S(p,h)\land\mathrm{Exhausts}(p,h)\to K(p,h)].
$$

在 E 下，Lean 证明：

$$
E(M)\land\mathrm{Independent}(p)\to\mathrm{NonExhaustible}(p).
$$

入口 `exhaustiveCaptureConditions_independent_implies_nonExhaustible`。`closedIndependentConditioning` 则同时有 `Independent` 与 `Captured`，并由 `closedIndependentConditioning_not_exhaustiveCaptureConditions` 证明它恰好违反 E。因此 E 是真正的额外 bridge，不是定义展开。

E 仍是 MODEL/QUESTION，不归给 Marion 或 Merleau-Ponty。

## 7. 三条轴的联合一致性

`HasSituatedIndependentExcess(M)` 表示存在同一显现满足：appears、Structured、Independent、NonExhaustible。

`related_independent_nonExhaustible_are_jointly_consistent` 给出一个满足 `ConditioningIsSituated` 的有限模型，因此 related + independent + non-exhaustible 在当前关系语言中可以联合一致。

这个定理只说明模型论一致性。`conditions` 是模型关系，不能由此推出历史概念必然独立。

## 8. Marion 1996 primary text 对现有形式结果的约束

本轮直接从 PDCnet 出版者索引读取 Jean-Luc Marion 1996 “The Saturated Phenomenon” 的 p. 117–119 作者正文。它**没有改变上述 Lean 定理真假**，但显著改变了解释边界：

1. p. 117 明确说一般取消 horizon 会阻止 manifestation；问题是摆脱 horizon 的 `delimiting anteriority`。所以 `Horizonless` 不是合适的默认 Marion 编码。
2. p. 118 在同一讨论中允许一个 horizon 的 saturation、多个 horizons、超过 horizon，并称 saturated phenomenon 不依赖 horizon 这一 condition of possibility。故 `Independent` 不能按词义直接定义成 `NonExhaustible`；已有 Lean 反模型与作者文本方向一致。
3. p. 119 又引入 intuitive excess 与 constitution reversal，所以完整 `Saturated` 远强于本项目任何单一 coverage/conditioning 谓词。

特别地，Marion 文本中的 “saturates a horizon” **没有**被本项目定义为 `Captured`；`Captured` 是对 aspect coverage 的 extensional surrogate。正因此，当前只保留一个形式问题：若有人额外接受 `ExhaustiveCaptureConditions`，可以恢复 `Independent → NonExhaustible`；但文本是否支持这个 bridge 必须另证。

## 9. 量词次序与开放视域

`IndividuallyCoverable p` 表示每个 aspect 可以各自找到 related horizon 覆盖；`Captured p` 则要求同一个 horizon 覆盖全部 aspect。`individual_cover_does_not_imply_capture` 用 `splitModel` 证明：

$$
\forall a\,\exists h\not\Rightarrow\exists h\,\forall a.
$$

`expandingModel` 进一步显示：每个 aspect 最终都可在更大的自然数 horizon 中出现，但不存在最终 exhaustive horizon。`completedModel` 人为加入一个理想全覆盖 horizon 后，non-exhaustibility 消失，说明 horizon 的量词域本身就是解释前提。

## 10. 证明地图

| 文件 | 具名定理数 | 作用 |
|---|---:|---|
| `Horizon/Basic.lean` | 0 | 基础关系语言 |
| `Horizon/Separation.lean` | 9 | 基本等价、蕴含和 A/B/C 条件冲突 |
| `Horizon/SituatedExcess.lean` | 4 | 非空真 excess 与 closure 的直接冲突 |
| `Horizon/Conditioning.lean` | 7 | related/conditioning 分离、capture→conditioning 压力测试 bridge、profile 投影 |
| `Models/Finite.lean` | 11 | 有限见证、最小冲突与首问反例 |
| `Models/Conditioning.lean` | 12 | conditioning / exhaustion / horizonless 分离及 bridge 反模型 |
| `Models/OpenHorizon.lean` | 6 | 开放扩展、逐一覆盖和单调性 |
| `Models/HorizonExtension.lean` | 4 | horizon 域扩展与穷尽性的变化 |

共 **53** 个具名引理／定理，全部列入 `Audit.lean`。当前 master 已验证的基线为 `lake build` + `scripts/check.py` + 全部 `#print axioms` 无公理依赖；任何后续 Lean 改动都必须在其自己的提交重新获得验证，不能继承旧 CI。

本轮只新增 primary-text 证据与解释约束，没有把未验证的派生 theorem 计入本证明地图。*Being Given* 2002 pp. 209–212、225–226 仍待合法直接核对，因此历史解释停止门尚未关闭。
