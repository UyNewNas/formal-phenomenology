# 外部工作与复用审计

核查日期：2026-09-17。本文记录与首个研究问题直接或方法上相邻的外部工作，目的是避免把已有逻辑基础设施、形式哲学方法或既有解释重新包装成新发现。

## 审计规则

在新增非平凡定义、lemma、模型族或哲学归属前，先检查：

1. **证明基础设施**：当前 Lean/Core、必要时 mathlib，以及相关 Lean / Isabelle/HOL / AFP 工作；
2. **方法先例**：计算形而上学、计算诠释学、语义嵌入、论证重构和反模型方法；
3. **同题解释文献**：Merleau-Ponty / Marion / Husserl 的 horizon、horizontality、saturation、givenness、condition of possibility 等。

“没有同名定理/仓库”、更换证明助手、定理数增加或达到 0 `sorry` 都不构成原创性证据。若两个谓词在模型中被人为定义为互不受约束，则由此得到的可分离性首先是**建模自由度**，不是原典概念独立性的证据。

## 1. Lean 中已经存在的 formal phenomenology 工程

### novaspivack/phenomenology-lean

- 仓库：<https://github.com/novaspivack/phenomenology-lean>
- 本轮固定：`main` commit `75230e4eab333ad0fc47573747521ccc1a31a163`（2026-05-20）。
- 仓库自述：Paper 74/75，形式化 qualia、manifestation、ownership、selector-access 等；使用 Lean 4，并自述 proof targets 采用 zero-sorry policy。
- 自述工具链：Lean 4.29.1、Mathlib 4.29.1，并依赖 `sentience-lean`、`nems-lean`、`reflexive-closure-lean`。
- 本轮实读模块：
  - `Phenomenology/Manifestation/StructuredManifestation.lean`
  - `Phenomenology/Manifestation/ManifestationNonReducibility.lean`
  - `Phenomenology/Meta/Minimality.lean`
  - `MANIFEST.md`
- 本轮代码搜索：`horizon`、`Merleau`、`Marion`、`saturated` 未在默认分支返回命中；递归树显示其主要对象是六元本体、manifestation、access、countermodels 与 meta-theory。

**差异判断。** 这是直接的 Lean “形式现象学”先例，因此本项目不得宣称“首次用 Lean/代码仓形式化现象学”。但在本轮实读与搜索范围内，没有发现与“相关视域是否推出某个视域穷尽”同型的 horizon 语义或 Merleau-Ponty / Marion 比较定理。其若干 `Meta` / manifestation 文件还包含 `True := trivial` 或把待排除性质直接定义为 `False` 的证明目标；这些声明不能作为本项目具体首问的更强现成定理直接复用。

**复用决定。** 当前不增加该仓为依赖：其工具链更高、依赖链重，而我们的首问目前只需 Lean Core 的一阶关系/存在量词反模型。保留其作为 formal-phenomenology prior art 和模型审计参照；若未来引入 manifestation/ownership/access 等结构，再逐声明比较后决定是否薄适配。**本轮未在本地重新构建该外部仓库**，其构建和 zero-sorry 状态只按其 `MANIFEST.md` / README 自述记录。

## 2. Isabelle/HOL / AFP 与形式哲学方法先例

### LogiKEy

- 仓库：<https://github.com/cbenzmueller/LogiKEy>
- 本轮固定：`master` commit `b29954b0876d7991baf12f17378f31700f9de759`（2026-09-13）。
- 范围：以 shallow/deep semantic embeddings 复用 Isabelle/HOL 及自动定理证明器/反模型器，覆盖规范推理、法律/伦理 AI、计算形而上学、多种模态与非经典逻辑。

**差异/复用。** 证明哲学论证、比较语义系统、自动找反模型等方法已有成熟先例；本项目不把“自然语言解释 → 形式定义 → 定理/反模型”工作流宣称为新方法。当前 horizon 首问没有用到需要引入 LogiKEy 的模态嵌入，因此只作方法基线。

### Abstract Object Theory（AFP, Daniel Kirchner, 2022）

Isabelle/HOL 中已有计算形而上学的正式大规模案例，包括 AOT 模型、语义与 possible worlds。说明“哲学体系的机助形式化”本身已有成熟先例；不与本项目首问直接同题。

### Computational Hermeneutics（Fuenmayor / Benzmüller 等）

已有工作把自然语言哲学论证的解释、意义公设与形式验证迭代结合。它是本项目“原典证据和形式层分开、允许竞争编码”的方法先例。本项目的价值必须落在具体文本映射与具体 horizon 命题上，而不是宣称发明该工作流。

## 3. 与 Marion horizon 问题高度接近的解释文献

### Ezequiel Daniel Murga (2024)

“**La posibilidad de una horizonticidad no metafísica en Jean-Luc Marion**,” *Logos. Anales del Seminario de Metafísica* 57(2), 309–325, DOI `10.5209/asem.94542`。

公开论文直接把问题表述为：Marion 批判的是 horizon 的**形而上学使用/先行限定功能**，而不是简单删除一切 horizon；论文进一步主张存在一种 non-metaphysical horizontality 的可能。论文引用 Marion 说明，一般地取消 horizon 会阻断 manifestation，问题在于改变 horizon 的使用方式，使其不再以先行条件限定显现。

**与本项目的关系。** 这与我们把 `situated`（相关视域）和 `conditions`（作为先行条件的视域）分开的方向高度重合。故这种概念区分应标记为**对已有解释争论的形式化接口**，不能声称为新的历史解释发现。

它也给当前模型一个重要约束：`Independent` 与 `Structured` 的兼容性不是只靠人为把 `conditions := False` 得出的哲学结论；至少已有解释文献明确提出“仍有 horizon，但不以其形而上学方式先行限定现象”的读法。反过来，Lean 的分离模型只证明这种组合在我们的抽象语言中一致，不能替代文本论证。

### Leung / Mason / Mackinlay / Moran

本仓 `SOURCES.md` 已登记这些带页码二手研究。它们共同指向：

- horizon 可以被讨论为 `condition of possibility`；
- saturated phenomenon 与一个、多个、乃至被溢出的 horizons 的关系比“完全无视域”更复杂；
- intuition/intention 的过剩是完整 saturation 概念的重要组成。

**复用决定。** 当前 `HorizonConditioning` 保留，但只作为上述解释空间的中性接口；`Independent`、`NonExhaustible`、`HasHorizonlessAppearance` 继续保持互不定义。若后续原典要求它们之间有额外约束，必须新增显式 bridge，而不能用未受约束谓词的有限反模型宣称文本概念独立。

## 4. 上一轮联合 profile 的查重判断

上一轮新增的最小命题是：存在一个模型，其中同一显现同时

1. 有相关视域（`Structured`）；
2. 不受任何 horizon 作为条件化关系（`Independent`）；
3. 不被任何相关 horizon 穷尽（`NonExhaustible`）。

在上述 Lean prior art、LogiKEy/AFP 方法基线及当前同题解释文献中，未定位到与这三个**本项目自定义谓词**完全同型的现成声明。该结果本身只是把已有 `splitModel` 与 conditioning 层组合成一个**一致性见证**，逻辑内容很初等，不作为原创性主张。其价值是让 Murga 等文献提示的“horizon 仍在但不再先行限定”与本项目已有“非穷尽”轴可以在一个见证中同时出现，并明确显示还缺哪些文本 bridge。

因此采用**本地最小实现**，不引入重型外部依赖；提交时将其描述为 neutral compatibility witness，而不是 saturated phenomenon 的定义或新哲学定理。

## 5. 尚未闭合的外部/原典审计

- Marion, *Being Given* (Kosky trans., Stanford UP 2002) pp. 210–212、225–226 的原书正文仍未由本项目直接逐页查看。
- Internet Archive 可确认 1997 法文 *Étant donné* 的受限借阅条目存在，但页面标记 `Access-restricted-item: true` 且当前环境没有可直接读取的下载文件；不能绕过借阅/访问控制。
- Murga 对法文 *Étant donné* 及 Marion 后续文献的引文是重要二手定位，但不能替代上述 primary-text gate。
- 若后续要引入视域组合、模态可达性、主体/时间或 intention/intuition 的结构，必须重新执行针对那些具体 API 的外部查重，不能把本页当成永久豁免。

## 6. 当前复用结论

首个研究问题的形式层仍适合保持轻量 Lean Core 工程；现阶段没有理由为了基础存在量词/关系反模型引入 Mathlib、LogiKEy 或另一套 phenomenology 依赖。真正需要复用的是**方法与解释成果的归属**：明确引用已有 formal philosophy / formal phenomenology 工程，并把 related / conditioned / exhaustive 的区分定位为对已有 Marion horizon 争论的形式化，而非将其包装成从零发现。

## 7. 本轮增量审计：从“穷尽”到“条件化”的显式桥

本轮准备检验的不是新的现象学本体，而是一个精确的缺失前提：若某个**相关视域**已经穷尽模型中现象的全部侧面，是否应因此把该视域计作“条件化”该现象？代码把它命名为 `ExhaustiveCaptureConditions`：

```text
situated p h ∧ Exhausts p h  →  conditions p h
```

### 实际查重范围

- 重新核对 `novaspivack/phenomenology-lean` 的固定 `main`：仍为 commit `75230e4eab333ad0fc47573747521ccc1a31a163`；上一轮已经逐文件审计其 manifestation/meta-theory 范围，本轮没有新的 horizon API 可复用。
- GitHub 以 horizon / exhaust / phenomenon / condition 组合做代码检索，返回的主要是机器学习“long horizon”等同名噪声，没有定位到可复用的形式哲学声明。
- 同题文本继续核对 Leung、Mason、Mackinlay、Murga：它们支持区分 horizon 的“相关/出现”与“可能性条件/先行限定”作用，却没有给出本项目上式这种从 extensional exhaustion 到 conditioning 的形式蕴含。
- 新增一条**作者本人文本线索**：Jean-Luc Marion, “The Saturated Phenomenon,” *Philosophy Today* 40(1), 1996, pp. 103–124（DOI `10.5840/philtoday199640137`）。斯洛伐克科学院哲学研究所期刊 *Filozofia* 62(5), 2007, pp. 378–402 又刊有 Marion 的 “A Saturated Phenomenon”；其期刊页面公开摘要明确把 horizon 称作给予的 constitutive condition，并把 saturated phenomenon 描述为 intuition 的 surplus、unconditioned / irreducible 以及超出 intentional meaning。当前环境能直接查看该期刊页面与摘要，但 PDF 下载在本轮超时，所以没有把全文标成已读。

### 复用决定

`ExhaustiveCaptureConditions` 暂定为**项目内压力测试 bridge**，而不是 Marion 或 Merleau-Ponty 的文本归属。它的作用是回答一个纯逻辑问题：现有 `Independent → NonExhaustible` 之所以失败，究竟缺少哪类额外关系假设？在该 bridge 下，这个蕴含可以直接证明；原有 `closedIndependentConditioning` 则明确违反这个 bridge，从而显示它确实是额外前提而非定义展开。

没有发现值得为这个初等 bridge 引入 Mathlib、LogiKEy 或外部 phenomenology 依赖的同型 API。若未来原典或同题研究给出更强、不同方向的 bridge，应保留本声明为压力测试并新增竞争编码，而不是反向把它归给哲学家。
