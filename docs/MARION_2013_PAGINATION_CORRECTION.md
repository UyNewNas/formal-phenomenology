# *Étant donné* 2013 分页纠正：来源、解释与停止门

初始核查：2026-09-17。版本元数据复核：2026-09-19。

本页是**来源／解释纠错登记**。它不改变 Lean 定义或 theorem；它首先纠正 2013 Quadrige p. 295 曾被误当作 BG p. 211 / ED 1997 p. 295 的“同页号 primary corroboration”，并在 2026-09-19 进一步纠正一个版本元数据表述：**公开书商对同一 2013 ISBN / 同一电子 EAN 的“第几版”标记互相冲突，因此 edition ordinal 不能再被当成稳定版本标识。**

## 1. 纠正摘要

上一轮已经谨慎写过“2013 与 1997 页码连续性待核”，但仍把 2013 p. 295 与历史 `BG 211 ↔ ED 295` 并列成同页号 corroboration。版本元数据和精确 2013 页码锚点表明，这个表述过强，应撤回。

正确结构现在是两条独立轨道：

```text
BG / Kosky
  ├─ ED 1997 / early pagination: Miller + Mackinlay + Steinbock crosswalk
  │    BG 209–212 ↔ ED 292–297
  │    BG 225–226 ↔ ED 314–315
  │
  └─ ED 2013 / Quadrige pagination: Schulzki exact anchors
       BG 198 ↔ ED 2013 p.327
       BG 217 ↔ ED 2013 pp.355–356 neighborhood
       BG 225 ↔ ED 2013 p.370
```

2013 p. 295 仍是正式出版平台曾直接索引的 Marion 书本页，但其与上述 BG 目标段的对应关系目前**未建立**。

2026-09-19 的新增纠正不撤销“两轨分页”结论，只撤销一种过强的书目说法：不能再无条件写“2013 版就是明确的第四版”。目前更严格的版本识别键应是 **ISBN/EAN + 出版日期 + collection + 页数／页码轨道 + 文本锚点**；edition ordinal 只能逐来源登记，不能拿来替代文本 crosswalk。

## 2. SOURCE ledger

### SRC-2013-EDITION-A — E.Leclerc（历史核查记录）

URL: <https://www.e.leclerc/fp/9782130624813>

2026-09-17 核查时登记：

- Jean-Luc Marion, *Étant donné*；
- PUF；
- ISBN `9782130624813`；
- 18/09/2013；
- 533 pages；
- `4e édition corrigée et augmentée`；
- 页面公开 Electre `Feuilletage` URL。

状态：**EDITION-METADATA-DIRECT / SOURCE-SPECIFIC-ORDINAL**。只支持该页面当时如何标注版本，不再把“4e”提升为跨来源稳定身份属性。

### SRC-2013-EDITION-B — Decitre（2026-09-19 fresh recheck）

纸本：<https://www.decitre.fr/livres/etant-donne-9782130624813.html>

电子版：<https://www.decitre.fr/ebooks/etant-donne-9782130807490_9782130807490_2.html>

2026-09-19 再次直接检索到：

- 纸本 ISBN/EAN `9782130624813`：`4e édition revue et augmentée`，533 pages，PUF / Quadrige，18/09/2013；
- ePub EAN `9782130807490`：同样标作 `4e édition revue et augmentée`，540 pages，PUF，18/09/2013。

状态：**EDITION-METADATA-DIRECT / SOURCE-SPECIFIC-ORDINAL**。Decitre 内部纸本／电子版一致，但这一 ordinal 与其他公开书商冲突。

### SRC-2013-EDITION-C — Gibert / Chasse aux livres（2026-09-19 fresh countercheck）

Gibert：<https://www.gibert.com/etant-donne-essai-d-une-phenomenologie-de-la-donation-2e-edition-4484341.html>

Chasse aux livres：<https://www.chasse-aux-livres.fr/prix/2130624812/etant-donne-jean-luc-marion-9782130624813>

两者对**同一纸本 ISBN/EAN `9782130624813`** 都标作 `2e édition`，并给出 2013 / PUF / Quadrige；页数登记为 540。Gibert 还显式给出 `Numéro d'édition 2`。

状态：**COMMERCIAL-METADATA-DIRECT / ORDINAL-CONFLICT**。

这足以否定“所有公开版本元数据都一致确认第四版”这一说法；它不决定到底哪个 ordinal 才是出版史上的权威编号。

### SRC-2013-EBOOK-D — Lavoisier / Kobo（2026-09-19 fresh countercheck）

Lavoisier：<https://e.lavoisier.fr/produit/72567/9782130807490/etant-donne>

Kobo：<https://www.kobo.com/fr/fr/ebook/etant-donne-2>

- Lavoisier 对同一电子 EAN `9782130807490` 当前登记 PUF / Quadrige、540 pages、`2e édition`，并把其商业 publication 字段显示为 27/02/2025；同页仍关联纸本 EAN `9782130624813`。
- Kobo 对同一电子 EAN `9782130807490` 登记 PUF、18/09/2013、540 pages、EPUB 2，并明确提供与纸本等效的 page-number navigation；Kobo 当前页面没有提供可据以解决 `2e` / `4e` 冲突的 edition ordinal。

状态：**SAME-EAN-METADATA-CONFLICT / PAGINATION-CARRIER-EVIDENCE**。

因此 Lavoisier 的 2025 commercial publication 字段也不能单独被解释为“2025 出现了一套新的文本修订版”。在缺少 PUF 版本说明或正文差异证据时，更安全的登记是：同一 EAN 的当前商业元数据发生过再发行／刷新式变化，**内容版本关系未核定**。

### SRC-2013-BIBLIO-E — CiNii Books（2026-09-19 fresh bibliographic check）

URL: <https://ci.nii.ac.jp/ncid/BB15762048>

CiNii 对 ISBN `9782130624813` 登记 `Presses universitaires de France, 2013, c1997`、533 p.，没有给出 `2e` 或 `4e` ordinal。

状态：**LIBRARY-BIBLIOGRAPHIC-METADATA / ORDINAL-NEUTRAL**。

这进一步说明后续版本识别应优先依靠稳定书目字段与文本锚点，而不是零售商 edition-number 字段。

### SRC-1997-EDITION — Open Library / 1997 bibliographic record

URL: <https://openlibrary.org/books/OL305529M/E%CC%81tant_donne%CC%81>

2026-09-17 直接查看。登记 PUF 1997、ISBN `2130486770`、452 p.。

状态：**BIBLIOGRAPHIC-METADATA**。用于确认 2013 ISBN / pagination track 与早期版不同，不推断具体新增页分布。

### SRC-SCHULZKI-2015 — Irina Schulzki

URL: <https://www.researchgate.net/publication/320169780_Love_at_Loss_Jean-Luc_Marion%27s_Concept_of_Erotic_Reduction_and_Paul_Thomas_Anderson%27s_Magnolia>

Irina Schulzki, “Love at Loss: Jean-Luc Marion’s Concept of Erotic Reduction and Paul Thomas Anderson’s *Magnolia*,” 2015, pp. 145–172。

实际读取的是 ResearchGate 暴露的**HTML 可检索全文**。页面虽然题头含 `(PDF)`，本项目没有把该状态写成 PDF page-image review。

精确证据：

- 正文引用 Kosky 英译 p. 225 的 intuition/intention 句；脚注给出法文原句并标 `Marion, 2013: 370`；
- 正文以英译 p. 198 讨论 intuition saturation / overexposure；脚注给出法文原句 `Ibid.: 327`；
- 正文以英译 p. 217 讨论 witness；相邻脚注把法文 witness 位置放在 2013 pp. 355–356，其中 `ne voit pas en totalité...` 明确为 p. 356；
- 书目明确写 `Étant donné ... PUF, 2013 [1997]`，并另列 Kosky 英译 *Being Given*。

状态：**SECONDARY-EXACT-CROSSWALK（2013 pagination）**。

### SRC-CAIRN-295 — Cairn / PUF p. 295

URL: <https://shs.cairn.info/etant-donne--9782130624813-page-295>

此前公开搜索索引直接返回过 Marion 2013 p. 295 书本正文锚点；后续直接打开曾返回 HTTP 403。

状态：

- **PRIMARY-DIRECT-INDEXED-BOOK-PAGE**；
- **UNMAPPED-TO-BG-TARGET**；
- **NOT PRIMARY-DIRECT-PAGE**。

## 3. 2026-09-19 外部查重门

本轮没有新增 Lean primitive / lemma；仍按 prior-art gate 对当前对象做 bounded recheck：

- GitHub repository/code search：`formal phenomenology Lean horizon Marion`、`horizon Marion`；未定位到可直接替换当前 `situated / conditions / Exhausts` 三轴或 `first_question_complete_formal_answer` 的同型 Lean / Isabelle / Rocq / Agda API。这个负结果只是本轮检索范围记录，不是“没有前人”的原创性声明。
- 同题解释 fresh search 再次命中 Brock Mason 对 *Being Given* 210–211 的三种 horizon relation 梳理，以及 Shane Mackinlay 对一个／多个／任何组合 horizon 的讨论；它们继续属于已登记的 secondary prior art，并强化“不能把 saturation 压成单一逐 horizon 的 `NonExhaustible`”这一已有边界。
- 没有发现新的同题来源把本项目的 extensional `Captured → Conditioned`、captured-domain double-negation stability，或 same-horizon `situated ∧ Exhausts → conditions` 作为 Marion 原典命题。

复用决定保持不变：外部工作继续作为解释／方法基线；当前版本冲突只要求修正 provenance discipline，不要求扩张形式语言。

## 4. INTERPRETATION ledger

### I-2013-1 — 页码同号与 edition ordinal 都不能承担哲学对应

解释规则：

1. `2013 p. x` 与 `1997 p. x` 的相同页码数字不提供同一段文本的证据；
2. `2e` / `4e` 这样的商业 edition ordinal 在当前来源互相冲突，也不能作为跨来源 identity key。

两轨分页仍然成立的真正依据是：2013 有独立 ISBN / Quadrige 载体与不同 pagination，且 Schulzki 的精确锚点把 Kosky p. 198、217、225 分别放到 2013 p. 327、355–356、370。这个结论**不依赖**决定 2013 到底应该编号为第 2 版还是第 4 版。

状态：**SOURCE/INTERPRETATION DISCIPLINE**，不是哲学 theorem。

### I-2013-2 — `Independent` 的弱历史动机保持，但证据链重新分层

`Independent` 继续只表示模型中不存在 conditioning horizon。它的主要 PRIMARY 动机仍来自 Marion 1996 p. 117–118：问题不是简单取消 horizon，而是摆脱其先行限定／condition-of-possibility 角色。

2013 p. 295 仍可作为 *Étant donné* 中 horizon/saturation 讨论存在的独立 primary-indexed 旁证；但在可靠 crosswalk 前，它不再承担“BG p. 211 书本版本确认”的角色。

状态：**MODEL + PRIMARY-MOTIVATED WEAK INTERFACE**，不等于完整 saturation。

### I-2013-3 — §23 的 2013 版定位明显后移

Schulzki 把 Kosky p. 225 核心 intuition/intention 句精确锚到 2013 p. 370。这与历史 ED 1997 p. 314 的 crosswalk 并不冲突；它说明两条 pagination track 不同。

解释后果：任何来源若只写 `ED p. 314` 或 `ED p. 370`，必须同时登记使用的 edition / carrier，不能再以 `ED` 一个缩写混写。

### I-2013-4 — §21 2013 版目前只有搜索窗口

已知 Kosky p. 198 ↔ 2013 p. 327、p. 217 ↔ 2013 pp. 355–356。由于 BG pp. 209–212 位于英译这两点之间，如果相关章节次序在 2013 载体中保持，则对应正文应在 p. 327 与 p. 356 之间。

本项目将此只登记为：

`ORDER-BOUND SEARCH WINDOW ≈ 2013 pp. 328–355`

而不是 `SECONDARY-EXACT-CROSSWALK`。任何更精确页码都需新的双版本引注或 direct-primary 文本锚点。

### I-2013-5 — 同一 EAN 的商业日期变化不自动意味着正文版本变化

电子 EAN `9782130807490` 在 Kobo / Decitre 保持 2013 出版日期，而 Lavoisier 当前页面显示 2025 publication；同时 edition ordinal 也出现 `4e` / `2e` 冲突。

因此：

- 后续若摄入公共 sample，应以 exact EAN、内部 manifest / page-list / TOC、可见 copyright / title-page metadata 与实际文本锚点确认载体；
- 不从 retailer 的 publication 字段猜测它属于新的哲学文本阶段；
- 更不能据此重排 BG ↔ ED crosswalk。

## 5. FORMAL / proof-map 影响

**没有 Lean 语义变化。** 当前首问形式层已经由 `first_question_complete_formal_answer` 聚合；本轮发现的是 source-version metadata defect，而不是逻辑缺口。

特别是以下结论不依赖“2013 到底是 2e 还是 4e”的书商字段：

- `horizon_structure_does_not_entail_closure`；
- `horizon_independence_does_not_imply_nonExhaustible`；
- `independent_implies_nonExhaustible_iff_capture_refutes_independence`；
- `appearing_independence_implies_nonExhaustible_iff_capture_refutes_independence`；
- `appearing_independence_implies_nonExhaustible_iff_no_captured_independent_witness`；
- `appearing_witness_bridge_iff_exact_and_captured_stability`；
- `first_question_complete_formal_answer`。

因此本轮不新增 theorem 以制造提交量，也不以来源元数据矛盾为理由引入新的 philosophical predicate。提交后的 Lean / root coverage / axiom audit 仍必须由该提交自己的 CI 重新验证，不能继承旧 SHA 的绿色状态。

## 6. 对停止条件的纠正

首问尚未完成。更新后的合法停止路线：

1. **BG 路线**：直接查看 pp. 209–212、225–226；
2. **ED 1997 / early-pagination 路线**：直接查看 pp. 292–297、314–315；
3. **ED 2013 / Quadrige carrier 路线**：先可靠定位对应页，再 direct-read；现有导航为 §21 `~328–355`（仅 order-bound）与 §23 p. 225 核心句 `p. 370`（secondary exact）；版本识别写 ISBN/EAN / 日期 / pagination / text anchor，不依赖 `2e` / `4e` ordinal；
4. **正式重印／正式译本路线**：直接取得正文，并用文本锚点与上述 crosswalk 互证。

Cairn 2013 p. 295 单独存在，不再计入目标页完成度。Lavoisier / Cultura 等公开 sample 路线若未来可正常摄入，也必须先核 exact carrier 与覆盖范围，再判断能否关闭 §21 direct-primary gate。

这项纠正使停止条件**更可信而不是更宽松**：宁可撤回一个过强的 edition-number 描述，也不把零售商元数据的一致性假设冒充版本史事实。