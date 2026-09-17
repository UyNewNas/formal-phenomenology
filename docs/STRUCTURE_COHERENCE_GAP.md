# Structure / closure / conditioning coherence 仍不足以恢复精确排斥

核查日期：2026-09-17。本文记录针对首个研究问题的最小形式增量、外部查重与来源复查。它不新增 Marion 的历史公理，也不把项目中的 `Captured` 等同于 Marion 的 “saturates a horizon”。

## 1. 已知的精确条件

此前已经证明，在实际显现域上：

```text
(∀ p, appears p → Independent p → NonExhaustible p)
↔
(∀ p, appears p → Captured p → ¬ Independent p)
↔
¬ ∃ p, appears p ∧ Captured p ∧ Independent p.
```

所以真正的形式问题不是再发明一个名词，而是判断哪些看似自然的结构性前提能否推出右侧的精确排斥。

## 2. 第一层不足：structure + conditioning coherence

此前 theorem

```text
structure_and_conditioning_coherence_do_not_imply_exact_appearing_condition
```

已经证明：

```text
¬ ∀ M,
    UniversalStructure M.base →
    ConditioningIsSituated M →
    ∀ p, appears p → Captured p → ¬ Independent p
```

反模型复用 `closedIndependentConditioning`。它只有一个实际显现和一个 related horizon，因此 `UniversalStructure` 成立；`conditions` 恒为假，因此 `ConditioningIsSituated` 成立；但该显现同时 `Captured` 与 `Independent`。

## 3. 本轮新增：即使再加 ClosureBridge 仍然不足

一个更强、也更接近 A/B 分析的候选修补是同时假定：

1. `UniversalStructure`：每个实际显现都有 related horizon；
2. `ClosureBridge`：一个实际显现一旦有 horizon 结构，就存在某个 related horizon exhaust 它；
3. `ConditioningIsSituated`：任何 conditioning horizon 必须首先是 related horizon。

本轮新增 theorem：

```text
structure_closure_and_conditioning_coherence_do_not_imply_exact_appearing_condition
```

其命题为：

```text
¬ ∀ M,
    UniversalStructure M.base →
    ClosureBridge M.base →
    ConditioningIsSituated M →
    ∀ p, appears p → Captured p → ¬ Independent p
```

证明仍不需要新模型。`closedIndependentConditioning.base = closedModel`，而 `closedModel_capture` 给出 `UniversalCapture`；已有
`universalCapture_iff_structure_and_bridge` 因而直接提供 `UniversalStructure ∧ ClosureBridge`。同时 `conditions` 恒假使 `ConditioningIsSituated` 成立，唯一实际显现却仍由 `closedIndependentConditioning_capture` 与 `closedIndependentConditioning_independent` 同时满足 `Captured ∧ Independent`。

因此，即使**直接授予 B / closure**，仍然没有得到 capture 与 conditioning 之间的任何联系：

```text
UniversalStructure
+ ClosureBridge
+ ConditioningIsSituated

↛

appears p → Captured p → ¬ Independent p.
```

这比上一层反模型更明确地排除一种潜在偷换：`ClosureBridge` 只保证存在 exhaustive related horizon；它不会自动把那个 horizon（或任何 horizon）变成 conditioning horizon。要恢复 `Independent → NonExhaustible`，仍需实际连接 capture 与 conditioning 的前提，最弱形式就是显现域的 `Captured → ¬ Independent`；`ExhaustiveCaptureConditions` 则是一种严格更强的 horizon-by-horizon 实现机制。

这只是当前关系语言中的逻辑分离。尤其不能据此把 B 归给 Merleau-Ponty；已核查的 Merleau-Ponty 原典反而抵制 closure reading。

## 4. 外部查重 / 复用决定

在写新增 theorem 前先完成针对该对象的增量查重。

### Lean / formal-phenomenology

- `novaspivack/phenomenology-lean` 的 `main` 本轮重新核对，仍为 commit `75230e4eab333ad0fc47573747521ccc1a31a163`（2026-05-20）。
- GitHub 全局检索 `ClosureBridge ConditioningIsSituated Captured Independent` 未定位到外部 formal-philosophy 同型 API；有效命中为本仓。更宽的 horizon / saturation / condition-of-possibility 检索主要返回非形式化文本或无关工程内容。
- 外部 Lean 仓库本轮没有重新本地构建，因此不把其 build / zero-sorry 状态冒充本轮实测。

### LogiKEy / Isabelle / computational hermeneutics

- `cbenzmueller/LogiKEy` 最新仍为 commit `b29954b0876d7991baf12f17378f31700f9de759`（2026-09-13）。
- LogiKEy、AFP Abstract Object Theory、Lowe reconstruction 与 computational-hermeneutics 工作继续构成方法先例：解释选择、意义公设、模型和反模型的机助审计不是本项目发明。
- 本轮目标只是既有有限模型与既有 `UniversalCapture ↔ UniversalStructure ∧ ClosureBridge` 的 Lean-Core 级组合，不值得引入 Mathlib、LogiKEy 或新的模态语义依赖。

**复用决定：**薄复用本仓 `closedIndependentConditioning`、`closedModel_capture` 与 `universalCapture_iff_structure_and_bridge`；不新增 primitive、不新造通用逻辑层、不作原创数学宣称。

## 5. 同题解释 prior art 与本轮来源复查

同题文献已经明确要求把“在 / 有 horizon”与“受 horizon 作为 condition of possibility 限定”分开：Murga、Djian、Pommier、Deketelaere 都属于这一解释空间。尤其 Pommier / Deketelaere 所讨论的 horizon-presupposition 与 a-priori-conditioning 区别说明，这个概念区分本身不是项目的新历史发现。

本轮又重新核对两条已经登记但对当前 theorem 边界很重要的来源链：

- King-Ho Leung 的开放 SAGE 文本仍把 *Being Given* pp. 211–212 的“不依赖 horizon”放在 horizon 作为 `condition of possibility` 的语义中；这是 `Independent` 弱接口的 secondary exact 支撑，不提供 `Captured → ¬ Independent` 这种 extensional bridge。
- Dermot Moran 的 UCD 作者公开稿仍明确把 Marion `Sketch of the Saturated Phenomenon` 定位于 *Being Given* pp. 199–221，并登记其正式重印于 Moran / Embree 编 *Phenomenology: Critical Concepts* (Routledge 2004), vol. 4, pp. 5–28；同一文稿脚注又把 unconditioned / horizon 讨论指到 BG p. 211。它是 secondary exact navigation + reprint provenance，不是直接阅读 Marion 目标书页。

因此本轮新 theorem 没有得到新的历史归属：文献支持分层问题存在，却没有把 A、B 或 extensional exhaustion 自动变成 conditioning。

## 6. direct-primary 访问门本轮复查

本轮继续实际检查合法路线：

- Google Books / Stanford-De Gruyter 的 *Being Given* 条目仍可确认 §21 从 p. 199 开始、§22 从 p. 212 开始、§23 从 p. 221 开始，但当前环境没有合法暴露 BG pp. 209–212、225–226 的逐页正文；
- Google Books 的 Routledge 2004 vol. 4 正式重印条目继续确认 `Sketch of the Saturated Phenomenon: the horizon` 从卷内 p. 5 开始，但选择性预览没有返回可与 BG 209–212 逐段互证的正文；
- Fordham / De Gruyter Brill 2013 *The Essential Writings* 正式章节页继续确认 Marion `Sketch` pp. 108–134，但正文仍受限。

搜索过程中也出现未经确认授权的第三方整书镜像。按照项目证据纪律，这些镜像不作为 direct-primary gate 的来源，也不用于绕过出版社／借阅访问限制。

因此证据等级没有升级：出版社 metadata、selected preview、secondary exact quotation 与 reprint provenance 都继续和 `PRIMARY-DIRECT-PAGE` 分开。

## 7. 对首问的增量结论

形式上现在可以排除更强的一组“看起来已经够多”的前提：

```text
“每个显现都有 horizon”
+
“有 horizon 的显现都能被某个 horizon capture”
+
“conditioning horizon 必须是 related horizon”
```

仍然不推出：

```text
“captured 的实际显现不能 horizon-independent”。
```

所以缺口不是 horizon 是否存在，也不是是否能找到 exhaustive horizon，更不是 conditioning relation 是否只取 related horizons；缺口就是**capture 与 conditioning 是否被桥接**。这正是显现域精确条件 `Captured → ¬ Independent` 所表达的内容。

停止条件仍未满足：还需合法直接核查 *Being Given* pp. 209–212、225–226，或可靠对应的 *Étant donné* / 正式重印作者正文，然后才能冻结书本版本中的弱历史归属并做最终验证。
