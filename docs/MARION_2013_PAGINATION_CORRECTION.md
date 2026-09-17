# *Étant donné* 2013 分页纠正：来源、解释与停止门

核查日期：2026-09-17。

本页是本轮的**来源／解释纠错登记**。它不改变 Lean 定义或 theorem；它纠正的是此前一个可能误导停止条件的版本映射：2013 Quadrige p. 295 不再被视为 BG p. 211 / ED 1997 p. 295 的“同页号 primary corroboration”。

## 1. 纠正摘要

上一轮已经谨慎写过“2013 与 1997 页码连续性待核”，但仍把 2013 p. 295 与历史 `BG 211 ↔ ED 295` 并列成同页号 corroboration。本轮发现的版本元数据和精确 2013 页码锚点表明，这个表述仍然过强，应撤回。

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

## 2. SOURCE ledger

### SRC-2013-EDITION-A — E.Leclerc

URL: <https://www.e.leclerc/fp/9782130624813>

本轮直接查看。登记：

- Jean-Luc Marion, *Étant donné*；
- PUF；
- ISBN `9782130624813`；
- 18/09/2013；
- 533 pages；
- `4e édition corrigée et augmentée`；
- 页面公开 Electre `Feuilletage` URL。

状态：**EDITION-METADATA-DIRECT**。只支持版本／分页判断，不支持哲学归属。

### SRC-2013-EDITION-B — Decitre

URL: <https://www.decitre.fr/livres/etant-donne-9782130624813.html>

本轮直接查看。登记 `4e édition revue et augmentée`、533 pages、PUF、2013、ISBN `9782130624813`。

状态：**EDITION-METADATA-DIRECT**。与 E.Leclerc 独立交叉。

### SRC-1997-EDITION — Open Library / 1997 bibliographic record

URL: <https://openlibrary.org/books/OL305529M/E%CC%81tant_donne%CC%81>

本轮直接查看。登记 PUF 1997、ISBN `2130486770`、452 p.。

状态：**BIBLIOGRAPHIC-METADATA**。用于确认 2013 版明显更长，不推断具体新增页分布。

### SRC-SCHULZKI-2015 — Irina Schulzki

URL: <https://www.researchgate.net/publication/320169780_Love_at_Loss_Jean-Luc_Marion%27s_Concept_of_Erotic_Reduction_and_Paul_Thomas_Anderson%27s_Magnolia>

Irina Schulzki, “Love at Loss: Jean-Luc Marion’s Concept of Erotic Reduction and Paul Thomas Anderson’s *Magnolia*,” 2015, pp. 145–172。

本轮实际读取的是 ResearchGate 暴露的**HTML 可检索全文**。页面虽然题头含 `(PDF)`，本轮没有取得／分析 PDF page image，因此不写成 PDF screenshot review。

精确证据：

- 正文引用 Kosky 英译 p. 225 的 intuition/intention 句；脚注给出法文原句并标 `Marion, 2013: 370`；
- 正文以英译 p. 198 讨论 intuition saturation / overexposure；脚注给出法文原句 `Ibid.: 327`；
- 正文以英译 p. 217 讨论 witness；相邻脚注把法文 witness 位置放在 2013 pp. 355–356，其中 `ne voit pas en totalité...` 明确为 p. 356；
- 书目明确写 `Étant donné ... PUF, 2013 [1997]`，并另列 Kosky 英译 *Being Given*。

状态：**SECONDARY-EXACT-CROSSWALK（2013 pagination）**。

### SRC-CAIRN-295 — Cairn / PUF p. 295

URL: <https://shs.cairn.info/etant-donne--9782130624813-page-295>

此前公开搜索索引直接返回过 Marion 2013 p. 295 书本正文锚点。本轮再次直接打开仍返回 HTTP 403。

状态：

- **PRIMARY-DIRECT-INDEXED-BOOK-PAGE**；
- **UNMAPPED-TO-BG-TARGET**；
- **NOT PRIMARY-DIRECT-PAGE**。

## 3. INTERPRETATION ledger

### I-2013-1 — 版本数字不能承担哲学对应

解释规则：`2013 p. x` 与 `1997 p. x` 的相同页码数字不提供同一段文本的证据。

理由：2013 是明确的第四版修订增订本，物理页数与 1997 版显著不同；同时 Schulzki 的精确锚点已经把 Kosky p. 198、217、225 分别放到 2013 p. 327、355–356、370。

状态：**SOURCE/INTERPRETATION DISCIPLINE**，不是哲学 theorem。

### I-2013-2 — `Independent` 的弱历史动机保持，但证据链重新分层

`Independent` 继续只表示模型中不存在 conditioning horizon。它的主要 PRIMARY 动机仍来自 Marion 1996 p. 117–118：问题不是简单取消 horizon，而是摆脱其先行限定／condition-of-possibility 角色。

2013 p. 295 仍可作为 *Étant donné* 中 horizon/saturation 讨论存在的独立 primary-indexed 旁证；但在可靠 crosswalk 前，它不再承担“BG p. 211 书本版本确认”的角色。

状态：**MODEL + PRIMARY-MOTIVATED WEAK INTERFACE**，不等于完整 saturation。

### I-2013-3 — §23 的 2013 版定位明显后移

Schulzki 把 Kosky p. 225 核心 intuition/intention 句精确锚到 2013 p. 370。这与历史 ED 1997 p. 314 的 crosswalk 并不冲突；它说明两版使用不同 pagination。

解释后果：任何来源若只写 `ED p. 314` 或 `ED p. 370`，必须同时登记使用的 edition，不能再以 `ED` 一个缩写混写。

### I-2013-4 — §21 2013 版目前只有搜索窗口

已知 Kosky p. 198 ↔ 2013 p. 327、p. 217 ↔ 2013 pp. 355–356。由于 BG pp. 209–212 位于英译这两点之间，如果相关章节次序在 2013 修订版中保持，则对应正文应在 p. 327 与 p. 356 之间。

本项目将此只登记为：

`ORDER-BOUND SEARCH WINDOW ≈ 2013 pp. 328–355`

而不是 `SECONDARY-EXACT-CROSSWALK`。任何更精确页码都需新的双版本引注或 direct-primary 文本锚点。

## 4. FORMAL / proof-map 影响

**没有 Lean 语义变化。** 当前 58 条具名 theorem/lemma 的证明地图保持不变，因为本轮发现的是 source-version defect，而不是逻辑缺口。

特别是以下结论不依赖 2013 p. 295 的版本对应：

- `horizon_structure_does_not_entail_closure`；
- `horizon_independence_does_not_imply_nonExhaustible`；
- `independent_implies_nonExhaustible_iff_capture_refutes_independence`；
- `appearing_independence_implies_nonExhaustible_iff_capture_refutes_independence`；
- `exhaustiveCaptureConditions_implies_exact_appearing_condition`；
- `exact_appearing_condition_is_strictly_weaker_than_exhaustiveCaptureConditions`。

因此本轮不新增 theorem 以制造提交量。最终必须仍对同一 8-module / 58-result baseline 重新执行 `lake build`、`scripts/check.py`、root coverage 与 `#print axioms` audit。

## 5. 对停止条件的纠正

首问尚未完成。更新后的合法停止路线：

1. **BG 路线**：直接查看 pp. 209–212、225–226；
2. **ED 1997 / early-pagination 路线**：直接查看 pp. 292–297、314–315；
3. **ED 2013 路线**：先可靠定位对应页，再 direct-read；现有导航为 §21 `~328–355`（仅 order-bound）与 §23 p. 225 核心句 `p. 370`（secondary exact）；
4. **正式重印路线**：直接取得正文，并用文本锚点与上述 crosswalk 互证。

Cairn 2013 p. 295 单独存在，不再计入目标页完成度。

这项纠正使停止条件**更可信而不是更宽松**：宁可撤回一个过强的 primary 映射，也不把版本同页号误当成原典核验。