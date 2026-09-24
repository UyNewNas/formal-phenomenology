# *Étant donné* 2013：PUF 目录元数据优先级复核

日期：2026-09-24

对象：首问剩余 direct-primary source gate；只纠正版本／分页来源层级，不改变 Lean 语义。

## 1. 本轮为什么重查

现有 `MARION_VERSION_CROSSWALK.md` 仍保留一个过强旧句：把 2013 Quadrige 纸本 ISBN `9782130624813` 写成“公开元数据明确为第四版、533 页”，并把 E.Leclerc / Decitre 的零售字段当作主要版本元数据。仓库较新的 `MARION_2013_PAGINATION_CORRECTION.md` 已经记录 `2e` / `4e` ordinal 冲突，但 crosswalk 尚未同步。

本轮不以零售商多数票决定版本身份，而优先检查出版社自己的目录材料。

## 2. PUF / Humensis 目录：同一 ISBN 的出版社侧记录

公开的 PUF 2018 总目录（Humensis 托管，`Tarif général PUF 2018`）在哲学条目中登记：

- Jean-Luc Marion, *Étant donné. Essai d’une phénoménologie de la donation*；
- **540 p.**；
- **2e édition 2013**；
- 对应条形码 / ISBN 为 `9782130624813`。

本轮通过公开 web 索引重新核到该 PDF 条目；没有绕过登录、借阅或 DRM。由于当前 web fetch 对该 PDF 返回异常状态，未把它夸称为本轮 page-image review；但出版社目录的可检索条目本身足以作为比书商字段更高优先级的 edition-metadata 证据。

状态：**PUBLISHER-CATALOG-METADATA / DIRECT-INDEXED**。

## 3. 同 ISBN 的公开元数据冲突

### 支持 `2e édition` / 540 页

- PUF 2018 总目录：`2e édition 2013`, 540 p.；
- Gibert：同一 ISBN，`Numéro d'édition 2`, 540 pages；
- Chasse aux livres：同一 ISBN，`2e édition`, 540 pages；
- Fnac：同一 ISBN，540 pages（未解决 ordinal，但与 540 页轨道一致）。

### 支持 `4e édition` / 533 页

- Decitre：同一 ISBN，`4e édition revue et augmentée`, 533 pages；
- E.Leclerc 的既有仓库记录：同一 ISBN，`4e édition corrigée et augmentée`, 533 pages；
- CiNii：同一 ISBN，533 p.，但 **不** 给 ordinal，因此只能支持 533-page carrier 的存在，不能独立支持“第四版”。

这说明至少有两个层次不能再混写：

1. **edition ordinal**：出版社目录与部分书商给 `2e`，另一些书商给 `4e`；
2. **physical pagination metadata**：公开记录同时出现 540 与 533。

因此“2013 = 明确第四版 533 页”的旧句必须降级为来源特定零售元数据，而不是稳定的版本身份结论。

## 4. 对分页 crosswalk 的实际影响

本轮不推翻仓库最重要的两轨纪律：

- 1997 / early-pagination 的 BG↔ED 精确交叉仍按 Miller / Mackinlay / Steinbock 使用；
- 2013 carrier 仍必须独立导航，不能把历史 ED 页码直接复制过去；
- Schulzki 的精确文本锚点（Kosky p.198 ↔ 2013 p.327；p.217 ↔ 355–356 邻域；p.225 ↔ p.370）仍比 edition ordinal 或总页数更可靠；
- Cairn 2013 p.295 仍是 `PRIMARY-DIRECT-INDEXED-BOOK-PAGE + UNMAPPED-TO-BG-TARGET`，不能仅因页码同号升级为 BG 211 对应页。

更严格的版本识别键继续采用：

`ISBN/EAN + publication/carrier date + collection + actual text anchor + local pagination`

而不是 `2e` / `4e` 字段。

## 5. 首问停止门

此次纠正**没有**关闭 direct-primary stop gate。合法完成路线仍是：

- 直接核 BG 209–212 与 225–226；或
- 直接核 1997/early ED 292–297 与 314–315；或
- 对 2013 carrier，先由可靠文本锚点定位，再直接读对应正文；或
- 取得可靠映射的正式重印／正式译本正文并做文本互证。

2013 载体的 edition-number 元数据冲突本身不能替代正文，也不能据此修改 `situated / conditions / Exhausts` 三轴。

## 6. 外部查重 / 复用门（本轮）

在决定不新增 theorem 之前，对当前对象做 bounded recheck：在 `novaspivack/phenomenology-lean`、`cbenzmueller/LogiKEy`、`alexoltean61/msphml-lean` 搜索 `horizon exhaust conditioning capture`，未定位到可直接替换本项目关系层的同型 API。该负结果只记录本轮复用决定，不是原创性声明。

本轮新增对象是**来源元数据纠错**，不是逻辑 API；因此不移植 Mathlib / Isabelle / Rocq / Agda 设施，也不为制造代码提交而增加自由谓词或包装 theorem。

## 7. 后续同步项

`MARION_VERSION_CROSSWALK.md`、`PRIOR_ART_2013_PAGINATION.md` 中仍把 `4e / 533` 写成稳定版本事实的句子，应以后续最小编辑同步为“来源特定冲突”；在同步前，以本文件和 `MARION_2013_PAGINATION_CORRECTION.md` 的更严格规则为准。

本文件不改变任何历史作者归属或 Lean theorem，只提高 provenance discipline。