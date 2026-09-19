# Marion §21：正式重印／聚合访问路线审计（2026-09-19）

## 1. 本轮对象与仓库停点

本轮从 PR #31 `research/first-question-main-theorem-20260918` 的 exact head
`28b730b77fe6521c5b61797c6643582ca368e506` 接续；`master` 仍为
`c6f527875c0a905c33dac68176ed01a2c64b97c3`。

首问的窄形式层已经由 `first_question_complete_formal_answer` 聚合；当前唯一实质 stop gate
仍是合法 direct-body review：*Being Given* §21 pp. 209–212 / early *Étant donné*
pp. 292–297，或能可靠映射这段修订正文的正式译本／重印。

本轮不引入新 primitive 或 Lean lemma。新增对象是两个此前只登记了书目 provenance 的正式重印访问路线，
以及它们当前能否实际提供 target body。

## 2. Routledge 2004 正式重印：Google Books 只确认篇章范围，未暴露 target body

公开 Google Books 记录：

- Dermot Moran / Lester Embree (eds.), *Phenomenology: Critical Concepts in Philosophy*, vol. 4,
  Taylor & Francis / Routledge, 2004，ISBN `0415310423 / 9780415310420`；
- 目录直接列出 Marion `Sketch of the saturated phenomenon the horizon` 从卷内 p. 5 开始；
- 下一篇 `Speech and religions the Word of God` 从 p. 29 开始。

因此正式重印篇的整体范围仍可锁定为 **pp. 5–28**。这与既有 Moran 作者稿中的重印书目一致。

本轮进一步按标题、`horizon`、`depends on no horizon`、`saturates the horizon`、
`delimiting anteriority` 等文本锚点检索公开 Google Books 表面。当前公开结果只返回目录、common terms
和其他被授权显示的 selected/popular pages，没有暴露 Marion 这篇 pp. 5–28 的可连续正文，也没有
提供可在本运行中合法逐页审阅的 target pages。

状态：

`FORMAL-REPRINT-PROVENANCE-CONFIRMED / RANGE-5-28-CONFIRMED / TARGET-BODY-NOT-EXPOSED`

## 3. Fordham 2013 *The Essential Writings*：正式收录确认，但 chapter body 仍受限

De Gruyter Brill / Fordham 的正式书页继续直接确认：

- Jean-Luc Marion, *The Essential Writings*, ed. Kevin Hart, Fordham University Press, 2013；
- `Sketch of the Saturated Phenomenon` 为 pp. **108–134**；
- DOI family `10.1515/9780823292905`，该章登记为 `10.1515/9780823292905-006`。

正式平台的同书章节页面对普通章节显示 access restriction；当前公开索引没有提供本章 target body。
因此该重印继续只作为正式 primary provenance / alternate carrier，不能以“正式收录”替代 direct reading。

状态：

`FORMAL-REPRINT-PROVENANCE-CONFIRMED / CHAPTER-108-134 / PUBLIC-BODY-NOT-AVAILABLE`

## 4. WorldCat → Internet Archive 路线：`Access free` 标签不能按字面升级为可读正文

WorldCat 对同一 2013 Fordham eBook 的公开记录显示一个 `Access free` 链接，目标指向
Internet Archive item `essentialwriting0000mari`。本轮实际跟随该公开链接并读取 item metadata。

Internet Archive 自己明确返回：

- `Access-restricted-item: true`；
- collection 包含 `printdisabled`；
- 页面 `DOWNLOAD OPTIONS` 为 `No suitable files to display here`；
- item metadata 列出受限 LCP PDF/EPUB identifiers，但本轮**没有**尝试登录、借阅、调用受限文件端点、
  绕过 print-disabled / LCP 控制或推断隐藏正文。

因此 WorldCat 的聚合 UI 标签不能作为“正文已公开自由取得”的证据。该 route 当前不能用于关闭 stop gate。

状态：

`AGGREGATOR-LINK-FOUND / ARCHIVE-ITEM-ACCESS-RESTRICTED / NO-DIRECT-BODY-REVIEW`

这项核查也修正一个潜在误判：以后不能因为 WorldCat 显示 `Access free` 就直接把 Internet Archive item
记为开放全文；必须继续实读目标 item 的访问状态。

## 5. De Gruyter 2020 *Being Given* 正式 chapter DOI：仍是 metadata / TOC，不是正文访问

正式 De Gruyter Brill 书页公开确认：

- eBook ISBN `9780804785723`；
- §21 `Sketch of the Saturated Phenomenon: The Horizon` 起于 p. 199；
- §22 起于 p. 212；
- PhilPapers / Crossref 路径给出 §21 DOI `10.1515/9780804785723-024`。

本轮直接打开 §21 chapter HTML 路径时，当前网页读取环境得到 HTTP 405；搜索索引只稳定暴露书级目录和
其他章节的访问壳，没有 target body。因此这一正式路线仍只能用于版本、页段和 DOI provenance，
不能冒充 pp. 209–212 已读。

状态：

`PUBLISHER-CHAPTER-DOI-CONFIRMED / TARGET-BODY-NOT-RETRIEVED`

## 6. 外部解释基线的反向核查

本轮同时再次检索 BG p. 209–211 的同题研究。公开可读 secondary sources 继续一致指出：

- Marion 的 saturated phenomenality 不能简单化为 `Horizonless`；
- 讨论包含一个 horizon、多个／无限 horizons、以及超过既定 horizon 的路线；
- horizon 的 relatedness 与作为先行 condition / delimitation 的角色应分开。

这与本仓既有 Lahaie/Horner、Murga、Djian、Mackinlay、Moran 及 Marion 1996 primary-indexed 审计一致。
本轮没有发现外部形式工作提供本仓的 extensional
`Captured → Conditioned` 或 `situated ∧ Exhausts → conditions` bridge，也没有发现更强 Lean / Isabelle
结果要求替换现有首问形式层。

因此 reuse decision 不变：

- 历史解释采用已有 literature 作为约束与 provenance；
- Lean 侧继续保持 `situated / conditions / Exhausts` 三轴；
- 不因无法取得 §21 正文而制造新的自由 predicate、重复 wrapper theorem 或 classical assumption。

## 7. 对 Lean 与停止门的决定

这轮没有新的 direct-primary text，因此**没有来源触发的 Lean 语义修改**。
`first_question_complete_formal_answer` 继续是当前首问的最小自足 FORMAL target；把它改成更强的
saturation theory 反而会越过现有文本证据。

首问仍不完成。剩余 stop gate 继续收敛为：

1. 合法直接取得 BG pp. 209–212 / early ED pp. 292–297；或
2. 取得与该修订段可靠映射的正式译本／重印正文；
3. 对 one/multiple/combined horizon、condition-of-possibility / prior delimitation 与 manifestation 顺序做
   direct-body cross-check；
4. 若现有弱映射成立，冻结解释；若不成立，只增加首问所必需的最小接口；
5. 在 final SHA 上重新执行 root build、`scripts/check.py`、全部 axiom audit 与 Actions。

## 8. 本轮验证边界

本文件是来源／prior-art 审计增量，不修改 Lean 源码。此前 exact SHA 的成功 CI 不能自动继承到本提交；
本提交自己的 GitHub Actions 必须单独实读后才能记录为 exact-SHA green。

本轮没有使用未授权镜像正文，没有绕过登录、DRM、LCP、借阅、print-disabled 或出版社访问控制，
也没有把 search snippet / 目录 / 聚合器按钮升级成 direct-primary evidence。