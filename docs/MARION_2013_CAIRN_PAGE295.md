# Marion *Étant donné* 2013 p. 295：直接索引证据与页码纠正

初始核查：2026-09-17。版本元数据复核：2026-09-19。

本页保留 Cairn/PUF 对 2013 *Étant donné* p. 295 的直接索引证据，同时维持两项纠正：**2013 p. 295 不能被称为 BG p. 211 / ED 1997 p. 295 的“同页号 primary corroboration”**；同时，**2013 Quadrige 的商业 edition ordinal 不能再无条件写成“明确第四版”**。公开书商对同一 ISBN/EAN 给出 `2e` 与 `4e` 的冲突标记，因此版本识别应依赖 ISBN/EAN、出版日期、collection、分页轨道与文本锚点，而不是零售商 edition-number 字段。

## 1. 来源与访问状态

来源对象：Jean-Luc Marion, *Étant donné : essai d'une phénoménologie de la donation*, PUF, Quadrige, 2013，纸本 ISBN/EAN `9782130624813`；同一 2013 电子载体使用 EAN `9782130807490`。

公开元数据现在必须分来源登记：

- E.Leclerc / Decitre 曾把纸本 `9782130624813` 标为 `4e édition`，Decitre 给出 533 页；
- Gibert / Chasse aux livres 对同一纸本 ISBN 标作 `2e édition`；
- Lavoisier 对电子 EAN `9782130807490` 标作 `2e édition`、540 页，而 Kobo 对同一电子 EAN 登记 PUF、2013、540 页并提供与纸本等效的页码导航，但不提供解决 ordinal 冲突的权威版本号；
- CiNii Books 对同一纸本 ISBN 登记 PUF 2013、c1997、533 p.，不提供 edition ordinal。

所以目前可以稳定确认的是：2013 Quadrige 有独立 ISBN/EAN 与独立分页轨道，且与 1997 约 452 页版本不能按相同页码直接互换。不能由这些零售元数据决定它在出版史上究竟应编号为“2e”还是“4e”。详细来源账见 `MARION_2013_PAGINATION_CORRECTION.md`。

Cairn/PUF 的精确页入口仍为：

- `https://shs.cairn.info/etant-donne--9782130624813-page-295`

此前公开索引曾直接返回 Jean-Luc Marion 的书本正文片段，并把片段定位到 **2013 p. 295**；可见锚点包括 `sature l'horizon`、`aucun horizon` 与 horizon / possibility-condition 邻域。后续直接打开该页面曾返回 HTTP 403，因此没有取得 page image，也没有绕过访问控制。

本项目继续使用两个必须同时出现的证据标签：

> **PRIMARY-DIRECT-INDEXED-BOOK-PAGE**：正式出版平台的公开索引直接返回作者书本正文并给出具体书页，但当前环境无法展开完整页面／PDF。

> **UNMAPPED-TO-BG-TARGET**：该 2013 页目前没有可靠证据证明对应 BG pp. 209–212 或 ED 1997 pp. 292–297 中的某一页。

## 2. 为什么必须撤回“同页号 corroboration”

Irina Schulzki 2015 的公开可检索文本同时引用 Kosky 英译 *Being Given* 与法文 *Étant donné* 2013，并给出至少三条跨版本锚点：

| Kosky 英译页 | ED 2013 页 | 对应内容 | 状态 |
|---|---:|---|---|
| p. 198 | p. 327 | intuition / concept saturation 段落 | SECONDARY-EXACT-CROSSWALK |
| p. 217 | pp. 355–356 邻域 | `témoin` / 不能总体看见过剩给予 | SECONDARY-EXACT-CROSSWALK |
| p. 225 | p. 370 | `l’intuition subvertit, donc précède toute intention...` | SECONDARY-EXACT-CROSSWALK |

这些锚点不能建立固定偏移，但足以否定“因为两个版本都写 p. 295 就自动对应”的做法。BG p. 198 已落到 2013 p. 327，而 BG p. 211 在英译论证次序上更晚；项目只把这用于撤销错误映射和导航，不把通常文本顺序的推断升级成 direct crosswalk。

## 3. p. 295 现在还能支持什么

### 3.1 独立的 Marion 书本 primary 旁证

2013 p. 295 的 direct-indexed 文本仍属于 Marion 本人的书本正文，因此可作为 2013 *Étant donné* 中存在 horizon / saturation 讨论的 primary 旁证；但它**不能**作为 BG pp. 209–212 指定目标页的直接证据。

### 3.2 `Independent` 的弱接口不依赖该错误页码映射

`Independent` 的 primary 动机仍主要来自已经核验的 Marion 1996 p. 117–118：作者反对一般取消 horizon，而把问题放在 horizon 的先行限定／condition-of-possibility 角色上。2013 p. 295 在找到可靠 crosswalk 前只是独立旁证。

因此形式结论不变：

```text
Independent p ⟹ NonExhaustible p      ✗   (无额外条件)

(Independent p → NonExhaustible p)
↔
(Captured p → ¬ Independent p)
```

### 3.3 `Captured` 仍不等同 Marion 的 `saturates a horizon`

Cairn 索引中的 `sature l'horizon` 是 Marion 的现象学术语；本项目 `Captured p` 仍只是

```text
∃ h, situated p h ∧ Exhausts p h
```

其中 `Exhausts` 仅相对于当前 aspect 词汇。没有证据建立二者语义同构，所以不新增 `Saturated` 别名，也不把 `ExhaustiveCaptureConditions` 升格为 Marion 前提。

## 4. 更新后的 2013 搜索导航

Schulzki 的锚点只允许保守导航：

- Kosky p. 198 ↔ ED 2013 p. 327；
- Kosky p. 217 ↔ ED 2013 p. 356 邻域；
- Kosky p. 225 ↔ ED 2013 p. 370。

因此，若 2013 载体在这一部分保持论证顺序，BG pp. 209–212 的对应文本应在 p. 327 之后、p. 356 之前寻找；这里只记作 **ORDER-BOUND SEARCH WINDOW**，不是精确 crosswalk。BG p. 225 的核心 intuition/intention 句已有 p. 370 的 **SECONDARY-EXACT-CROSSWALK**；BG p. 226 仍待更精确锚点或 direct-primary reading。

历史版本的停止门不变：BG pp. 209–212、225–226，或 ED 1997 / 早期 pp. 292–297、314–315，仍是最清楚的指定目标页。

## 5. 2026-09-19 外部查重与复用决定

本轮没有新增 Lean primitive / lemma。按 prior-art gate 做 bounded recheck：

- GitHub 针对 `horizon Marion phenomenology Lean`、`Captured Conditioned horizon` 等组合复核当前 formal-philosophy 范围；没有定位到可替换本项目 `situated / conditions / Exhausts` 三轴或首问聚合 theorem 的同型实现；
- `novaspivack/phenomenology-lean` 与 LogiKEy 仍分别是直接 formal-phenomenology 先例与计算哲学方法先例，而不是该窄关系层的 drop-in API；
- 同题文献继续包括 Murga、Djian、Falabretti、Mackinlay 等，限制历史新颖性但不提供本仓 extensional capture→conditioning bridge。

本轮另复核公开学术文献对正式西译 *Siendo dado* pp. 341–342 的精确引文：它再次支持 horizon 作为 `condición del aparecer`、一个／多个 horizon 与超出 horizon 组合的区分。该材料仍是 **SECONDARY-EXACT-QUOTATION**，不是对正式译本正文的直接阅读，不能关闭 §21 direct-primary gate。

复用决定：**修正 provenance discipline，不扩张形式语言。**

## 6. 对停止条件的影响

本轮不是关闭停止门，而是继续防止因版本元数据或页码同号而提前关闭它。当前最稳妥的状态是：

1. ED 2013 p. 295 保持 `PRIMARY-DIRECT-INDEXED-BOOK-PAGE + UNMAPPED-TO-BG-TARGET`；
2. BG pp. 209–212 ↔ ED 1997 / 早期 pp. 292–297、BG pp. 225–226 ↔ ED 1997 / 早期 pp. 314–315 继续由双版本学术引注导航；
3. 2013 建立独立 pagination track，版本 identity 不再依赖有冲突的 `2e` / `4e` 商业 ordinal；
4. direct-primary 仍需合法取得目标 BG / ED 1997 正文，或先建立可靠的正式翻译／重印／2013 对应再直接读取相应正文。

形式证明链不变，仍须以最终目标提交对应的 build、source coverage、`#print axioms` 与 Actions 实跑为准。
