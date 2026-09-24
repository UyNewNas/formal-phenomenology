# Marion §21：公开 EPUB 预览路线审计（2026-09-19）

## 1. 范围与仓库停点

本轮从 PR #31 `research/first-question-main-theorem-20260918` 的 exact head
`39e29433f2b0fe9e8c0b26c73b724f7fdda55eca` 接续。`master` 仍为
`c6f527875c0a905c33dac68176ed01a2c64b97c3`。

开始前重新读取 `AGENTS.md`、README、`docs/ROADMAP.md`、`docs/SOURCES.md`、
PR #31 与 Issue #1 的最新状态。当前形式层已经由
`first_question_complete_formal_answer` 聚合并在先前 exact SHA 上通过 kernel / axiom audit；
唯一实质 stop gate 仍是 Marion *Being Given* §21 pp. 209–212 / early *Étant donné*
pp. 292–297 的合法 direct-primary body，或能可靠映射该段的正式重印／译文正文。

本轮不引入新 primitive、lemma 或历史归属。新增对象只是**访问路线和版本载体**，因此先做来源查重与合法公开入口核验。

## 2. 新增检索对象

围绕 PUF 电子版 EAN `9782130807490` 实际核查以下公开商业／发行页面：

- Lavoisier e-librairie 产品页：
  `https://e.lavoisier.fr/produit/72567/9782130807490/etant-donne`
- Lavoisier 页面公开的 `Télécharger un extrait` endpoint：
  `https://e.lavoisier.fr/extract/523630`
- Rakuten Kobo 产品页（同一 EAN，公开提供 preview/sample 控件）；
- Casa del Libro 产品页（同一 EAN，公开标示 `Leer primeras páginas`）；
- E-librairie Leclerc / Vivlio 产品页（同一 EAN，公开标示 `Lire un extrait`）；
- 既有 De Gruyter-Brill §21 单章 DOI `10.1515/9780804785723-024`、
  Routledge 2004 Volume 4 Google Books 正式目录，以及 PhilPapers 单章元数据作为版本／篇名交叉。

同时继续排除未授权全文镜像：即使搜索引擎能返回作者文字片段，也不把非正式镜像用于关闭 direct-primary stop gate。

## 3. Lavoisier 的公开 excerpt 已确认是真正 EPUB 响应

Lavoisier 产品页当前直接显示：

- 作者 Jean-Luc Marion；出版社 PUF；Collection `Quadrige`；
- 电子版 EAN `9782130807490`；纸本 EAN `9782130624813`；
- eBook / ePub，540 页；
- 页面提供无需登录即可见的 `Télécharger un extrait` 链接。

本轮从该公开链接正常跟随到 `https://e.lavoisier.fr/extract/523630`。网页读取器没有把它误当 HTML：
endpoint 实际返回 `application/epub+zip`，因此读取器以“unsupported content-type”停止。

这比此前仅登记“存在公开 excerpt endpoint”更进一步：现在已确认该按钮的目标**确实是 EPUB payload**，不是登录页、购买跳转或 HTML 营销页。

但本轮运行环境的通用下载器无法解析该 host，而网页读取器又不支持 EPUB 二进制；因此**没有取得或解包 excerpt body**。没有绕过登录、DRM、地区、借阅或 preview 边界，也不根据文件大小猜测 excerpt 覆盖范围。

状态：

`PUBLIC-PUBLISHER-RETAIL-EXCERPT / EPUB-CONTENT-TYPE-CONFIRMED / BODY-NOT-INGESTED`

## 4. 多个独立零售入口确认同一 PUF 电子载体具有公开 sample/preview 路线

同一 EAN `9782130807490` 的公开页面还给出互相独立的预览入口：

- Kobo：`Pré-visualizar agora` / sample；页面登记 PUF、法文、540 页、EPUB 2；
- Casa del Libro：`Leer primeras páginas`；
- Leclerc / Vivlio：`Lire un extrait`；
- Cultura：`feuilleter`。

Kobo 的产品元数据还明确登记电子书支持**与纸本等效的页码导航**、目录导航及按页跳转。
这意味着：若后续某个公开 sample 正常暴露目标段，便可以在同一 PUF 电子载体内保留页码语义，而不必用字符位置猜纸本页。

这仍然只是**访问基础设施证据**。本轮没有从这些页面获得 §21 target body，也没有证明任何 sample 一定覆盖 §21。

状态：

`SAME-EAN-MULTI-RETAIL-PREVIEW-CONFIRMED / PRINT-EQUIVALENT-PAGINATION-METADATA / TARGET-BODY-NOT-REVIEWED`

## 5. 正式重印与单章入口的交叉仍保持原等级

Routledge 2004 *Phenomenology: Critical Concepts in Philosophy*, vol. 4 的 Google Books 正式记录继续直接列出：

- `Sketch of the saturated phenomenon the horizon` 从卷内 p. 5 开始；
- 下一篇 `Speech and religions the Word of God` 从 p. 29 开始。

因此 Marion 重印篇在该卷的整体范围仍可确定为 pp. 5–28；但 Google Books 当前没有向本运行暴露目标正文。

PhilPapers 继续独立确认 *Being Given* §21 的篇名、pp. 199–212 与单章 DOI
`10.1515/9780804785723-024`。这些是正式 provenance / metadata，不是正文阅读。

## 6. 对解释和 Lean 的反向核查

本轮新事实只改变“公开合法访问路线是否真实存在”的技术把握，不改变已冻结到 PR #31 的形式关系：

```text
situated    -- related / in-horizon relation
conditions  -- horizon as prior conditioning relation
Exhausts    -- exhaustive coverage in the current aspect language
```

没有新作者正文要求修改如下已验证结论：

1. `UniversalStructure ↛ ClosureBridge`；
2. appearing-domain `Independent → NonExhaustible` 的 exact FORMAL condition 是不存在
   `appears ∧ Captured ∧ Independent` witness；
3. witness-producing conditioning bridge 额外需要 captured-domain double-negation stability；
4. related + weakly independent + non-exhaustible profile 有有限兼容见证。

因此本轮**不新增 Lean declaration**。这是 prior-art/source gate 的正向决定：形式缺口已经关闭，当前缺口是书本版本解释证据；添加自由 primitive 或重复包装 theorem 只会增加无来源约束的自由度。

## 7. 验证边界

提交前 PR #31 head `39e29433f2b0fe9e8c0b26c73b724f7fdda55eca` 的两个 `verify` runs
`35401981011` / `35401977609` 已成功；前一 formal-target head
`a1ebe835570c4768db35379da50b7909c7f5ce11` 已记录 10 modules、78 audited theorems、
root build success、78/78 axiom audit clean。

本文件是来源审计增量，不改 Lean 源码。**本次新提交自己的 Actions 状态必须另行实读；在成功前不得沿用旧 SHA 的绿色状态。**

## 8. 剩余 stop gate 与下一入口

首问仍不完成。下一入口按收益排序：

1. 在不登录、不购买、不绕过 DRM/preview 控制的前提下，正常摄入上述公开 EPUB sample；
2. 先检查 sample 的 manifest / TOC / page-list 是否覆盖 §21，再决定是否存在可直接审阅的 target body；
3. 若 sample 不覆盖 §21，则停止在同一路线重复抓取，转向正式图书馆电子访问、De Gruyter 单章开放状态变化、或明确收录 §21 的正式译本／重印；
4. 一旦 direct body 可读，以 BG/early-ED crosswalk 和文本锚点复核 `related horizon`、`condition of possibility`、one/multiple/combined horizon 的顺序；
5. 若当前弱映射被正文支持，冻结解释并在同一最终 SHA 重跑 `lake build`、`python3 scripts/check.py`、root coverage、全部 `#print axioms` 与 GitHub Actions；若正文迫使语义改变，只增加首问必需的最小接口并重新走 prior-art gate。

本轮没有把公开 sample 按钮本身当作已读原典，也没有把二手精确引文、搜索 snippet 或非正式镜像升级成 primary body。