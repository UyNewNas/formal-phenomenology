# Marion *Étant donné* 2013 p. 295：直接索引证据与页码纠正

核查日期：2026-09-17。

本页保留 Cairn/PUF 对 2013 *Étant donné* p. 295 的直接索引证据，同时纠正上一轮一个过强表述：**2013 p. 295 不能再被称为 BG p. 211 / ED 1997 p. 295 的“同页号 primary corroboration”。** 新发现的 2013 版精确页码锚点与出版社版本元数据表明，2013 Quadrige 是明显重新分页的校订增订版；数字 `295` 的相同本身没有跨版本证明力。

## 1. 来源与访问状态

来源：Jean-Luc Marion, *Étant donné : essai d'une phénoménologie de la donation*, PUF, Quadrige, 2013，ISBN `9782130624813`。

出版社／书店元数据目前可独立确认：

- E.Leclerc：`4e édition corrigée et augmentée`，533 页，并给出 Electre 的合法 `Feuilletage` 入口；
- Decitre：`4e édition revue et augmentée`，533 页；
- 作为对照，1997 PUF 版的公开书目记录为约 452 页。

因此 2013 版不能默认沿用 1997 版分页。

Cairn/PUF 的精确页入口仍为：

- `https://shs.cairn.info/etant-donne--9782130624813-page-295`

此前公开索引曾直接返回 Jean-Luc Marion 的书本正文片段，并把片段定位到 **2013 p. 295**；可见锚点包括 `sature l'horizon`、`aucun horizon` 与 horizon / possibility-condition 邻域。当前再次直接打开该页面仍返回 HTTP 403，因此没有取得 page image，也没有绕过访问控制。

本项目继续使用证据标签：

> **PRIMARY-DIRECT-INDEXED-BOOK-PAGE**：正式出版平台的公开索引直接返回作者书本正文并给出具体书页，但当前环境无法展开完整页面／PDF。

但新增定位标签：

> **UNMAPPED-TO-BG-TARGET**：该 2013 页目前没有可靠证据证明对应 BG pp. 209–212 或 ED 1997 pp. 292–297 中的某一页。

这两个标签必须同时使用。

## 2. 为什么必须撤回“同页号 corroboration”

本轮找到 Irina Schulzki 2015 章节的可公开检索全文。该文在正文中引用 Kosky 英译 *Being Given*，并在脚注给出 *Étant donné* 2013 法文原句与页码；其书目明确把法文来源登记为：

`Jean-Luc Marion, Étant donné: Essai d'une phénoménologie de la donation, Paris: PUF, 2013 [1997].`

至少得到三条跨版本锚点：

| Kosky 英译页 | ED 2013 页 | Schulzki 给出的对应内容 |
|---|---:|---|
| p. 198 | p. 327 | intuition 不再暴露于 concept，而使其过度曝光的段落 |
| p. 217 | pp. 355–356 邻域 | `témoin` / 不能总体看见过剩给予的段落；法文短引明确落 p. 356 |
| p. 225 | p. 370 | `l’intuition subvertit, donc précède toute intention...`；即本项目 §23 目标论证的核心句 |

这三条并不是对 2013 整本书建立固定偏移；恰恰相反，它们说明**固定页码偏移不可假定**。但它们足以否定“只因两个版本都写着 p. 295，就把 2013 p. 295 当作历史 ED 1997 p. 295 / BG p. 211 的直接版本确认”这种做法。

特别地，已知英译 p. 198 的对应法文 2013 位置已经在 p. 327，而 BG p. 211 在英译文本次序上更晚。除非另有证据证明 2013 增订版对相关章节进行了大规模倒序／重复重排，否则 2013 p. 295 不能承担 BG p. 211 对应页的角色。项目不把这种“通常文本次序应保持”的推断升级成直接 crosswalk；它只用于**撤销错误的同页号推断并指导下一步搜索**。

## 3. p. 295 现在还能支持什么

### 3.1 它仍是独立的 Marion 书本 primary evidence

2013 p. 295 的 direct-indexed 文本仍然属于 Marion 本人的 *Étant donné* 书本正文；因此它可以继续作为 horizon / saturation 语义存在于 2013 增订版中的 primary 证据。

但其用途现在被严格限定为：

- 说明 2013 书本正文中确实存在 horizon / saturation 相关讨论；
- 与 Marion 1996 作者论文、Djian、Murga 等共同支持“不要把 related horizon、conditioning horizon、exhaustive horizon 词义化为同一关系”的谨慎；
- **不**作为 BG pp. 209–212 指定目标页的直接证据。

### 3.2 `Independent` 的弱接口不依赖错误页码映射

`Independent` 的 primary 动机仍主要来自已经核验的 Marion 1996 p. 117–118：作者反对一般取消 horizon，并把问题放在 horizon 的先行限定／condition-of-possibility 角色上。2013 p. 295 可以作为独立书本旁证，但在找到其可靠 crosswalk 前，不再被写成 BG p. 211 的书本版本确认。

因此形式层结论不变：

```text
Independent p ⟹ NonExhaustible p      ✗   (无额外条件)

(Independent p → NonExhaustible p)
↔
(Captured p → ¬ Independent p)
```

这里没有任何一条因 p. 295 的重新定位而失效；变化只发生在**历史证据归属**。

### 3.3 `Captured` 仍不等同 Marion 的 `saturates a horizon`

Cairn 索引中的 `sature l'horizon` 是 Marion 的现象学术语；本项目 `Captured p` 仍只是

```text
∃ h, situated p h ∧ Exhausts p h
```

其中 `Exhausts` 仅相对于当前 aspect 词汇。没有新证据建立二者语义同构，所以不新增 `Saturated` 别名，不把 `ExhaustiveCaptureConditions` 升格为 Marion 前提。

## 4. 更新后的 2013 搜索导航

Schulzki 的锚点只允许**保守导航**，不能做线性插值：

- Kosky p. 198 ↔ ED 2013 p. 327；
- Kosky p. 217 ↔ ED 2013 p. 356 邻域；
- Kosky p. 225 ↔ ED 2013 p. 370。

因此：

- 如果 2013 版在这一部分保持论证顺序，BG pp. 209–212 对应文本应在 2013 p. 327 之后、p. 356 之前寻找；这只是 **ORDER-BOUND SEARCH WINDOW**，不是精确 crosswalk；
- BG p. 225 的核心 intuition/intention 句已有 ED 2013 p. 370 的 **SECONDARY-EXACT-CROSSWALK**；
- BG p. 226 的继续段落仍待更精确的 2013 锚点或 direct primary reading。

历史版本的原停止门不变：BG pp. 209–212、225–226，或 ED 1997 pp. 292–297、314–315，仍是最清楚的指定目标页。

## 5. 本轮外部查重／复用决定

### 工程／证明层

- `novaspivack/phenomenology-lean` 最新 `main` 仍为 `75230e4eab333ad0fc47573747521ccc1a31a163`（2026-05-20）；
- `cbenzmueller/LogiKEy` 最新 `master` 仍为 `b29954b0876d7991baf12f17378f31700f9de759`（2026-09-13）；
- GitHub 全局检索 `horizon Marion saturated exhaustive conditioning` 未定位到新的 external formal-philosophy 同型 API，实质命中仍主要是本仓，其他结果为无关词典／数据文件。

所以本轮没有需要移植的新 proof API，也没有新的形式缺口；继续复用当前 Lean Core 三轴和 58 条已审计结果。

### 方法／同题解释／版本劳动

- LogiKEy、AFP、computational hermeneutics 继续作为方法 prior art；
- Murga、Djian、Falabretti 等继续限制历史解释新颖性；
- Schulzki 2015 本轮被复用的不是一种新 Marion 学说，而是**明确同时引用英译页和 2013 法文页的版本证据**；
- E.Leclerc / Decitre 的版本元数据用于确认 2013 是校订增订、重新分页的第四版；不把零售元数据当哲学文本。

复用决定：**纠正来源映射，不新增 Lean 结构。**

## 6. 对停止条件的影响

本轮不是关闭停止门，而是防止错误地提前关闭它。

当前最稳妥的状态是：

1. ED 2013 p. 295 保持 `PRIMARY-DIRECT-INDEXED-BOOK-PAGE`，但同时标记 `UNMAPPED-TO-BG-TARGET`；
2. BG pp. 209–212 ↔ ED 1997 pp. 292–297、BG pp. 225–226 ↔ ED 1997 pp. 314–315 的历史 crosswalk 继续由 Miller / Mackinlay / Steinbock 的双版本引注支持；
3. 2013 版建立独立 pagination track：已知 p. 327、p. 356、p. 370 三个可用锚点，不能与 1997 页码混写；
4. direct-primary 仍需合法直接取得目标 BG / ED 1997 正文，或先建立可靠的 2013 精确对应再直接读取相应 2013 页／正式重印。

形式证明链不变，仍必须以最终提交对应 CI 的重新构建与公理审计为准。