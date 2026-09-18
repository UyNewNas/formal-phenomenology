# 视域结构与穷尽性的分离

本页给出首个研究问题的**形式层**。哲学解释与原典证据见 [INTERPRETATION.md](INTERPRETATION.md)、[SOURCES.md](SOURCES.md) 与 [MARION_1996_PRIMARY.md](MARION_1996_PRIMARY.md)；外部工作与复用判断见 [PRIOR_ART.md](PRIOR_ART.md)。构造性 bridge 细化见 [CONSTRUCTIVE_BRIDGE_HIERARCHY.md](CONSTRUCTIVE_BRIDGE_HIERARCHY.md)，stability / decidability 审计见 [DECIDABLE_CONDITIONING_BRIDGE.md](DECIDABLE_CONDITIONING_BRIDGE.md)。

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

## 6. “Independent → NonExhaustible”的确切前提：点态、显现域与冲突见证

首先不增加任何新的哲学 primitive，只利用已经证明的

$$
\mathrm{NonExhaustible}(p)\iff\neg\mathrm{Captured}(p)
$$

即可把目标蕴含规范化。定理 `independent_implies_nonExhaustible_iff_capture_refutes_independence` 证明：

$$
\boxed{
\bigl(\mathrm{Independent}(p)\to\mathrm{NonExhaustible}(p)\bigr)
\iff
\bigl(\mathrm{Captured}(p)\to\neg\mathrm{Independent}(p)\bigr)
}.
$$

因此，对**固定的同一个现象 p**，要恢复 `Independent p → NonExhaustible p`，逻辑上需要且只需要排除 `Captured p ∧ Independent p`。这不是新的 Marion 前提，而只是对目标蕴含的精确逻辑正规化。

随后把同一个正规化提升到首问真正使用的“实际显现”量词域，而不偷偷加强到现象类型中的所有对象。定理 `appearing_independence_implies_nonExhaustible_iff_capture_refutes_independence` 证明：

$$
\boxed{
\begin{aligned}
&\bigl[\forall p\,(F(p)\to\mathrm{Independent}(p)\to\mathrm{NonExhaustible}(p))\bigr]\\
&\qquad\iff
\bigl[\forall p\,(F(p)\to\mathrm{Captured}(p)\to\neg\mathrm{Independent}(p))\bigr].
\end{aligned}}
$$

也就是说，若问题只谈**会显现的现象**，确切条件也只需在该显现域内排除 `Captured ∧ Independent`；不需要对从不 `appears` 的类型居民施加无关限制。该 theorem 仍只是 FORMAL 量词正规化，不增加历史归属。

同一个条件还有冲突见证正规形。定理 `appearing_independence_implies_nonExhaustible_iff_no_captured_independent_witness` 证明：

$$
\boxed{
\begin{aligned}
&\bigl[\forall p\,(F(p)\to\mathrm{Independent}(p)\to\mathrm{NonExhaustible}(p))\bigr]\\
&\qquad\iff
\neg\exists p\,[F(p)\land\mathrm{Captured}(p)\land\mathrm{Independent}(p)].
\end{aligned}}
$$

因此首问的 conditioning 变体所需的**精确兼容性条件**也可以直接说成：不存在一个实际显现同时 `Captured` 与 `Independent`。这条等价没有新增 predicate 或哲学 bridge；它只利用 `NonExhaustible ↔ ¬ Captured` 把已有显现域条件改写成“是否存在冲突 witness”的形式。

项目此前定义的压力测试前提

$$
E(M):\forall p,h\,[S(p,h)\land\mathrm{Exhausts}(p,h)\to K(p,h)]
$$

即 `ExhaustiveCaptureConditions`，是一个**更强、结构化、足够但非点态最弱**的机制。在 E 下，Lean 证明：

$$
E(M)\land\mathrm{Independent}(p)\to\mathrm{NonExhaustible}(p).
$$

入口 `exhaustiveCaptureConditions_independent_implies_nonExhaustible`。

定理 `exhaustiveCaptureConditions_implies_exact_appearing_condition` 证明：

$$
E(M)\to
\forall p\,[F(p)\to\mathrm{Captured}(p)\to\neg\mathrm{Independent}(p)].
$$

同一 bridge 还有 witness-level 诊断：

$$
\mathrm{Captured}(p)\land\mathrm{Independent}(p)
\to \neg E(M),
$$

入口 `captured_independent_refutes_exhaustiveCaptureConditions`。

`closedIndependentConditioning` 同时有 `Independent` 与 `Captured`，并由 `closedIndependentConditioning_not_exhaustiveCaptureConditions` 证明它违反 E。因此 E 是真正的额外 bridge，不是定义展开。

`displacedCaptureConditioning` 有两个均 related 的 horizon：`false` horizon 穷尽唯一 aspect，而不同的 `true` horizon 承担 conditioning。因此该模型满足 `ConditioningIsSituated`，并在所有实际显现上满足精确条件 `Captured → ¬ Independent`；但 E 失败，因为 exhaustive 的 `false` horizon 本身并不 conditioning。定理 `exact_appearing_condition_is_strictly_weaker_than_exhaustiveCaptureConditions` 正式给出：

$$
\exists M\,[\mathrm{ConditioningIsSituated}(M)
\land (\forall p\,(F(p)\to\mathrm{Captured}(p)\to\neg\mathrm{Independent}(p)))
\land \neg E(M)].
$$

所以 strictness 已两侧闭合：`exhaustiveCaptureConditions_implies_exact_appearing_condition` 给出强 bridge 到精确显现域条件的正向蕴含；`displacedCaptureConditioning` 则反证 converse。

### 构造性细化：排除冲突不等于已经构造 conditioning witness

因为已有定义与定理给出

```text
Independent p ↔ ¬ Conditioned p
```

Lean Core 进一步证明：

```text
¬ Independent p ↔ ¬¬ Conditioned p
```

入口是 `not_independent_iff_not_not_conditioned`。因此显现域的精确条件又等价于：

```text
∀ p, appears p → Captured p → ¬¬ Conditioned p
```

入口是 `exact_appearing_condition_iff_double_negated_conditioning`。这是一条**构造性证明论边界**：排除 `Independent` 只保证不可能证明“没有 conditioning horizon”，并不会自动构造一个 `Conditioned p := ∃ h, conditions p h` 的 witness。

若额外采用 witness-producing bridge

```text
∀ p, appears p → Captured p → Conditioned p,
```

则 `appearing_captured_conditioned_implies_exact_appearing_condition` 证明它足以推出精确排斥。更强的 `ExhaustiveCaptureConditions` 甚至由 `exhaustiveCaptureConditions_captured_implies_conditioned` 直接从 capture 构造 conditioning witness：同一个 situated + exhaustive horizon 就是 witness。

这给出构造性层级：

```text
ExhaustiveCaptureConditions
⇒ appearing Captured → Conditioned
⇒ appearing Captured → ¬ Independent
↔ appearing Captured → ¬¬ Conditioned.
```

而 `appearing_captured_to_conditioned_is_strictly_weaker_than_exhaustiveCaptureConditions` 再次复用 `displacedCaptureConditioning` 证明第一步是**严格加强**：capture 由 `false` horizon 完成，conditioning witness 由不同的 `true` horizon 给出，因此 witness-producing bridge 和 `ConditioningIsSituated` 都成立，但 E 仍失败。

### Stability：双重否定到 witness 的精确局部前提；decidability 只是充分来源

上一轮把 `Decidable (Conditioned p)` 识别为一个局部、无需全局 Classical 的充分前提。本轮进一步纠正“decidability 是精确前提”的过强表述。定理 `not_independent_iff_conditioned_iff_conditioned_stable` 证明：

```text
((¬ Independent p) ↔ Conditioned p)
↔
(¬¬ Conditioned p → Conditioned p).
```

因此，对固定 `p` 而言，**真正需要且足够的证明论性质是 `Conditioned p` 的 double-negation stability**，并不要求完整的 `Decidable (Conditioned p)`。

若逐点显式给出

```text
∀ p, ¬¬ Conditioned p → Conditioned p,
```

则 `exact_appearing_condition_iff_witness_bridge_of_stable` 证明：

```text
(∀ p, appears p → Captured p → ¬ Independent p)
↔
(∀ p, appears p → Captured p → Conditioned p).
```

原有 decidability 结果继续成立，但现在只是 corollary：`Decidable.not_not` 从 `[Decidable (Conditioned p)]` 产生 stability，`not_independent_iff_conditioned_of_decidable` 得到点态等价；逐点 decidability 下 `exact_appearing_condition_iff_witness_bridge_of_decidable` 则直接复用 stability theorem。没有开启全局 `Classical`。

所以 proof-theoretic hierarchy 应写成：

```text
Captured → ¬ Independent
↔ Captured → ¬¬ Conditioned

+ stability (¬¬ Conditioned → Conditioned)
⇒ Captured → Conditioned

+ Decidable (Conditioned)
⇒ stability via Lean Core Decidable.not_not.
```

stability 与 decidability 都没有 Marion / Merleau-Ponty 历史归属，只是 FORMAL 前提；查重与复用见 `DECIDABLE_CONDITIONING_BRIDGE.md`。这些层级也都没有把 `Captured` 偷换成 Marion 的 “saturates a horizon”。

## 7. 结构、closure 与 conditioning coherence 仍不足

`closedIndependentConditioning` 还提供两个更强的反例封锁：

- `structure_and_conditioning_coherence_do_not_imply_exact_appearing_condition`：即使 `UniversalStructure + ConditioningIsSituated`，仍可有实际显现同时 `Captured ∧ Independent`；
- `structure_closure_and_conditioning_coherence_do_not_imply_exact_appearing_condition`：即使进一步直接授予 `ClosureBridge`（该 base 事实上满足 `UniversalCapture`），仍不能得到 `Captured → ¬ Independent`。

因此“有相关 horizon”“总有 exhaustive related horizon”“conditioning horizon 必须 related”都不能替代真正连接 capture 与 conditioning 的 bridge。

## 8. 三条轴的联合一致性

`HasSituatedIndependentExcess(M)` 表示存在同一显现满足：appears、Structured、Independent、NonExhaustible。

`related_independent_nonExhaustible_are_jointly_consistent` 给出一个满足 `ConditioningIsSituated` 的有限模型，因此 related + independent + non-exhaustible 在当前关系语言中可以联合一致。

`related_independent_captured_are_jointly_consistent` 则给出另一个有限见证：实际显现可以同时 Structured、Independent、Captured。这个定理只说明模型论一致性；`conditions` 是模型关系，不能由此推出历史概念必然独立。

## 9. Marion 1996 primary text 对现有形式结果的约束

本项目直接从 PDCnet 出版者索引读取 Jean-Luc Marion 1996 “The Saturated Phenomenon” 的 p. 117–119 作者正文。它**没有改变上述 Lean 定理真假**，但显著改变了解释边界：

1. p. 117 明确说一般取消 horizon 会阻止 manifestation；问题是摆脱 horizon 的 `delimiting anteriority`。所以 `Horizonless` 不是合适的默认 Marion 编码。
2. p. 118 在同一讨论中允许一个 horizon 的 saturation、多个 horizons、超过 horizon，并称 saturated phenomenon 不依赖 horizon 这一 condition of possibility。故 `Independent` 不能按词义直接定义成 `NonExhaustible`；已有 Lean 反模型与作者文本方向一致。
3. p. 119 又引入 intuitive excess 与 constitution reversal，所以完整 `Saturated` 远强于本项目任何单一 coverage/conditioning 谓词。

特别地，Marion 文本中的 “saturates a horizon” **没有**被本项目定义为 `Captured`；`Captured` 是对 aspect coverage 的 extensional surrogate。正因此，当前只保留形式问题；文本是否支持 witness-producing capture→conditioning 或任何更强同-horizon bridge 仍必须另证。

## 10. 量词次序与开放视域

`IndividuallyCoverable p` 表示每个 aspect 可以各自找到 related horizon 覆盖；`Captured p` 则要求同一个 horizon 覆盖全部 aspect。`individual_cover_does_not_imply_capture` 用 `splitModel` 证明：

$$
\forall a\,\exists h\not\Rightarrow\exists h\,\forall a.
$$

`expandingModel` 进一步显示：每个 aspect 最终都可在更大的自然数 horizon 中出现，但不存在最终 exhaustive horizon。`completedModel` 人为加入一个理想全覆盖 horizon 后，non-exhaustibility 消失，说明 horizon 的量词域本身就是解释前提。

## 11. 证明地图

| 文件 | 具名定理数 | 作用 |
|---|---:|---|
| `Horizon/Basic.lean` | 0 | 基础关系语言 |
| `Horizon/Separation.lean` | 9 | 基本等价、蕴含和 A/B/C 条件冲突 |
| `Horizon/SituatedExcess.lean` | 4 | 非空真 excess 与 closure 的直接冲突 |
| `Horizon/Conditioning.lean` | 12 | related/conditioning 分离、点态/显现域/冲突见证确切前提、强 bridge → 精确条件、witness-level 诊断、profile 投影 |
| `Models/Finite.lean` | 11 | 有限见证、最小冲突与首问反例 |
| `Models/Conditioning.lean` | 16 | conditioning / exhaustion / horizonless 分离、联合一致性、structure/closure/coherence 不足、bridge 反模型与 strictness witness |
| `Models/OpenHorizon.lean` | 6 | 开放扩展、逐一覆盖和单调性 |
| `Models/HorizonExtension.lean` | 4 | horizon 域扩展与穷尽性的变化 |
| `ConstructiveBridge.lean` | 9 | 双重否定正规形、exact stability、witness bridge、同-horizon strictness、decidability corollary |

共 **9 个库模块、71 个具名引理／定理**，全部列入 `Audit.lean`。任何后续 Lean 改动都必须在其自己的提交重新获得 `lake build`、`scripts/check.py` 与 `#print axioms` 验证，不能继承旧 CI。
