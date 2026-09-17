# 视域结构与穷尽性的分离

本页给出 v0.1 的完整逻辑问题。代码中的命题均以 Lean 定义为准；哲学解释另见 [INTERPRETATION.md](INTERPRETATION.md)。

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

可构造性地证明 `NonExhaustible p ↔ ¬ Captured p`。这不是从否定全称式中提取缺失侧面的排中律推理；正反两向都直接使用否定存在式。具体模型另外给出缺失侧面。

## 2. 三项原则

$$\begin{aligned}
A&:\quad \forall p\,(F(p)\to\mathrm{Structured}(p)),\\
B&:\quad \forall p\,(F(p)\to\mathrm{Structured}(p)\to\mathrm{Captured}(p)),\\
C&:\quad \exists p\,(F(p)\land\mathrm{NonExhaustible}(p)).
\end{aligned}$$

**定理：A、B、C 不可同时满足。**

取 C 的见证 p。由 A 获得 p 的相关视域，再由 B 获得一个穷尽 p 的相关视域；这与 C 的见证条件矛盾。代码为 `structure_bridge_excess_inconsistent`。

这段推导很短。项目的重要工作是将额外前提 B 独立出来，并检查它是否真的属于待解释的文本，而不是把短推导包装为哲学上的新发现。

## 3. 逐条删除的模型

| 模型 | A | B | C | 说明 |
|---|---|---|---|---|
| `closedModel` | 真 | 真 | 假 | 一个现象、一个侧面、一个全覆盖视域 |
| `splitModel` | 真 | 假 | 真 | 一个现象、两个侧面、两个分别只覆盖一个侧面的视域 |
| `unsituatedModel` | 假 | 真 | 真 | 有显现但无相关视域；B、C 涉及空真的条件 |

`minimal_conflict` 同时证明三项联合不可满足、每个二项子集都有具体模型。因此“最小”是指**相对于这三条指定公式的删除最小性**，不涉及其他候选语言或理论。

### 非空的兼容见证

`splitModel` 中 P={p}，H={h₀,h₁}，D={a₀,a₁}。F、S、G 全成立，而 R(hᵢ,aⱼ) 当且仅当 i=j。

p 有两个视域；h₀ 漏掉 a₁，h₁ 漏掉 a₀。所以“有视域”与“没有任何一个相关视域穷尽它”同时成立，且没有借助无限性或无显现的空模型。

## 4. 量词次序

`IndividuallyCoverable p` 表达：

$$\forall a\,[G(p,a)\to\exists h\,(S(p,h)\land R(h,a))].$$

它允许不同侧面对应不同视域。`Captured p` 则要求先选出一个 h，再覆盖全部侧面。穷尽蕴含逐一覆盖，但反向不成立；`splitModel` 已经给出有限反模型。

$$\forall a\,\exists h\quad\not\Rightarrow\quad\exists h\,\forall a.$$

形式入口：`captured_implies_individuallyCoverable`、`individual_cover_does_not_imply_capture`。省略关系条件的量词式仅是上面完整公式的提示。

## 5. 持续扩展仍可不穷尽

在 `expandingModel` 中，P 为单元素类型，H=D=ℕ，F、S、G 全成立，R(h,a) 定义为 a<h。

每个侧面 a 都被 h=a+1 容纳；每个 h 又遗漏侧面 a=h。视域按自然数顺序扩展时已容纳的侧面不会失去，但没有任一自然数视域覆盖全部侧面。

`open_horizon_compatibility` 证明 A、C 和逐一可覆盖同时成立；`expandingModel_monotone` 证明上述单调性。

## 6. 理想视域的加入

`completedModel` 将视域类型换成 `Option Nat`。`some n` 保留原来的 n；`none` 是新加入的理想视域，容纳所有侧面。

`finite_horizon_agrees` 证明旧视域的容纳关系完全保留。`completedModel_capture` 证明新增的理想视域穷尽显现。于是：

$$C(\mathrm{expandingModel})\land\neg C(\mathrm{completedModel}).$$

这不是对原模型中结论的反证，而是展示量词域的变化。`none` 是我们额外定义的对象；代码未证明它在真实经验中可达，或者某位哲学家会接受它。

## 7. 证明地图

| 文件 | 具名定理数 | 作用 |
|---|---:|---|
| `Horizon/Basic.lean` | 0 | 模型和原则定义 |
| `Horizon/Separation.lean` | 9 | 基本等价、蕴含和条件冲突 |
| `Models/Finite.lean` | 8 | 三个有限见证与最小性 |
| `Models/OpenHorizon.lean` | 6 | 开放扩展、逐一覆盖和单调性 |
| `Models/HorizonExtension.lean` | 4 | 域扩展与穷尽性的变化 |

共 27 个具名引理／定理，全部列在 `Audit.lean`。执行 `python3 scripts/check.py` 进行构建与逐项公理依赖检查。这里展示的是可直接构造的见证，并未声称解决任意哲学理论的一致性判定问题。
