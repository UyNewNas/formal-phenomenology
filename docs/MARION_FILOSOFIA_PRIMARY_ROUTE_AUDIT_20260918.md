# Marion `Filozofia` 合法原典路线增量审计（2026-09-18）

## 0. 本轮目的与边界

本文件只推进首个研究问题的 **M1 原典映射 / 合法直接访问路线**。它不新增 Lean primitive，不新增哲学归属，也不把出版方摘要、二手精确引文或书目元数据升级为已经阅读的目标书页。

首问仍是：

> “在视域中显现”是否必然意味着“能够被某个视域穷尽”，以及把“与视域相关”提升为“受视域作为可能性条件先行限定”所需的确切附加前提是什么？

本仓现有形式层已经把 `situated`、`conditions`、`Exhausts` 分开，并证明结构性视域不自动给出 closure / exhaustion bridge。本轮只核查新的作者本人合法入口和同题解释资料，判断它们是否要求修改该接口。

---

## 1. 外部形式化 / 方法查重增量

在新增任何形式接口之前，先重新核对当前两条直接相关工程线：

- `novaspivack/phenomenology-lean`：最新可见 `main` 仍为 commit `75230e4eab333ad0fc47573747521ccc1a31a163`（2026-05-20）。既有针对 `horizon / Marion / saturated / conditioning / captured / independent` 的审计未发现可直接替换本项目关系层的 API。本轮没有重新构建该仓库，因此不把其自述 build / zero-sorry 状态冒充本轮实测。
- `cbenzmueller/LogiKEy`：最新可见 `master` 仍为 commit `b29954b0876d7991baf12f17378f31700f9de759`（2026-09-13）。其 computational metaphysics / computational hermeneutics 方法仍是明确先例，但没有理由为本轮纯文本来源核查引入 Isabelle/HOL 依赖。

GitHub 全局关键词检索 `horizon exhaustible phenomenology` 噪声很高，本轮没有定位到新的同型 Lean / Isabelle 首问实现。这个结果只记作有界检索负结果，不构成“没有前人工作”的证明。

**复用决定：** 不新增通用逻辑 API，不新增自由谓词；继续复用本仓已有 `situated / conditions / Exhausts` 三轴和已经机核的 first-question theorem package。

---

## 2. Jean-Luc Marion 2007：官方期刊页提供新的作者本人合法入口

官方期刊页面：

- Jean-Luc Marion, **“A Saturated Phenomenon”**, *Filozofia* 62 (2007), no. 5, pp. 378–402。
- 官方页面：<https://filozofia.sav.sk/en/view/details/regular/2007/5/1739>
- 官方 PDF 路径：<https://www.filozofia.sav.sk/sites/default/files/doc/filozofia/2007/5/378-402.pdf>

本轮直接查看了期刊官方页面与公开摘要。官方摘要明确把 horizon 描述为 givenness / phenomenality 的 constitutive condition，并把 saturated phenomenon 与以下结构联系：

1. intuition 的 surplus；
2. unconditioned / irreducible phenomenality；
3. 超出 intentional meaning；
4. constituting subject 向 constituted / witness-like subject 的反转。

### 证据等级

`PRIMARY-PUBLISHER-ABSTRACT / BODY-NOT-REVIEWED`

原因：页面与摘要来自作者论文的官方期刊入口，属于作者本人作品的出版方直接材料；但本轮尝试取得官方 PDF 正文时连接超时，未成功渲染或逐页阅读。因此不能把摘要扩张成论文正文中任意更强命题，也不能声称核过具体正文页。

### 对首问的影响

它加强了已经由 Marion 1996 primary text 支持的解释纪律：

- 不能把 Marion 简化为“没有 horizon 才是 saturated”；
- `conditions` 作为“horizon 的先行限制／可能性条件”的弱接口有作者侧动机；
- 完整 saturation 仍明显包含 intuition / intentional meaning / subject reversal，远强于集合式 `NonExhaustible`。

因此本轮 **没有理由新增** `intention`、`intuition` 或 `priorDelimits` primitive 来回答首问；这些属于完整 saturation 的后续语义，除非目标书页显示首问本身必须显式依赖它们。

---

## 3. Jean-Luc Marion 2010：发现第二条官方作者本人正文路线

斯洛伐克科学院哲学研究所的 *Filozofia* 作者／增刊索引还登记：

- Jean-Luc Marion, **“Hranice fenomenality”**，*Filozofia* 65 (2010), Supplement 1, pp. 111–127。
- 作者索引：<https://filozofia.sav.sk/en/view/author/510>
- 官方 PDF 路径：<http://www.filozofia.sav.sk/sites/default/files/doc/filozofia/prilohy/2010/1/111-127.pdf>

这是新的、合法的 **Marion 本人正式期刊出版路线**。当前环境同样未能稳定取得 PDF 正文；因此只登记出版方元数据与正式 PDF 入口，不对正文作未读推断。

### 证据等级

`PRIMARY-PUBLISHER-METADATA / BODY-NOT-REVIEWED`

### 为什么值得登记但不足以关闭停止门

这条路线可能提供 1996 与 *Being Given / Étant donné* 之外的作者本人后期重述，尤其适合检查：

- horizon 是不是被一般删除；
- horizon 作为 a-priori condition 与 horizon 作为 manifestation field 是否应分开；
- saturated phenomenon 与 horizon / intuition / subject reversal 的顺序关系。

但在正文尚未直接取得之前，它不能替代 `Being Given` pp. 209–212、225–226，不能替代 early `Étant donné` pp. 292–297、314–315，也不能冒充 formal reprint 的对应正文。

---

## 4. 同一期的二手材料：可作导航，不能升级为原典

官方 *Filozofia* 2010 Supplement 还可检索到围绕 Marion 的研究文本。其中二手正文索引明确用“horizon 预先限定 manifestation / horizon 被 givenness 饱和而不是先验决定”一类表述概括 Marion。

这与本仓已经登记的 Murga、Djian、Pommier、Deketelaere、Leung 等解释方向一致：争点不是简单的“有没有 horizon”，而是 horizon 是否作为先行 condition of possibility 限定现象。

**证据等级：** `SECONDARY-DIRECT-INDEXED / NAVIGATION ONLY`。

它可以帮助定位 Marion 2010 / 2007 的正文主题，但不能替代作者本人目标段落，也不能直接给本仓 `Captured → Conditioned` 或 `situated ∧ Exhausts → conditions` 这种 extensional bridge。

---

## 5. 新的同题 secondary prior art：horizon 可以由现象自身开启，而非被预先施加

本轮还核对到 2023 年开放获取研究中一个与 Murga 相近、但表达更直接的解释方向：对 Marion 而言，问题不必是删除所有 horizon，而可以理解为 horizon 不再由主体／先验结构预先决定，而由 phenomenon 的 appearance 自身开启或改写。

开放获取入口：<https://www.mdpi.com/2077-1444/14/10/1250>

**证据等级：** `SECONDARY-DIRECT-HTML / SAME-TOPIC PRIOR ART`。

### 对本项目的新颖性边界

这进一步说明：

- “related horizon” 与 “conditioning horizon” 的历史解释区分已有明确前人工作；
- 本项目不能把这一区分本身包装成新的历史发现；
- 当前可核查增量仍是把这种差异压成显式关系、给出最弱逻辑 bridge / countermodel，并严守原典归属边界。

它不提供现成 Lean theorem，不改变 current reuse decision。

---

## 6. 对现有 first-question formal answer 的反向审查

本轮没有因为新来源而修改任何形式命题。理由是：新证据只强化了已有接口的**保守性**，没有给出更强 extensional axiom。

现有入口仍应被理解为：

1. `horizon_structure_does_not_entail_closure`：纯形式地否定“有视域结构 ⇒ 自动有穷尽桥”；
2. appearing-domain exact condition：`Independent → NonExhaustible` 的确切形式条件，是排除同一实际显现对象上的 `Captured ∧ Independent`；
3. witness-producing conditioning 还需要 captured-domain double-negation stability；
4. `ExhaustiveCaptureConditions` 是更强的模型压力测试，不是从 Marion / Merleau-Ponty 文本偷渡出的定理。

### 简单反例 / 自由谓词检查

本轮没有新增谓词，因此不存在“通过新自由谓词制造可分离性”的新增风险。既有 first-question package 复用的是已经建立的 finite countermodels 与正规形；新文献只作为解释边界，不充当形式证明前提。

### 量词检查

首问使用“实际显现”域，因此 `appears p` 限制仍是正确的最窄量词范围；没有文本证据要求把条件提升为全域 `∀ p` 的历史主张。

---

## 7. 本轮对停止门的判定

**不关闭首问。**

当前仍缺：

1. 合法直接查看 *Being Given* pp. 209–212、225–226；或
2. early *Étant donné* pp. 292–297、314–315；或
3. 已确认正式重印中的对应正文，并以文本锚点和现有 BG/ED crosswalk 做互证。

本轮新增的 Marion 2007 / 2010 官方路线值得继续尝试，因为它们是作者本人合法出版物，并可能帮助固定 horizon / condition / phenomenality 的作者侧重述；但在没有成功取得正文前，不能把它们当作 book-version gate 的替代品。

---

## 8. 本轮下一入口

1. 优先继续合法获取 Marion 2007 / 2010 官方 PDF 正文；获取后必须按 PDF 规则逐页查看相关页面，不仅依赖文本抓取。
2. 同时继续寻找 BG / early ED / 正式重印的合法直接正文；不尝试绕过 preview、借阅或 DRM 限制。
3. 只有目标作者文本要求首问显式引入 intention / intuition / constitution 时，才设计最小新接口；否则保持当前 first-question theorem package 不扩张。
4. 任何新形式声明前重新做 prior-art / simple-countermodel gate；本轮没有新增 Lean 声明，因此无需为了来源审计制造 API 或 theorem count。

## 9. 本轮明确没有声称的事项

- 没有声称直接读过 Marion 2007 / 2010 PDF 正文；
- 没有声称目标 *Being Given / Étant donné* 书页已经核查；
- 没有把 official abstract 当作完整原典段落；
- 没有把 secondary explanation 当作 Marion 自己的 exact taxonomy；
- 没有新增哲学 primitive、Lean theorem 或原创性主张；
- 没有改变“首问尚未完成”的停止状态。
