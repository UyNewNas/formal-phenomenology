# Marion “Sketch” 重印与合法访问路径审计

核查日期：2026-09-17。

本页只处理**版本来源、重印关系与合法访问路径**。它不把出版社元数据、目录或二手引注冒充成已经直接阅读 *Being Given* 指定页，也不靠页数差做未经证实的页码平移。

## 1. 目标版本仍然是什么

首个研究问题当前要求直接核对：

- Jean-Luc Marion, *Being Given: Toward a Phenomenology of Givenness*, Jeffrey L. Kosky trans., Stanford University Press, 2002，BG pp. 209–212、225–226；或者
- 借助已经建立的 BG/ED 双版本交叉，直接核对法文 *Étant donné* 的 ED pp. 292–297、314–315。

De Gruyter / Stanford 当前公开页面可确认 §21 `Sketch of the Saturated Phenomenon: The Horizon` 从 BG p. 199 开始、§22 从 p. 212 开始、§23 从 p. 221 开始，但目标正文仍显示为受限内容：

- https://www.degruyterbrill.com/document/doi/10.1515/9780804785723/html
- https://www.degruyterbrill.com/document/doi/10.1515/9780804785723-025/html

因此出版社目录本身仍是 `PRIMARY-PUBLISHER-METADATA`，不是 `PRIMARY-DIRECT-PAGE`。

## 2. Fordham 2013 *The Essential Writings*

Fordham University Press / De Gruyter Brill 的正式章节页确认 Marion 本人的 `Sketch of the Saturated Phenomenon` 收于 Kevin Hart 编 *The Essential Writings*，pp. 108–134：

- https://www.degruyterbrill.com/document/doi/10.1515/9780823292905-006/html

页面当前仍提示正文不可访问。因此这个入口继续记为：

`PRIMARY-PUBLISHER-METADATA / ALTERNATE-REPRINT-PATH`

它证明存在一条正规的作者文集入口，但在没有直接逐段比较前，不由标题或总页数推断 BG 页码与该文集页码之间存在固定偏移。

## 3. Routledge 2004 *Phenomenology: Critical Concepts in Philosophy*, vol. 4

本轮确认了另一条更明确的重印 provenance。

Dermot Moran 的作者公开稿 `Immanence, Self-Experience, and Transcendence in Edmund Husserl, Edith Stein and Karl Jaspers` 在脚注中明确把 Marion 的 `Sketch of the Saturated Phenomenon` 定位为 *Being Given* pp. 199–221，并说明它**重印于** Dermot Moran / Lester Embree 编 *Phenomenology: Critical Concepts* (Routledge, 2004), vol. 4, pp. 5–28：

- https://www.ucd.ie/t4cms/Immanence%20Self%20Experience%20Transcendence%202008.pdf

Routledge 官方产品页独立确认该套书由 Lester Embree / Dermot Moran 编辑、2004 年出版，并列出 Volume IV：

- https://www.routledge.com/Phenomenology-Critical-Concepts-in-Philosophy/Embree-Moran/p/book/9780415310383

Google Books 的 Taylor & Francis 书目页也独立确认 Volume 4 的编辑、出版社、年份和 ISBN，并在检索词中出现 `saturated phenomenon`：

- https://books.google.com/books/about/Phenomenology.html?id=a_a5bp4BlRYC

证据状态：

`SECONDARY-EXACT-REPRINT-PROVENANCE + PUBLISHER-METADATA`

这里的“重印”关系来自 Moran 的明确书目脚注；Routledge / Google Books 用于独立确认承载该重印的正式出版物。当前研究环境没有合法暴露 vol. 4 pp. 5–28 的完整正文，因此它仍**不能关闭** direct-primary gate。

## 4. 为什么这个 provenance 有用

它带来三个实际收敛：

1. **不再把合法获取路线只绑定在 Stanford/De Gruyter 单一平台。** BG `Sketch` 至少存在正式 Routledge 重印的明确书目链。
2. **不重新猜重印范围。** Moran 的脚注给出 BG pp. 199–221 ↔ Routledge vol. 4 pp. 5–28 的整体重印范围；这比依据篇名或页数自行推断可靠。
3. **仍不做逐页算术映射。** 整体范围长度接近，不等于每一页可以用常数偏移精确对应；目标 BG 209–212 仍需直接看到原页或重印中的对应正文并用文本锚点核对。

## 5. 对首问的影响

这项发现是**来源工程**进展，不改变已证明的逻辑：

- `UniversalStructure ↛ ClosureBridge`；
- `Independent ↛ NonExhaustible`（无额外条件）；
- 点态以及实际显现域上，`Independent → NonExhaustible` 的确切条件都是相应范围内排除 `Captured ∧ Independent`。

它也不提供新的历史 bridge：没有任何重印 provenance 本身可以推出 `situated ∧ Exhausts → conditions`。

所以当前正确动作是继续利用正式重印路径寻找可合法直接读取的目标正文，而不是新增 horizon-combination、intuition/intention 或其他自由 primitive。
