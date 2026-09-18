# Marion §21：正式章节与重印路线增量审计（2026-09-19）

## 1. 本轮范围

本轮只推进首个研究问题仍未关闭的 Marion §21 direct-primary 文本门，不新增哲学 primitive，也不把出版社目录、检索摘要、二手引文或受限预览冒充作者正文。

开始写入前的工作分支为 `research/first-question-main-theorem-20260918`，head `cd8f1c211a6455d08d2f64e92ae7e92ac914bf99`；PR #31 仍开放。现有形式入口 `first_question_formal_answer` / `first_question_witness_boundary` / `first_question_compatibility_witness` 已足够表达首问的窄形式层，因此本轮先做来源去重和访问路线收敛，而不是为了 theorem count 增加自由谓词。

目标仍是合法直接核查以下任一路径的相应正文：

- *Being Given* (Kosky, 2002) pp. 209–212；
- early / 1997 *Étant donné* pp. 292–297；
- 能以标题、版本链和文本锚点可靠对应 §21 的正式重印／译文正文。

§23 一侧已有已出版捷克译文的 direct-indexed body audit，本轮不重复。

## 2. 本轮检索与外部工作门

实际检索对象包括：

- `"Sketch of the Saturated Phenomenon: The Horizon" 9780804785723-024`；
- `"Phenomenology: Critical Concepts in Philosophy" "Sketch of the saturated phenomenon the horizon"`；
- `Étant donné §21 horizon Marion`；
- 既有 Lavoisier / Google Books / De Gruyter-Brill / Routledge 正式路线；
- Charles University 对捷克选译 `Bytnost fenoménu. Pasáže z díla Etant donné` 的篇目说明。

本轮没有发现可替换当前 Lean 关系层的外部 formal API，也没有提出新的非平凡逻辑结构；因此工程 prior-art gate 的结论不变：继续复用当前 `situated / conditions / Exhausts` 三轴，不引入 LogiKEy、Mathlib 或其他重依赖。

## 3. §21 正式章节 DOI：入口被精确到单章，但正文仍未取得

§21 的章节级书目记录已经精确到：

- Jean-Luc Marion, `§21 Sketch of the Saturated Phenomenon: The Horizon`；
- *Being Given: Toward a Phenomenology of Givenness*；
- pp. 199–212；
- DOI `10.1515/9780804785723-024`；
- 正式 De Gruyter-Brill 路径：
  `https://www.degruyterbrill.com/document/doi/10.1515/9780804785723-024/html`。

本轮普通网页读取该正式页面仍未返回章节正文；当前工具得到的是站点访问层失败，而非可引用的作者 body。独立书目索引 PhilPapers 可以确认同一章节题名、页码和 DOI，但它仍只是元数据交叉，不能升级为 direct-primary text。

状态：

`PRIMARY-PUBLISHER-CHAPTER-ENDPOINT / BODY-NOT-INGESTED`

这比只知道整本书目录更精确地固定了合法入口，但**没有关闭** BG 209–212 的正文门。

## 4. Routledge 2004 正式重印：目录范围得到更直接确认

Google Books 的 Taylor & Francis / Routledge Volume 4 页面：

- *Phenomenology: Critical Concepts in Philosophy, Volume 4*；
- Dermot Moran / Lester Embree 编；
- Taylor & Francis, 2004；
- volume id `a_a5bp4BlRYC`；
- `https://books.google.com/books?id=a_a5bp4BlRYC`。

本轮可见目录直接列出：

- `Sketch of the saturated phenomenon the horizon` 从卷内 p. 5 开始；
- 下一篇从 p. 29 开始。

这与 Dermot Moran 作者公开稿中“*Being Given* `Sketch` pp. 199–221 重印于该卷 pp. 5–28”的书目脚注相互吻合。因此，正式重印的**承载卷、篇名和整体页段**现在不再只依赖 Moran 的二手书目陈述，而有正式图书目录的独立可见证据。

但本轮 Google Books 预览只返回选择性页面／封面；尝试进入预览并未取得卷内 pp. 5–28 的可读正文。不能按 `BG page - 194` 之类常数偏移自行映射 BG 209–212；只有直接看到正文后才能以句子锚点确认对应位置。

状态：

`FORMAL-REPRINT-TOC-DIRECTLY-CONFIRMED / TARGET-BODY-NOT-REVIEWED`

这是一项 provenance 收敛，不是哲学结论。

## 5. 捷克选译路线对 §21 可明确排除

Charles University 的课程书目把已出版捷克选译：

`Bytnost fenoménu. Pasáže z díla Etant donné`

明确对应到 *Étant donné* 的若干指定节。本项目此前已经利用其 §23 选段直接核查 intuition / intention / constitution 一侧；课程说明同时显示现有公开选段覆盖 §2、§19、§23，而**没有列 §21**。

因此：

- 该捷克出版物仍是 §23 的有效 primary-translation 路线；
- 不能把同一选译泛化成 §21 的来源；
- 后续 §21 检索不再重复把这条已知选译当作潜在正文入口，除非发现另一份明确收录 §21 的正式版本。

这是本轮的路线去重结果。

## 6. Lavoisier 公共 EPUB excerpt：再次正常访问，证据等级未升级

既有公开 endpoint：

`https://e.lavoisier.fr/extract/523630`

仍对应零售商页面的 `Télécharger un extrait`，资源类型此前已确认是 `application/epub+zip`。本轮只尝试正常公开访问；当前研究运行环境仍不能稳定摄入其 EPUB body，没有绕过登录、DRM、地区或预览控制。

因此继续保持：

`PUBLIC-EXCERPT-ENDPOINT-CONFIRMED / BODY-NOT-INGESTED`

不能推断 sample 是否覆盖 Book IV / §21。

## 7. 对解释与 Lean 的影响

本轮新增的是**来源路线收敛**，没有作者正文新句子改变解释。因此现有三轴仍保持：

```text
situated    -- 与 horizon 相关／在 horizon 中显现
conditions  -- horizon 的先行限定／条件化角色
Exhausts    -- 当前 aspect 语言中的穷尽覆盖
```

并继续保持以下边界：

- `UniversalStructure ↛ ClosureBridge` 是已验证的纯 FORMAL 结论；
- `Independent → NonExhaustible` 不是定义性真理，首问实际显现域的精确 FORMAL 条件仍是排除 `appears ∧ Captured ∧ Independent` witness；
- `Captured` 不能直接翻译成 Marion 的 `saturates a horizon`；
- `NonExhaustible` 不能直接定义完整 saturated phenomenon；
- §21 direct-primary text 尚未取得，所以不能把 `Independent` 的弱历史接口升级成更强的 Marion 原典定理。

因此本轮**不修改 Lean theorem statement**。这不是缺少形式推进，而是查重／来源审计后的最小复用决定：当前 kernel-checked interface 已覆盖首问，新增 primitive 只会制造无来源约束的自由度。

## 8. 停止门与下一入口

首问停止门仍为 **OPEN**。下一轮只优先做能改变证据等级的动作：

1. 正常取得 De Gruyter §21 正文、Routledge 2004 重印正文，或任一合法公开 excerpt 的 §21 body；
2. 用已登记的 BG/early-ED crosswalk 和文本锚点核对“related horizon”“horizon as prior condition”“一个／多个／组合 horizon”三层；
3. 若正文支持当前弱映射，则冻结解释，不扩展完整 saturation 语言；若正文迫使当前首问显式引入新结构，只增加最小必要接口并重新走 prior-art gate；
4. 在最终解释冻结的同一 SHA 上重跑 `lake build`、`python3 scripts/check.py`、root import coverage、全部 `#print axioms` 与 GitHub Actions。

本轮没有把访问受限当作“没有外部工作”，也没有因取得章节 DOI／重印目录就把 source provenance 冒充 direct-primary review。

## 9. 2026-09-19 03:58 +0800 增量复核：正式预览仍未暴露 §21 body

本次接续时先实读 PR #31 当前 head `c45e04b7e2c6c3af98285c30162a06acf5ad5993`、review/comment、最新 Actions，以及当前 `FirstQuestion.lean`。工程查重也再次核对：

- `novaspivack/phenomenology-lean` `main` 仍为 `75230e4eab333ad0fc47573747521ccc1a31a163`；
- `cbenzmueller/LogiKEy` `master` 仍为 `b29954b0876d7991baf12f17378f31700f9de759`。

二者都没有出现应替代当前三轴模型或 `FirstQuestion` 薄封装的新 API，因此本轮不新增逻辑设施。

重新检查 Stanford 2002 *Being Given* 的 Google Books 限制预览时，平台仍可直接确认全书元数据与目录边界（§21 从 p. 199 开始、§22 从 p. 212 开始、§23 从 p. 221 开始），但预览入口只暴露封面／选择性页面，目标 pp. 209–212 正文没有出现；站内词项跳转也没有返回可核验的目标页 body。证据等级保持：

`PRIMARY-PUBLISHER-SCAN-METADATA / LIMITED-PREVIEW / TARGET-BODY-NOT-REVIEWED`

Routledge 2004 Volume 4 的 Google Books 页面也再次只确认正式重印的目录范围（该篇从 p. 5 开始、下一篇从 p. 29 开始），没有暴露 pp. 5–28 中可与 BG 209–212 逐句互证的正文。因此不能用页码线性偏移替代文本锚点。

## 10. p. 209 secondary exact quote 的直接全文复核与元数据纠正

本轮直接打开 Cheongho Lee 2017 `From Phenomenology to Ethics: Intentionality and the Other in Marion’s Saturated Phenomenon` 的 PhilArchive/PhilPapers 可访问正文。正文 p. 67 的脚注 7 明确把一段关于“不应完全取消 horizon，否则 manifestation 本身会受阻”的 Marion 句子定位到 *Being Given* p. 209。正式书目记录为：

- Cheongho Lee, *Journal of Ethics: The Korean Association of Ethics* 1(116) (2017), pp. 63–83；
- DOI `10.15801/je.1.116.201711.63`。

需要特别纠正检索噪声：某些 PDF 索引页错误显示 `...201711.1`，该 DOI 实际对应同期期刊另一篇 pp. 1–18 文章；本项目以后以 PhilPapers 书目记录和 Lee 文章的 pp. 63–83 元数据为准。

证据等级可从“仅知道有精确短引”收紧为：

`SECONDARY-DIRECT-PDF-TEXT / EXACT-BG-209-ANCHOR`

它与已经直接核过的 Marion 1996 p. 117 primary-indexed 论证同向，继续支持“`Independent` 不应解释成 `Horizonless`”；但它仍然是二手转引，**不能关闭** §21 direct-primary stop gate。

## 11. 形式层反向核查：不新增 theorem 是本轮的去重结论

本轮重新审查 `FormalPhenomenology/FirstQuestion.lean` 及其依赖后，未发现 §21 新材料要求改变三个项目级入口。特别是：

- `horizon_structure_does_not_entail_closure` 已由 `splitModel_situatedExcess` 给出实际显现、实际 related horizon 且不可穷尽的有限反模型，不依赖 horizonless vacuity；
- `first_question_formal_answer` 已把这个否定答案与实际显现域的精确 `Captured ∧ Independent` 冲突条件打包；
- `first_question_witness_boundary` 已把从否定式排斥到实际 conditioning witness 的额外条件精确定位为 captured-domain double-negation stability；
- `first_question_compatibility_witness` 已复用现有 finite model，而不是凭新增自由谓词制造“兼容性”。

因此再添加“structured + nonexhaustible witness”之类 wrapper 只会重复 `splitModel_situatedExcess` / `situatedExcess_refutes_closureBridge` 的既有内容，没有完成首问的新语义缺口。本轮明确选择**不新增 Lean 声明**，并要求本次文档提交由同一分支 Actions 再次跑完整 root/source-coverage/kernel-axiom 检查。

停止门仍只有一个实质缺口：合法 direct-primary §21 body。这个访问缺口不是哲学反证，也不是新颖性证据；在取得正文前不扩展完整 saturation 语言。
