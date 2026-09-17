# Marion *Étant donné* 2013 p. 295：Cairn 出版平台直接索引证据

核查日期：2026-09-17。

本页记录首个研究问题的一项新增 primary evidence。它解决的是“Marion 的书本正文是否直接把 horizon 的条件化角色与 horizon 中/超出 horizon 的显现区分开”这一点；它**不**把当前模型的 `Captured`、`NonExhaustible` 或 `Independent` 等同为完整 saturated phenomenon，也**不**把 2013 年版页码未经核验地冒充 1997 初版页码。

## 1. 来源与访问状态

来源：Jean-Luc Marion, *Étant donné : essai d'une phénoménologie de la donation*, PUF, Quadrige, 2013，ISBN `9782130624813`。公开书目页面把这一版本登记为 2013 年 PUF Quadrige 版；零售／书目元数据进一步标为校订增订版。

Cairn/PUF 的出版平台索引存在精确页入口：

- `https://shs.cairn.info/etant-donne--9782130624813-page-295`

针对该入口的公开搜索索引直接返回 Jean-Luc Marion 的正文片段，并把片段定位到 **p. 295**。本轮实际看到的锚点包括 `sature l'horizon`、`aucun horizon`，以及 saturated phenomenon 不依赖 horizon 的表述；搜索上下文同时把 horizon 放在 possibility-condition 的语境中。

直接打开 Cairn 页面以及其 PDF 入口时，当前研究环境返回 HTTP 403，因此没有取得 page image，也没有绕过访问控制。

本项目据此使用新状态：

> **PRIMARY-DIRECT-INDEXED-BOOK-PAGE**：出版社／正式出版平台的公开索引直接返回作者书本正文并给出具体书页，但当前环境无法打开完整页面／PDF。

它比 `SECONDARY-EXACT` 更强，因为文本来自出版平台索引中的 Marion 书本正文；但它仍弱于 `PRIMARY-DIRECT-PAGE`，因为完整页版面与上下文没有直接展开。

## 2. 这条 primary evidence 实际支持什么

### 2.1 `Independent` 的弱接口获得书本正文直接动机

现有 `conditions p h` 只编码“h 作为条件／约束规定 p”，`Independent p` 则表示不存在这样的 conditioning horizon。此前这一接口已经有 Marion 1996 作者论文 p. 117–118 的 primary-text 动机，以及 Djian、Murga 等对 *Étant donné* 的解释 prior art。

2013 *Étant donné* p. 295 的出版平台直接索引现在提供**书本正文层**的进一步支撑：Marion 在同一 horizon/saturation 讨论中把 saturated phenomenon 的自由／非依赖与 horizon 的 possibility-condition 角色联系起来。

因此可以把解释登记从“只有 1996 primary parallel + 书本 secondary exact”收紧为：

- `Independent` 仍然只是一个很弱的 MODEL 接口；
- 但“把 horizon 的相关性与 horizon 的先行条件化角色分开”现在同时有 1996 作者论文和 *Étant donné* 书本正文的 direct-indexed primary 动机；
- 这仍没有把 Lean 的 `conditions` 全部语义（尤其没有时间性的 anteriority、意向期待或 constitution）归给 Marion。

### 2.2 horizon-independence 仍不能词义化成 `NonExhaustible`

同一 p. 295 搜索索引还暴露了与 horizon saturation 有关的正文锚点。至少在作者书本论证中，“不依赖 horizon 作为条件”与“如何在一个／多个／极端 horizon 结构中发生 saturation”并不是一个单一集合式关系。

所以当前已验证的形式分离仍应保留：

```text
Independent p ⟹ NonExhaustible p      ✗   (无额外条件)
```

以及确切正规化：

```text
(Independent p → NonExhaustible p)
↔
(Captured p → ¬ Independent p)
```

这条 primary evidence **不**提供 `Captured → ¬ Independent` 的历史公理；相反，它继续要求我们避免把 horizon-independence 直接定义成“所有 related horizons 都不能 exhaustive”。

### 2.3 `Captured` 仍不等同于 Marion 的 “saturates a horizon”

Cairn p. 295 的 `sature l'horizon` 是 Marion 的现象学术语；本项目 `Captured p` 则只是

```text
∃ h, situated p h ∧ Exhausts p h
```

其中 `Exhausts` 仅表示一个 horizon 容纳当前人为 aspect 语言中 p 的全部侧面。两者没有建立语义同构。

因此本轮**不**新增 theorem、predicate 或 `Saturated` 别名，也不把 `ExhaustiveCaptureConditions` 升格为 Marion 前提。

## 3. 与 BG/ED 页码交叉的关系

现有 secondary exact crosswalk 把 BG p. 211 的核心 horizon 段落定位到 ED p. 295。新证据直接看到了 **2013 PUF/Cairn 版 p. 295** 的作者正文索引，因此显著提高了这一段的原典可追溯性。

但这里必须保留两个版本纪律：

1. 目前直接索引的是 ISBN `9782130624813` 的 **2013 Quadrige 版**；
2. Miller / Mackinlay 等 crosswalk 所用 ED 页码来自 1997 原版及其后续引用传统。

在没有逐版目录／页码连续性或相同文本锚点的完整页核之前，不能只因为数字同为 `295` 就宣称“2013 p. 295 = 1997 p. 295”已经得到独立版式验证。

因此 `MARION_VERSION_CROSSWALK.md` 中 BG 211 ↔ ED 295 的历史 crosswalk 仍保留 `SECONDARY-EXACT-CROSSWALK`；本页新增的是**同页号 2013 版的 direct-indexed primary corroboration**，二者并列而不互相冒充。

## 4. 本轮外部查重／复用决定

### 工程／证明层

- `novaspivack/phenomenology-lean` 本轮重新读取最新提交，仍为 `75230e4eab333ad0fc47573747521ccc1a31a163`（2026-05-20）。
- 针对 `horizon Marion saturated exhaustive conditioning` 的仓库代码搜索无命中。
- `cbenzmueller/LogiKEy` 本轮最新提交仍为 `b29954b0876d7991baf12f17378f31700f9de759`（2026-09-13）。

本轮没有发现需要移植的新 proof API，也没有出现新的形式缺口，所以**不新增 Lean 代码**；继续复用当前 Lean Core 三轴和 58 条已审计结果。

### 方法与同题解释层

- LogiKEy / AFP / computational hermeneutics 继续是形式哲学与解释—反模型工作流的 prior art；本项目不声称发明该方法。
- Djian 2018 已直接研究 *Étant donné* 中 horizon 作为 possibility-condition／限制角色；Murga 2024 已提出 non-metaphysical horizontality；Falabretti 已直接比较 Merleau-Ponty 与 Marion。
- 本轮新增价值不是提出新的 Marion 学说，而是把一个此前依赖 secondary exact crosswalk 的关键书本位置升级出一条**出版平台 direct-indexed primary 证据链**。

复用决定：保留既有解释 prior art，只收紧证据等级；不为维持新颖性改题，不把基础命题逻辑或三轴分离重新包装成原创哲学结论。

## 5. 对停止条件的影响

本轮**没有关闭**首个研究问题的停止门。

已实质缩小的缺口：

- ED 2013 p. 295 现在有 `PRIMARY-DIRECT-INDEXED-BOOK-PAGE` 证据，足以让 `Independent` 的弱接口获得 *Étant donné* 书本正文直接动机；
- 但完整目标段仍包括 ED 292–297 的其余页，以及 §23 对应 ED 314–315；
- 2013 与 1997 版的页码／文本连续性仍需显式核验；
- Cairn 当前 403，不能声称完整 p. 295 page-image / context 已审阅。

所以当前停止门继续要求：合法直接取得 BG 209–212、225–226，或 ED 292–297、314–315 的足够完整正文／正式重印正文，并完成版本与上下文核对。形式证明链本轮不变，仍以最终提交对应 CI 为准。