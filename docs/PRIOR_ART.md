# 外部工作与复用审计

核查日期：2026-09-18。本文记录与首个研究问题直接或方法上相邻的外部工作，避免把已有逻辑基础设施、形式哲学方法或既有解释重新包装成新发现。

## 审计规则

在新增非平凡定义、lemma、模型族或哲学归属前，必须分别检查：

1. **证明基础设施**：Lean/Core、必要时 mathlib，以及相关 Lean / Isabelle/HOL / AFP 工作；
2. **方法先例**：计算形而上学、计算诠释学、语义嵌入、论证重构和反模型方法；
3. **同题解释文献**：Merleau-Ponty / Marion / Husserl 的 horizon、horizontality、saturation、givenness、condition of possibility、intentionality 等。

“没有同名定理/仓库”、更换证明助手、定理数增加或达到 0 `sorry` 都不构成原创性证据。若谓词被人为定义为互不受约束，则分离定理首先只说明**建模自由度**，不是历史概念独立性的证据。

## 1. Lean formal phenomenology prior art

### novaspivack/phenomenology-lean

- 仓库：<https://github.com/novaspivack/phenomenology-lean>
- 2026-09-18 再次核对 `main`，仍停在 commit `75230e4eab333ad0fc47573747521ccc1a31a163`（2026-05-20）。
- 仓库自述 Lean 4.29.1 / Mathlib 4.29.1，并依赖 `sentience-lean`、`nems-lean`、`reflexive-closure-lean`；范围包括 qualia、manifestation、ownership、selector-access、countermodels 和 meta-theory。
- 既有审计实读 `StructuredManifestation.lean`、`ManifestationNonReducibility.lean`、`Meta/Minimality.lean`、`MANIFEST.md`。
- 针对当前首问继续搜索 horizon / Marion / saturated / conditioning / captured / independent / stability 等组合，仍未定位到同型 API。

**判断。** 这是直接的 Lean formal phenomenology 先例，所以本项目不声称“首次用 Lean 形式化现象学”。但没有定位到可替换本项目 Merleau-Ponty / Marion horizon、conditioning、exhaustibility 关系层的现成 API。外部仓库本轮没有重新构建，不能把其自述 build/zero-sorry 状态冒充本轮实测。

## 2. Isabelle/HOL / AFP 与方法 prior art

### LogiKEy

仓库 <https://github.com/cbenzmueller/LogiKEy>；2026-09-18 再次核对 `master`，仍为 commit `b29954b0876d7991baf12f17378f31700f9de759`（2026-09-13）。它以 shallow/deep semantic embedding 复用 Isabelle/HOL、自动证明器与反模型器，覆盖规范逻辑、法律／伦理推理、计算形而上学及多种模态/非经典逻辑。

### Abstract Object Theory（AFP, Daniel Kirchner, 2022）

Isabelle/HOL 已有 AOT 模型、语义与 possible worlds 等大规模计算形而上学案例。“哲学体系的机助形式化”不是本项目发明。

### Lowe modal ontological argument / Computational Hermeneutics

Fuenmayor / Benzmüller 等已经展示自然语言哲学论证的解释、意义公设、竞争重构、模型查找和形式验证迭代。本项目不声称“解释选择 → 形式化 → 反模型／证明”的方法工作流是新发明。

## 3. 同题解释 prior art

### Murga (2024)

Ezequiel Daniel Murga, “La posibilidad de una horizonticidad no metafísica en Jean-Luc Marion,” *Logos. Anales del Seminario de Metafísica* 57(2), 309–325, DOI `10.5209/asem.94542`。论文直接讨论 Marion 批判 horizon 的形而上学式先行限定使用，而非简单删除 horizon，并提出 non-metaphysical horizontality 的可能。

**判断。** 本项目 `situated` / `conditions` 分层是对已有解释空间的形式接口，不能声称为新的历史解释发现。

### Djian (2018)

Aurélien Djian, “L’horizon et le destin de la phénoménologie,” *Philosophiques* 45(2), 343–364, DOI `10.7202/1055267ar`。Érudit 开放索引／正文检索直接返回论文文本。Djian 讨论 *Étant donné* §21–22 时把 horizon 分析为 phenomenality 的 condition of possibility 和对 intuition 的限制，并引用 ED pp. 304–305 说明 horizon 与 I 作为限制 donation 的两项条件。

**复用判断。** `conditions` 所压缩的解释轴已有明确 prior art；但 Djian 没有给出 `situated ∧ Exhausts → conditions` 这种 extensional bridge，所以 `ExhaustiveCaptureConditions` 仍是本项目压力测试。

### Falabretti (2015/2016)：直接 Merleau-Ponty / Marion 比较

Ericson Falabretti, “Merleau-Ponty e Marion: o problema da ambiguidade entre uma fenomenologia da percepção e uma fenomenologia da doação,” *Revista de Filosofia Moderna e Contemporânea* 3(2), 87–102，DOI `10.26512/rfmc.v3i2.12514`。官方页面与官方 PDF 文本已直接读取；page-image 截图未在当前环境成功，因此登记为 **SECONDARY-DIRECT-PDF-TEXT / PAGE-IMAGE-NOT-REVIEWED**。

- p. 90 将 Merleau-Ponty 的知觉写成持续开放的时空 horizon field，并说知觉不会穷尽被知觉者或知觉活动；
- p. 98 以 “no horizon / overflowing presence” 概括 Marion saturation，但与 Marion 1996 p.117–118、Murga、Djian 形成解释张力，因此只作为竞争 secondary reading；
- p. 88 提醒不能假定 Marion 会如何直接解释 Merleau-Ponty，并称 Merleau-Ponty 在 *Étant donné* 中处于边缘、脚注式位置。

**判断。** Merleau-Ponty / Marion 的比较配对本身已有 prior art；本项目的增量只能是把相关／条件化／穷尽的解释差异压成显式关系并机核其逻辑后果。

### Pommier (2020) / Deketelaere (2018) / Lind (2026)

这些工作分别从 horizon-presupposition、a-priori condition、anticipation / constitution 等角度区分“与 horizon 发生关系”与“受 horizon 先行限定”。它们共同进一步确认：related horizon 与 conditioning horizon 的历史区分不是本项目的新发现。Lind 2026 也没有给出本仓 `Captured → Conditioned`、stability、decidability 或 same-horizon bridge。

### Ngoma Tassoulou (2023)

Hilaire Ngoma Tassoulou, “Le problème de l’horizon chez Husserl et Merleau-Ponty,” *Revue Internationale de la Recherche Scientifique* 1(6), 1066–1080，DOI `10.5281/zenodo.10083785`。期刊页面／摘要把 Merleau-Ponty 一侧描述为不可穷尽的 world-horizon。

**判断。** 这是 Merleau-Ponty horizon / inexhaustibility 的 secondary corroboration，与本项目已直接核查的 *Phenomenology of Perception* 开放／未完成段落方向一致；不替代 primary text，也不提供形式 bridge。

### Leung / Mason / Mackinlay / Moran / Lee / Lahaie

这些来源在 `SOURCES.md` 与 `MARION_HORIZON_GATE.md` 分层登记：它们带页码地定位 *Being Given* 209–226，支持区分 horizon 作为相关结构、condition of possibility、一个／多个 horizon 的 saturation，以及 intuition/intention/constitution。仍是 secondary evidence，不代替书本目标页直接阅读。

### Miller / Mackinlay / Steinbock 的双版本页码链

- Adam S. Miller 给出 BG 209–210 / ED 293、BG 210 / ED 293–294、BG 211 / ED 295、BG 212 / ED 296–297；
- Shane Mackinlay 给出 BG 209 / ED 292、BG 211 / ED 295、BG 225 / ED 314、BG 226 / ED 315；
- Anthony J. Steinbock 的正式出版／许可译载保留 ED 314 / BG 225、ED 315 / BG 226、ED 316 / BG 227。

**复用判断。** 项目复用这些 **SECONDARY-EXACT-CROSSWALK** 来缩小 1997/early-pagination direct-primary 搜索范围，不自己猜 translation pagination。它们没有提供 Lean theorem，也没有把 `Captured`、`NonExhaustible` 或 `Independent` 定义为 Marion saturation。

### 正式重印 provenance

Moran 的作者公开稿明确登记 *Being Given* `Sketch` pp.199–221 重印于 Moran / Embree 编 *Phenomenology: Critical Concepts* (Routledge, 2004), vol.4, pp.5–28；Fordham / De Gruyter 2013 *The Essential Writings* 也正式收录 Marion `Sketch` pp.108–134。项目直接复用这些书目劳动扩展合法 primary 路线，但不按页数猜偏移，也不把重印 provenance 冒充已读正文。

## 4. 既有形式 profile 与精确前提 theorem 的复用判断

以下结果逻辑内容都很初等，不作为原创性主张：

- `Structured` 不蕴含 `Captured`；
- `∀ aspect, ∃ horizon` 不蕴含 `∃ horizon, ∀ aspect`；
- `Independent` / `NonExhaustible` / `Horizonless` 的有限模型分离；
- related + independent + non-exhaustible / captured 的联合一致性见证；
- `ExhaustiveCaptureConditions` 下 `Independent → NonExhaustible`；
- `Captured p ∧ Independent p → ¬ ExhaustiveCaptureConditions`。

为回答“`Independent p → NonExhaustible p` 的确切前提是什么”，项目复用本仓 `nonExhaustible_iff_not_captured`，得到：

```text
(Independent p → NonExhaustible p)
↔
(Captured p → ¬ Independent p)
```

入口 `independent_implies_nonExhaustible_iff_capture_refutes_independence`。这是 Lean Core 级命题正规化，不声称原创逻辑。

### 把精确条件限制在“实际显现”量词域

首问写的是“显现”，所以进一步证明：

```text
(∀ p, appears p → Independent p → NonExhaustible p)
↔
(∀ p, appears p → Captured p → ¬ Independent p)
```

以及冲突见证正规形：不存在实际显现同时 `Captured ∧ Independent`。这些 theorem 只保护量词纪律，不增加哲学 primitive。

## 5. `ExhaustiveCaptureConditions` 的 prior-art 状态

压力测试 bridge：

```text
situated p h ∧ Exhausts p h → conditions p h
```

没有在已核查同题文本中发现这条 extensional exhaustion→conditioning 蕴含。因此它继续是 MODEL/QUESTION。`displacedCaptureConditioning` 已机核证明实际显现域的精确 `Captured → ¬ Independent` 可以成立，而 same-horizon bridge 失败；`exhaustiveCaptureConditions_implies_exact_appearing_condition` 给出正向蕴含，所以 strictness 两侧闭合。

**复用决定。** 这是本仓现有 API 的薄逻辑闭包和有限反模型，不值得引入 Mathlib、LogiKEy 或 Isabelle 重依赖，也不作原创数学／历史哲学宣称。

## 6. Marion 1996 primary text 是否要求新 API？

作者本人文本说明：一般取消 horizon 会阻止 manifestation；要摆脱的是 horizon 的 `delimiting anteriority`；saturated phenomenon 可与一个／多个／超过 horizon 等多种结构发生关系；完整 saturation 还涉及 intuition surplus 和 constitution reversal。

因此继续保持：

1. 不新增 `priorDelimits` primitive；现有 `conditions` 足以承载首问最弱接口；
2. 不新增 horizon-combination 结构；它属于完整 saturation 后续语义；
3. 不提前引入 intention/intuition API；
4. 保留 `situated / conditions / Exhausts` 三轴，以文本约束解释，而不是用新自由谓词制造 theorem count。

## 7. primary source 的当前定位

Jean-Luc Marion 1996 “The Saturated Phenomenon” 的 PDCnet 出版平台公开索引直接返回 p.117–119 作者正文；PDF 在当前环境仍为 403，所以状态是 **PRIMARY-DIRECT-INDEXED**，不冒充 page-image review。

这不取消书本版本核对门。目标仍是直接读 BG 209–212、225–226，或 ED 1997/early 292–297、314–315，或正式重印对应正文并以文本锚点互证。2013 Quadrige 有独立 pagination track，2013 p.295 继续保持 `PRIMARY-DIRECT-INDEXED-BOOK-PAGE + UNMAPPED-TO-BG-TARGET`，不能用同页号代替历史 crosswalk。

2026-09-18 再次检查合法公开路线仍没有取得目标作者书页正文；这一访问负结果不能被当作不存在文本或支持某种解释的证据。

## 8. 当前复用结论

首问继续保持轻量 Lean Core 是合理选择。当前最有价值的复用分为：

- 复用 Miller / Mackinlay / Steinbock 的 BG/ED 交叉，避免重猜页码；
- 复用 Falabretti / Djian / Murga / Pommier / Deketelaere / Lind / Ngoma Tassoulou 等限制历史新颖性并保存竞争 reading；
- 复用 Moran / Routledge 的正式重印 provenance 扩展合法 primary 路线；
- 复用本仓 `NonExhaustible ↔ ¬ Captured`、conditioning 定义和既有反模型；
- 复用 Lean Core / Mathlib 已有的双重否定稳定性基础，而不是自造通用 DNE、regular proposition 或有限存在量词 decision infrastructure。

## 9. 构造性 conditioning bridge 层级

写构造性 bridge 前，项目已检索 `Conditioned Independent Captured horizon`、固定 `novaspivack/phenomenology-lean` 与 LogiKEy 版本，并确认没有需要替换的同型 formal-philosophy API；同题文本也没有讨论 `¬¬∃ h, conditions p h` 与 `∃ h, conditions p h` 的证明论差别。

因此只新增薄的 Lean-Core 正规化：

```text
ExhaustiveCaptureConditions
⇒ appearing Captured → Conditioned
⇒ appearing Captured → ¬ Independent
↔ appearing Captured → ¬¬ Conditioned
```

`displacedCaptureConditioning` 证明 witness-producing bridge 严格弱于 same-horizon bridge。项目不为把 `¬¬ Conditioned` 直接消成 `Conditioned` 而引入 global classical DNE。

## 10. 上一轮增量：局部 decidability

上一轮新增：

```text
[Decidable (Conditioned p)]
⊢ (¬ Independent p ↔ Conditioned p)
```

以及逐点 decidability 下 exact appearing exclusion 与 witness-producing bridge 的等价。

工程查重当时已定位：

- pinned Lean `v4.24.0` 的 `Decidable.not_not`；
- Mathlib `Mathlib/Order/Heyting/Regular.lean` 的 `isRegular_of_decidable`，说明 decidable proposition 在 intuitionistic/Heyting 意义下 regular/stable；
- `novaspivack/phenomenology-lean` / LogiKEy 没有出现需移植的同型 API。

这两条 theorem 正确，但“decidability 是精确／最小额外前提”的自然语言表述仍然过强。

## 11. 上一轮增量：stability 才是精确点态 proof-theoretic premise

上一轮证明：

```text
((¬ Independent p) ↔ Conditioned p)
↔
(¬¬ Conditioned p → Conditioned p)
```

以及在全域逐点 stability

```text
∀ p, ¬¬ Conditioned p → Conditioned p
```

下 actual-appearance exact exclusion 与 witness-producing bridge 等价。

该工作已经确认：stable/regular proposition 的通用理论不是本项目发明；Mathlib 已有 `isRegular_of_decidable`，本项目只把所需 stability 性质显式作为 theorem 参数，不引入 Mathlib。

## 12. 本轮增量：把 stability 精确限制到 appearing + captured 域

### 强制前置查重

正式写本轮 theorem 前重新核对：

1. `novaspivack/phenomenology-lean` 最新 `main` 仍为 `75230e4eab333ad0fc47573747521ccc1a31a163`；没有定位到 horizon / Marion / conditioning / local-stability 同型 API。
2. `cbenzmueller/LogiKEy` 最新 `master` 仍为 `b29954b0876d7991baf12f17378f31700f9de759`；继续仅作 semantic-embedding / computational-metaphysics 方法 prior art。
3. GitHub 全局增量检索 `not_not stability conditioned captured`、`local stability witness bridge appearing captured`，没有定位到需直接复用的 external formal-philosophy 实现；命中主要是本仓和无关代码。这个负结果不被解释为“前人工作不存在”。
4. Lean Core `v4.24.0` 的 `Decidable.not_not` 与 Mathlib regular/stable prior art 沿用已固定审计；没有重造通用逻辑 API。

**复用决定。** 本轮只收紧本仓既有 theorem 的量词域，不新增 philosophical predicate，不引入 Mathlib / LogiKEy / Isabelle 依赖，也不作原创逻辑宣称。

### 同题解释 prior art：Deery 2025

新增核查 James Deery, “The Imaginary Texture of the Real: The Role of the Imagination in Merleau-Ponty’s Phenomenology of Perception,” *European Journal of Philosophy* 33(4), 1500–1517，first published 2025-06-30，DOI `10.1111/ejop.70001`。Wiley Open Access Version of Record HTML 已直接阅读。

Deery 把 Merleau-Ponty 的 “horizon of sense” 描述为使事物向进一步探索、不同观看方式和更确定化开放；该 horizon 本身是 indeterminate，并不预先指定事物将怎样感性显现。它与本仓直接核查的 *Phenomenology of Perception* 开放／未完成方向一致。

**复用判断。** “Merleau-Ponty horizon 是开放可能性场而非既成 exhaustive closure”已有明确 secondary prior art；本项目不把这一解释方向作为历史新发现。Deery 没有给出 `Captured` / `Conditioned` bridge，也不替代 Merleau-Ponty primary text。

### 新形式结果及原始量词

本轮把上一轮全域 stability 前提收紧为：

```text
∀ p, appears p → Captured p →
  (¬¬ Conditioned p → Conditioned p)
```

并证明：

```text
exact_appearing_condition_iff_witness_bridge_of_captured_stable
```

以及更强的精确分解：

```text
appearing_witness_bridge_iff_exact_and_captured_stability
```

后者给出：

```text
(appearing Captured → Conditioned)
↔
  ((appearing Captured → ¬ Independent) ∧
   (appearing Captured → (¬¬ Conditioned → Conditioned))).
```

因此 witness-producing bridge 所需的 stability 不必覆盖所有 `Phenomenon` 类型居民，只需覆盖实际显现且已被 capture 的对象。这是量词纪律上的薄逻辑闭包；全域 stability 与 decidability theorem 继续是更强的 sufficient corollary。

### direct-primary 门

本轮再次检索 BG pp.209–212、225–226、early ED pp.292–297、314–315 与正式重印路线；仍未取得目标作者书页的合法 direct-primary 正文。没有绕过受限 preview / feuilletage / 借阅内容。

**最终复用判断。** 本轮 formal increment 是已有 constructive-logic prior art 上的本仓量词收紧；historical increment 是 Deery 2025 的 secondary corroboration。二者都不能关闭 Marion 书本版本的 direct-primary stop gate。完整逐声明审计见 [DECIDABLE_CONDITIONING_BRIDGE.md](DECIDABLE_CONDITIONING_BRIDGE.md)。

## 13. 本轮增量：decidability 也只需出现在 appearing + captured 域

### 强制前置查重

在新增 localized-decidability corollary 前重新核对：

1. `novaspivack/phenomenology-lean` 的 `main` 仍为 `75230e4eab333ad0fc47573747521ccc1a31a163`；未定位到 Marion / horizon / conditioning / captured-domain decidability 的同型接口。
2. `cbenzmueller/LogiKEy` 的 `master` 仍为 `b29954b0876d7991baf12f17378f31700f9de759`；当前 theorem 不需要移植其模态或语义嵌入层。
3. GitHub 增量代码搜索 `exact_appearing_condition captured decidable conditioned` 命中主要来自本仓，没有定位到需直接复用的 external formal-philosophy API。该负结果只说明本次检索范围内未找到，不宣称前人工作不存在。
4. pinned Lean `v4.24.0` 的 `Decidable.not_not` 与 Mathlib regular/stable proposition 基础已经覆盖通用逻辑部分；因此不新增自定义 `Stable` / decision framework。

**复用决定。** 新 theorem `exact_appearing_condition_iff_witness_bridge_of_captured_decidable` 只是将 Lean Core 的局部 DNE 适配到上一轮已经证明精确的 `appears ∧ Captured` stability 域。全域 `exact_appearing_condition_iff_witness_bridge_of_decidable` 改为它的 corollary。没有新增哲学 predicate，也不把这项量词收紧宣称为原创逻辑。

### 同题解释增量：Llorente Cardo 2025

Jaime Llorente Cardo, “Encrucijadas de la fenomenología acontecial. Entre el horizonte y la neutralidad,” *Invisto* 2(1), 56–72，2025-06-30，DOI `10.21703/invisto.2025.10`。本轮直接读取期刊官方页面的书目元数据、摘要和参考文献；未把 PDF 链接冒充成逐页全文核读。

摘要把问题明确设为：包括 Jean-Luc Marion 在内的当代事件现象学如何尝试超越给予物的“horizonte de constitución”，并讨论这种超越与中性／非人格化之间的张力。它是同题 secondary prior art，进一步限制“超越 constitution-horizon”路线的新颖性表述；但不提供 `Captured`、`Conditioned`、stability、decidability 或 same-horizon bridge。

### direct-primary 门与决定

本轮再次检查 *Being Given* §21（pp.199–212，chapter DOI `10.1515/9780804785723-024`）、§23（pp.221–233）以及 BG pp.209–212、225–226 / early ED pp.292–297、314–315 的合法公开路径。仍只取得书目／章节元数据、secondary exact quotation 与既有 crosswalk，没有取得目标作者书页的 direct-primary 正文；不使用非正式转载关闭停止门。

**最终复用判断。** 本轮只降低 decidability 的无关量词强度；精确 proof-theoretic premise 仍然是 appearing+captured 域的 double-negation stability。历史解释没有升级，Marion 书本版本的 direct-primary stop gate 继续保持。详细审计见 [DECIDABLE_CONDITIONING_BRIDGE.md](DECIDABLE_CONDITIONING_BRIDGE.md)。

## 14. 2026-09-22：mutual `situated ↔ conditions` 的正向存在量词正规化

### 强制前置查重

在新增 `Conditioned p ↔ Structured p` 的薄正规化前，本轮用查询

`horizon conditioning structured conditioned exhausted exhaustible situated`

对已登记的三条代码基线做定向检索：

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163`；
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759`；
- `alexoltean61/msphml-lean@9d6559db6502bc9813dcf028d7ea26ae80e9dc93`。

该 scoped search 没有返回同型 horizon/conditioning/exhaustibility API。更宽的 web 检索也没有定位到应替换本仓关系层薄适配的 proof-assistant implementation。这里的负结果只限定在本轮实际检索范围，不宣称不存在其他前人工作。

**复用决定。** 新 theorem 只复用本仓既有 `conditioningIsSituated_conditioned_implies_structured` 与 `SituatedImpliesConditioning` witness；不移植逻辑框架、不新增依赖，也不把初等存在量词等价宣称为原创逻辑。

### 同题增量：Schatz 2025/2026 与 Lind 2026

Timothy J. Schatz, “Whose reduction? Which givenness? Michel Henry, Jean-Luc Marion, and the fourth principle of phenomenology,” *Continental Philosophy Review* 59 (2026), 125–152，DOI `10.1007/s11007-025-09706-1`，open-access version of record 2025-09-07。出版社全文把 Marionian saturation 描述为给定物在无尽可能显现方式中的 excess，并强调持续的 hermeneutic openness。

Andreas Goncalves Lind, “Givenness as the Opening of All Phenomenological Possibility: Marion’s Overcoming of Henry Through Heidegger,” *Philosophies* 11(4), 145 (2026)，DOI `10.3390/philosophies11040145`。出版社全文继续把 Marion 的方向描述为超出 constitution / anticipation horizon 的开放给予。

**复用判断。** 两者都进一步限制把 `situated ↔ conditions` 当作历史默认 reading 的可能性；它们没有提供 `Conditioned ↔ Structured` 的形式 API，也不替代 Marion revised-book direct-primary body。因而 mutual identification 继续只作为显式 competing pressure test，不写入基础定义。

### source gate

De Gruyter / Stanford 官方书页本轮仍只直接确认 *Being Given* §21 从 p.199 开始、§22 从 p.212 开始；没有合法暴露 BG pp.209–212 / 225–226 的目标正文。停止门未升级。详细记录见 [FIRST_QUESTION_MUTUAL_CONDITIONING_NORMALIZATION_AUDIT_20260922.md](FIRST_QUESTION_MUTUAL_CONDITIONING_NORMALIZATION_AUDIT_20260922.md)。
