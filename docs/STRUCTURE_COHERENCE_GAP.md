# Universal structure + conditioning coherence 仍不足以恢复穷尽桥

核查日期：2026-09-17。本文记录本轮针对首个研究问题的最小形式增量、外部查重与来源增量。它不新增 Marion 的历史公理，也不把项目中的 `Captured` 等同于 Marion 的 “saturates a horizon”。

## 1. 本轮形式问题

此前已经证明，在实际显现域上：

```text
(∀ p, appears p → Independent p → NonExhaustible p)
↔
(∀ p, appears p → Captured p → ¬ Independent p)
↔
¬ ∃ p, appears p ∧ Captured p ∧ Independent p.
```

一个仍可能被误当成足够前提的组合是：

1. `UniversalStructure`：每个实际显现都有某个 related horizon；
2. `ConditioningIsSituated`：若某个 horizon 条件化现象，它至少也是该现象的 related horizon。

本轮新增 theorem：

```text
structure_and_conditioning_coherence_do_not_imply_exact_appearing_condition
```

其命题是：

```text
¬ ∀ M,
    UniversalStructure M.base →
    ConditioningIsSituated M →
    ∀ p, appears p → Captured p → ¬ Independent p
```

反模型直接复用现有 `closedIndependentConditioning`。它只有一个实际显现和一个 related horizon，因此 `UniversalStructure` 成立；`conditions` 恒为假，因此 `ConditioningIsSituated` 也成立；但该显现同时 `Captured` 与 `Independent`。所以：

```text
UniversalStructure + ConditioningIsSituated
```

仍然不能补出 `Independent → NonExhaustible` 所缺的 bridge。确切缺口仍是实际显现域上的 `Captured → ¬ Independent`，或任何足以推出它的更强结构前提（例如项目中的压力测试 `ExhaustiveCaptureConditions`）。

这个结论只说明当前关系语言中的逻辑强弱，不说明历史概念天然独立。

## 2. 外部查重 / 工程复用决定

在写 theorem 前，本轮重新检查了当前真正拟新增的声明，而不是机械浏览无关大库。

### Lean / formal-phenomenology

- `novaspivack/phenomenology-lean` 的 `main` 仍停在 commit `75230e4eab333ad0fc47573747521ccc1a31a163`（2026-05-20）。
- 本轮针对 `UniversalStructure / ConditioningIsSituated / Captured / Independent` 以及 horizon-conditioning 组合做 GitHub 全局代码检索，没有定位到 external formal-philosophy 同型 API；命中仍为本仓。
- 该外部仓库本轮没有重新本地构建，因此不把其自述 build/zero-sorry 状态冒充本轮实测。

### LogiKEy / Isabelle 方法先例

- `cbenzmueller/LogiKEy` 本轮最新仍为 commit `b29954b0876d7991baf12f17378f31700f9de759`（2026-09-13）。
- LogiKEy、AFP AOT、Lowe reconstruction 与 computational hermeneutics 继续构成“解释选择 → 形式化 → 反模型/验证”的方法 prior art；本项目不声称发明这一工作流。
- 新 theorem 只是对现有有限模型的一条 Lean Core 级包装，不值得为它引入 Mathlib、LogiKEy 或新的模态语义依赖。

**复用决定：**薄复用本仓已经验证的 `closedIndependentConditioning` 与既有关系定义；不新增 primitive，不平行重写通用逻辑基础设施，不作原创数学或“首次发现历史区分”的宣称。

## 3. 同题解释 prior art：Deketelaere 2018

本轮新增核查：Nikolaas Deketelaere, “Givenness and existence: On the possibility of a phenomenological philosophy of religion,” *Humanities and Social Sciences Communications* 4, article 127 (2018), DOI `10.1057/s41599-018-0184-7`。Nature / Springer Nature 页面提供开放全文，版本记录为 2018-10-30。

这篇文章对当前三轴分层尤其直接，因为它把 Marion 的两种 horizon 角色并置起来：

- 在讨论 Marion 2008a *The Possible and Revelation* p. 12 时，它说明 horizon 作为先行的 a priori limit 可以一方面使 manifestation 一般成为可能，另一方面排除 revelation 的可能性；
- 在讨论 Marion 2017b p. 99 时，它转述一个“挑战任何 horizon 的现象如何仍在世界的 horizon 中显现”的问题，并把回答定位为通过 saturation；
- 更直接地，它引 Marion 2008a p. 16：revelation 的 presentation 会承担/假定一个 horizon，但同时挑战任何施加在其可能性上的 a priori condition，并“在 horizon 中”通过 saturation 呈现。

因此，同题 secondary literature 已非常明确地要求区分：

```text
appears / is presented in a horizon
```

与

```text
is governed by that horizon as an a priori condition of possibility
```

这不是本项目的新历史发现；它进一步支持 `situated` 与 `conditions` 分开作为一个合理的最小接口。

证据等级严格记为 **SECONDARY-DIRECT-OPEN-FULLTEXT + SECONDARY-EXACT-PRIMARY-PAGE-QUOTATION**：本项目直接读到的是 Deketelaere 的开放文章，其中带页码引述 Marion；这不等于本轮独立打开 Marion 2008a 的原书页，更不等于已经直接核读 *Being Given* pp. 209–212 / 225–226。

同样重要的是，Deketelaere 的 “saturating a horizon” 仍不能直接翻译成本项目的 `Captured`。`Captured` 只是当前 aspect 语言中的 extensional exhaustive coverage；把二者建立对应仍需要单独语义桥，而本轮没有证据要求增加该桥。

## 4. direct-primary 访问门本轮复查

本轮再次实际检查了合法出版路线：

- Stanford / De Gruyter Brill 的 *Being Given* / §21 入口在当前抓取环境仍没有给出可逐页阅读的 BG pp. 209–212、225–226 正文；直接页面请求仍不能形成目标页 direct-primary review。
- Fordham / De Gruyter Brill 的 2013 *The Essential Writings* 正式章节页再次确认 Marion, `Sketch of the Saturated Phenomenon`, pp. 108–134；但页面明确显示 `You are currently not able to access this content.`，因此仍只是正式重印 metadata / access path，而非已读取正文。

所以本轮新增的 Deketelaere 精确引文链和正式重印复查都**不能**关闭 direct-primary 停止门。

## 5. 对首问的增量结论

形式层现在能排除一个自然但不足的修补方案：

```text
“每个显现都有 horizon”
+
“任何 conditioning horizon 都必须是 related horizon”
```

仍不推出：

```text
“若显现不受 horizon 条件化，则它不能被任何 related horizon 穷尽。”
```

因此首问的确切逻辑压力已经进一步收窄：结构存在性与 conditioning/related 的一致性都不够；真正需要的是对 capture 与 independence 的额外不相容约束，或者一个能够推出这种不相容的更强 bridge。

历史解释上，本轮新增 prior art 反而使边界更清楚：已有文献已经明确区分“在 horizon 中呈现”与“受 horizon 作为 a priori condition 支配”，所以 Lean 的贡献是把这个已有解释空间中的关系拆分和强弱条件做成可检查模型，而不是宣称首次提出这种哲学区分。

停止条件仍未满足：还需合法直接核查 *Being Given* pp. 209–212、225–226，或可靠对应的 *Étant donné* / 正式重印作者正文，然后才能冻结书本版本中的弱历史归属并做最终验证。
