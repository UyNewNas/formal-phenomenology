# Marion §21：Eden / DILICOM sample 语义与路线降噪审计（2026-09-19）

## 1. 本轮对象与仓库停点

本轮从 PR #31 `research/first-question-main-theorem-20260918` 的 exact head
`cd090796bafaabe1d570657ccb2fe1c1c331d880` 接续；`master` 仍为
`c6f527875c0a905c33dac68176ed01a2c64b97c3`。

开始前重新读取 `AGENTS.md`、README、`docs/ROADMAP.md`、`docs/RESULTS.md`、
`docs/INTERPRETATION.md`、`docs/SOURCES.md`、`docs/PRIOR_ART.md`、Issue #1/#2/#3、
开放 PR #31 及最新 checkpoint。当前首问形式层仍由
`first_question_complete_formal_answer` 聚合；唯一实质停止门仍是 Marion 修订后 §21
目标正文的合法 direct review：BG pp. 209–212 / early ED pp. 292–297，或能可靠映射该段的
正式译本／重印（西译核心目标 SD pp. 341–342）。

上一轮已经把 Cultura 的公开 `feuilleter` 解析到精确 Eden asset：

`https://assets.edenlivres.fr/medias/c9/df343fcd743828ca0a15ea8253c96b9e65a642.epub`

但 body 尚未摄入。本轮不重复“再抓一次 URL”，而是核查这种 Eden asset 在公开图书供应链元数据中的
**语义角色**，以避免把一个公开 `.epub` hash 过度解释成“可能就是任意位置的原书全文”。

---

## 2. 外部查重与复用门

### 2.1 工程／形式化层

本轮再次做 bounded GitHub repository/code search（`formal phenomenology` / `Lean` / `horizon` /
`Marion`）。没有发现可直接替换当前 `situated / conditions / Exhausts` 三轴的同型 Lean / Isabelle /
Rocq / Agda implementation。已有工程基线继续是：

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163`：直接 Lean
  formal-phenomenology 先例，但当前审计未发现 Marion / horizon / conditioning / capture 同型 API；
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759` 与 AFP computational
  metaphysics / computational hermeneutics：方法先例，不是本首问的可直接 import 定理。

这是 bounded negative search，不是原创性声明；本轮也没有重新构建外部仓库，因此不冒充外部 build 证据。

### 2.2 同题解释层

2026-09-19 的 fresh web scan 新见 Shuhei Kitagawa 2026, “A study on the cyclical relationship
between perception and movement in the concept of embodied knowledge: Through the horizon structure in
phenomenology” (DOI `10.51078/physicalarts.2026.003`)。该文讨论 Merleau-Ponty、body schema、
intentional arc 与 horizon structure，属于 Merleau-Ponty horizon / embodiment 的相邻 prior art；它不讨论
Marion，也不提供 `Captured → Conditioned`、`Independent → NonExhaustible` 或 §21 的版本映射。

James Deery 2025 的开放论文仍是更直接的本项目 Merleau-Ponty 同题基线：`horizon of sense` 被描述为
开放到进一步探索、不同观看方式和更确定化的 indeterminate horizon。这个方向继续与本仓直接核过的
Merleau-Ponty primary pages 同向，而不提供 closure bridge。

因此本轮没有新的外部结果要求替换形式层；新增对象只是 Eden sample carrier 的 provenance / semantics。

---

## 3. DILICOM 公共记录把 Eden `.epub` 放在 `ContentDescriptionDownloadLink`

Montpellier Méditerranée Métropole 的公开 DILICOM 书目记录直接暴露原始字段名。以
*Mille battements d'ailes*（EAN `9782221275917`）为例，页面明确显示：

- `ContentDescriptionDownloadLink` = `https://assets.edenlivres.fr/...epub`；
- XML 同字段把 format 标为 `EPUB`；
- 另有 `ContentDescriptionLink` 指向 `https://www.edenlivres.fr/p/...`。

公开页面：

`https://mediatheques.montpellier3m.fr/ECOLOTHEQUE/doc/DILICOM/9782221275917/mille-battements-d-ailes`

另一条 *Des jours comme des nuits*（EAN `9782812625817`）的 DILICOM 记录同时给出 PDF 与 EPUB 的
`ContentDescriptionDownloadLink`，两者都落在 `assets.edenlivres.fr/medias/...`：

`https://mediatheques.montpellier3m.fr/doc/DILICOM/9782812625817`

这里能够严格得到的是：**Eden `assets` 上的这种媒体文件，在公开 DILICOM 消费侧被作为
“ContentDescription”下载载体发布。** 这比单看扩展名 `.epub` 更能约束它的供应链角色。

不能从该字段名进一步推出：

- 每个 Eden asset 都只包含固定数量的“前几页”；
- 当前 Marion asset 一定不覆盖 §21；
- 或相反，它一定包含整本书／目标页。

覆盖范围仍必须由当前 asset 自身的 manifest / TOC / page-list / body 直接核验。

证据状态：

`PUBLIC-DILICOM-METADATA / EDEN-ASSET-AS-CONTENT-DESCRIPTION-CARRIER / TARGET-COVERAGE-UNKNOWN`。

---

## 4. 行业来源进一步支持“excerpt/sample carrier”，但不是出版社技术规范

ActuaLitté 2019 年关于 Eden Livres 数字发行的行业报道明确说，该数字仓库多年来向书商以及希望分享
发现内容的其他参与者提供电子书 **extraits en EPUB ou PDF**。来源：

`https://actualitte.com/article/10959/distribution/diffusion-numerique-l-audiolivre-objet-du-desir-et-de-toutes-les-attentions`

Eden Livres 自己的公开企业页则确认其角色是数字书分发平台，为出版社管理数字目录并通过在线书店和
图书馆门户向读者分发：

`https://communication.edenlivres.fr/`

两者合并后的保守结论是：上一轮 Cultura `feuilleter` 指向的 exact hash 最合理的分类是**授权公开
sample/content-description route**，而不是“已知正文全文入口”。ActuaLitté 是行业二手来源，不被提升为
Eden 的正式文件格式规范；DILICOM 记录也只说明 metadata role，不说明 sample 的内部切页算法。

所以对 Marion 目标 asset 的状态应继续写成：

`AUTHORIZED-PUBLIC-SAMPLE-ROUTE / EXACT-EDEN-ASSET-RESOLVED / BODY-NOT-INGESTED / TARGET-COVERAGE-UNKNOWN`。

这既比“只是一个 retailer 按钮”更强，也比“可能已拿到整本原书”更谨慎。

---

## 5. 对 §21 搜索策略的实质影响

这一轮关闭了一个会导致低价值重复抓取的歧义：**公开 Eden `.epub` 的存在本身不构成 target-body
证据。** 后续只有以下新增信息才值得升级该 route：

1. 当前 exact asset 可通过普通、授权的工具链摄入；
2. 或公开 metadata 明确说明该 exact sample 的章节／页码覆盖范围；
3. 或 retailer / publisher 正常 preview 界面直接显示 §21 target body。

如果只是再次确认同一个 hash 或再次遇到二进制读取器不支持，不再把它记作新的 source progress。

这条降噪规则不等于宣布 sample 不含 §21；当前覆盖范围仍为 **UNKNOWN**。也不允许通过登录、购买凭据、
DRM/LCP、借阅、print-disabled 或未授权 mirror 绕过访问控制。

---

## 6. 对 Lean / 解释映射的反向检查

本轮没有取得新的 Marion §21 作者正文，也没有新的 external formal result 改变现有逻辑边界。因此：

- 不新增 philosophical primitive；
- 不新增 wrapper theorem；
- 不把 `Independent` 改写成 `Horizonless`；
- 不把 `NonExhaustible` 或 `Captured` 改名／提升为 Marion 的完整 saturation；
- 不给 `Captured → Conditioned`、captured-domain stability / decidability、
  `ExhaustiveCaptureConditions` 增加历史归属。

现有三轴继续是首问的最小接口：

```text
situated    -- 与某 horizon 相关／在其视域关系中
conditions  -- horizon 作为先行条件／限定因素
Exhausts    -- 在当前 aspect language 中实现穷尽覆盖
```

本轮的正确 formal action 是**保持已经 kernel-checked 的 narrow target 不变**。这不是形式工作停滞，
而是 prior-art/source gate 的负向约束：在 source 未要求语义扩展时，不用自由 predicate 或重复定理制造进度。

---

## 7. 当前 stop gate 与下一入口

首问仍未完成。唯一实质 gate 仍为 revised §21 direct body：

- BG pp. 209–212；或
- early ED pp. 292–297；或
- revision-faithful 正式译本／重印的可靠映射正文，西译核心目标 SD pp. 341–342。

下一轮不再把“重试同一 Eden hash”本身当研究增量。优先级应转向：

1. 正式图书馆／出版社可直接读取的 §21 body；
2. 已确认 revision-faithful 的正式翻译／重印的公开正文；
3. 若工具链本身新增对授权 sample EPUB 的正常读取能力，则一次性核 manifest/TOC/page-list，判断是否覆盖 §21。

取得 direct body 后，必须核对 one / multiple / combined horizon 的次序、horizon 作为 condition-of-possibility /
prior delimitation 的语境，以及这是否支持当前 weak `Independent` mapping；若 mapping 生存，才冻结解释并在同一
final SHA 重跑 build、`scripts/check.py`、root coverage、全部 axiom audit 与 Actions。

本轮未使用未授权全文镜像，也没有把搜索 snippet、DILICOM metadata、行业报道或 sample URL 冒充原典正文。
