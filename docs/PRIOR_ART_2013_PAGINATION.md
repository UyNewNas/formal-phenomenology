# 增量外部工作审计：*Étant donné* 2013 分页纠正

核查日期：2026-09-17。

本页是 `docs/PRIOR_ART.md` 的**本轮对象级增量登记**，仅针对“2013 *Étant donné* 页码能否直接复用 1997 / BG crosswalk”这一新增问题。它不替代主 prior-art ledger 中已固定的 LogiKEy、AFP、computational hermeneutics、Murga、Djian、Falabretti 等条目。

## 1. 本轮拟新增／修改对象

本轮没有计划新增 Lean 定义、lemma 或哲学 primitive。唯一拟修改的实质声明是版本／证据声明：

> 2013 PUF Quadrige p. 295 是否能够作为 `BG p. 211 ↔ ED p. 295` 的同页号 primary corroboration？

若答案是否，需更新 direct-primary 导航，但不改动形式证明。

## 2. 工程／证明复用检查

### `novaspivack/phenomenology-lean`

- 检索日期：2026-09-17。
- 最新 `main`：`75230e4eab333ad0fc47573747521ccc1a31a163`（2026-05-20），与此前固定版本一致。
- 本轮检索对象：`horizon`, `Marion`, `saturated`, `exhaustive`, `conditioning`，以及这些词的组合。
- 结果：没有定位到与当前 Merleau-Ponty / Marion horizon-conditioning-exhaustibility 问题同型的可直接复用 API。
- 构建状态：本轮未重新本地构建该外部仓库；不把其自述状态冒充本轮实测。
- 决定：**无代码复用；保持 Lean Core。**

### `cbenzmueller/LogiKEy`

- 检索日期：2026-09-17。
- 最新 `master`：`b29954b0876d7991baf12f17378f31700f9de759`（2026-09-13），与此前固定版本一致。
- 相关性：继续作为 shallow/deep embedding、computational metaphysics、automated countermodel 的方法 prior art。
- 本轮对象是书目分页纠正，不需要引入 Isabelle/AFP 逻辑基础设施。
- 决定：**仅方法先例，不新增依赖。**

### GitHub 全局代码检索

实际检索词：

- `horizon Marion saturated exhaustive conditioning`

结果：没有定位到新的 external formal-philosophy 同型声明；实质相关命中仍主要来自本仓，其余结果为无关词典／数据文件。

决定：本轮不存在“已有同型 theorem 应先移植”的情况。

## 3. 同题版本／解释工作检查

### 2013 版本元数据

Jean-Luc Marion, *Étant donné : essai d'une phénoménologie de la donation*, PUF, Quadrige, 2013, ISBN `9782130624813`。

实际核查：

- E.Leclerc：<https://www.e.leclerc/fp/9782130624813>
  - `4e édition corrigée et augmentée`
  - 533 pages
  - 提供 Electre `Feuilletage` 入口：`https://electre-reader.bvdep.com/9782130624813`
- Decitre：<https://www.decitre.fr/livres/etant-donne-9782130624813.html>
  - `4e édition revue et augmentée`
  - 533 pages
- 1997 版公开书目（Open Library）：<https://openlibrary.org/books/OL305529M/E%CC%81tant_donne%CC%81>
  - PUF 1997
  - 452 p.
  - ISBN `2130486770`

原始量词／逻辑：无。这些是版本和物理分页元数据，不是哲学命题。

对应／不对应：它们足以反对“2013 与 1997 默认保持相同页码”，但不能告诉我们目标段落的 2013 精确页。

决定：**版本元数据直接复用；仅用于否定页码连续性假设。**

### Irina Schulzki 2015

Irina Schulzki, “Love at Loss: Jean-Luc Marion’s Concept of Erotic Reduction and Paul Thomas Anderson’s *Magnolia*,” 2015, pp. 145–172。

公开全文入口：<https://www.researchgate.net/publication/320169780_Love_at_Loss_Jean-Luc_Marion%27s_Concept_of_Erotic_Reduction_and_Paul_Thomas_Anderson%27s_Magnolia>

本轮实际读取了其 HTML 可检索全文，不把页面标题中的 `(PDF)` 当作已执行 PDF page-image review。关键内容：

1. 正文用 Kosky 英译 p. 225 引出 intuition 先于并去中心化 intention 的句子；脚注 9 给出法文原句并标 `Marion, 2013: 370`。
2. 正文前一段以英译 p. 198 讨论 overexposure；脚注 10 给出法文原句并标 `Ibid.: 327`。
3. 正文以英译 p. 217 描述 `witness`；相邻脚注给出 2013 p. 355 / p. 356 的法文位置，其中 `ne voit pas en totalité...` 明确标 p. 356。
4. 书目明确登记 `Étant donné ... Paris: Presses universitaires de France, 2013 [1997]`，同时登记 Kosky 英译 *Being Given*。

原始结构：这不是一个形式 theorem，而是“同一二手研究在英语引用后给出法文 2013 原句页码”的版本映射证据。

项目对应：

- 可直接复用为 **SECONDARY-EXACT-CROSSWALK**；
- 不可升级为 Marion primary direct page；
- 不允许从三个点拟合线性页码偏移；
- 足以让 2013 p. 295 的“同页号 corroboration”失去依据，并给 2013 §21 / §23 搜索提供新导航。

决定：**复用已有版本劳动，纠正本仓来源映射。**

## 4. Cairn 2013 p. 295 的新定位

精确入口：<https://shs.cairn.info/etant-donne--9782130624813-page-295>

此前 Cairn/PUF 搜索索引直接返回过 Marion 书本正文锚点，因此证据等级继续是：

- `PRIMARY-DIRECT-INDEXED-BOOK-PAGE`。

本轮直接访问仍返回 HTTP 403，没有完整 page image/context。因此新增定位限定：

- `UNMAPPED-TO-BG-TARGET`。

复用决定：**保留 p. 295 作为 2013 版独立 horizon/saturation primary evidence；撤回它作为 BG p. 211 / ED 1997 p. 295 的“同页号 corroboration”。**

## 5. 与已有解释 prior art 的关系

本轮没有改写以下已登记判断：

- Murga 2024：Marion 对 horizon 的批判不等于简单删除 horizon；
- Djian 2018：horizon / I 作为 possibility-condition 的同题解释已存在；
- Falabretti：Merleau-Ponty / Marion 的直接比较已有先例；
- Leung、Mason、Mackinlay、Miller、Steinbock：BG / ED 早期分页的 horizon、saturation、intuition/intention 解释与页码定位已有工作。

新结果只要求把**版本轨道**拆开：Miller/Mackinlay/Steinbock 的历史 ED 页码与 Schulzki 的 2013 页码并列，不互相覆盖。

## 6. 对形式化的复用决定

本轮查重与文本核查没有发现新的形式缺口：

- `UniversalStructure ↛ ClosureBridge` 已完成；
- `Independent ↛ NonExhaustible` 的反例已完成；
- 点态与实际显现域的确切条件已完成；
- `ExhaustiveCaptureConditions` 与精确条件的严格强弱关系已完成。

所以：

- **不新增 Lean code**；
- 不新增 `priorDelimits`、horizon-combination、intention/intuition primitive；
- 不把来源纠正包装成新的哲学理论；
- 本轮价值是撤回一个可能污染停止条件的版本映射，并把合法 direct-primary 搜索范围改正确。

## 7. 尚未覆盖项

仍未直接读取：

- BG pp. 209–212、225–226 的目标正文；
- ED 1997/早期分页 pp. 292–297、314–315 的完整目标正文；
- ED 2013 §21 精确对应页（现只有 p. 327 与 p. 356 之间的顺序导航边界，前提是修订版保持相关论证顺序）；
- BG p. 226 的 2013 精确对应页；
- Electre / 其他合法 preview 的目标正文（入口存在，但当前工具未成功取得）。

在这些项完成前，不宣称不存在其他外部版本工作，也不关闭首问停止门。