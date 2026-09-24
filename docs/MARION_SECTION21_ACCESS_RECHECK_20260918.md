# Marion §21：合法 direct-primary 入口复查（2026-09-18）

## 1. 目的与边界

本轮只处理首个研究问题剩余的 Marion §21 direct-primary 门：寻找 *Being Given* pp. 209–212、早期 *Étant donné* pp. 292–297，或已经确认的正式重印／正式译文中对应正文的合法直接入口。

本轮不新增哲学 primitive，不把搜索结果中的二手引文当作作者正文，也不把第三方整书镜像当作合法 primary source。§23 已有 `PRIMARY-DIRECT-INDEXED-PUBLISHED-TRANSLATION` 证据，故不再重复消耗检索预算。

## 2. Stanford / De Gruyter Brill 官方入口复查

官方 *Being Given* 书页：

- <https://www.degruyterbrill.com/document/doi/10.1515/9780804785723/html>
- §21 DOI / chapter route: <https://www.degruyterbrill.com/document/doi/10.1515/9780804785723-024/html>

本轮重新核对出版社索引。官方书页继续确认：

- §21 `Sketch of the Saturated Phenomenon: The Horizon` 起于 p. 199、止于 p. 212；
- §22 起于 p. 212；
- §23 起于 p. 221；
- §21 的独立 DOI 为 `10.1515/9780804785723-024`。

但是当前公开索引只暴露目录／书目信息；本研究环境没有取得 §21 正文。直接请求 chapter HTML 仍未返回可核验正文。因此状态保持：

`PRIMARY-PUBLISHER-METADATA / TARGET BODY NOT DIRECTLY READ`

这不是新的历史证据，只是把 §21 官方 chapter DOI 与访问状态锁定得更精确。

## 3. Fordham / De Gruyter Brill 正式重印复查

正式重印：Jean-Luc Marion, `Sketch of the Saturated Phenomenon`, in Kevin Hart (ed.), *The Essential Writings*, Fordham University Press, 2013, pp. 108–134：

- <https://www.degruyterbrill.com/document/doi/10.1515/9780823292905-006/html>

出版社页面继续确认章节元数据，但明确显示当前无法访问该 chapter content。整本书页面中的公开 PDF 标识适用于 frontmatter / contents 等公开组件，不能据此推断 `Sketch` 章节本身已经开放。

因此该路线仍为：

`PRIMARY-PUBLISHER-METADATA / ALTERNATE-REPRINT-PATH / BODY RESTRICTED`

不能利用篇名和页数推断 BG 209–212 在重印中的精确页码。

## 4. 非出版社镜像的处理决定

本轮针对以下形状做了定向检索：

- `"does not depend on any horizon"` / `"condition of possibility par excellence"`；
- `"combination of horizons"` / `"absoluteness of the phenomenon"`；
- `"Sketch of the Saturated Phenomenon"` + PDF / reprint；
- De Gruyter / Cairn 精确 DOI、ISBN 与页段组合。

搜索引擎确实暴露了若干非出版社站点的整书／章节文本，其中可见与 §21 已知二手引文相符的句段。由于这些站点不是作者、出版社、正式机构仓储或已核验授权入口，本项目**不读取它们来关闭 direct-primary 门，也不登记为 primary evidence**。

这个拒绝是有意的来源纪律，而不是“没有找到文本”：文本可见性与可作为合法、可追溯研究证据使用是两件不同的事。

## 5. 二手 exact quotation 的状态不变

本轮定向检索再次命中已经登记的同题研究，例如 King-Ho Leung 对 BG 211–212 的 exact quotation、Brock Mason 对 BG 210–211 三种 horizon relation 的整理。它们继续用于：

- 锚定应在 direct-primary 中核对的语义结构；
- 交叉检查版本／段落位置；
- 证明当前 `situated / conditions / Exhausts` 分层并非凭空选择。

但它们仍是 `SECONDARY-EXACT`，不能替代 §21 作者正文。

## 6. 对形式化与停止门的影响

本轮没有发现需要修改 Lean 语言的证据：

- `UniversalStructure ↛ ClosureBridge` 的形式反例不受影响；
- `Independent → NonExhaustible` 仍只在显式 bridge 条件下成立；
- `Captured`、`NonExhaustible`、`Independent` 仍不能命名为完整 Marion `Saturated`；
- captured-domain stability / decidability 层级仍是纯 FORMAL 证明论结构，不获得历史归属。

因此本轮不新增 theorem / model / API。首问停止门继续保持 **OPEN**，唯一未闭合的文本核心仍是 §21 的合法 direct-primary context。

## 7. 下一入口

后续只优先消费能够真正改变证据等级的路线：

1. BG pp. 209–212 的出版社／作者／正式机构直接正文；
2. 早期 ED pp. 292–297 的合法直接正文；
3. 已确认正式重印／正式译文的对应正文，并以文本锚点而非页数算术与 BG/ED crosswalk 互证；
4. 若取得正文，再冻结 `Independent` 的弱历史归属，并在同一最终 SHA 上重跑完整 build、`scripts/check.py`、root-import coverage 与 axiom audit。

普通二手引文增加、非授权镜像或只提供目录的出版社页面都不再重复触发语言扩张或完成判断。
