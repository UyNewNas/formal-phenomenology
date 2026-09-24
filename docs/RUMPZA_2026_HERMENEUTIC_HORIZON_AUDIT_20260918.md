# Rumpza 2026 与 Marion 的 hermeneutic horizon：首问同题增量审计（2026-09-18）

## 1. 本轮目的

本轮不新增 Lean primitive，也不改变首问的停止条件。目标是按 `AGENTS.md` 的 same-topic prior-art gate，检查一项 2026 年当前文献是否迫使我们修改“Marion = 无视域 / horizonless”的解释边界，并重新核对尚未闭合的 *Being Given* §21 direct-primary 路线。

首问仍是：

> “在视域中显现”是否必然意味着“能够被某个视域穷尽”；如果不能，兼容／冲突需要什么额外前提？

形式层继续区分 `situated`、`conditions`、`Exhausts`；任何历史解释升级都必须与 direct-primary 状态分开。

## 2. 新同题 prior art：Stephanie Rumpza

本轮核对：

- Stephanie Rumpza, “The Hermeneutics of Jean-Luc Marion: A New Look at an Old Critique,” *Continental Philosophy Review*；DOI `10.1007/s11007-025-09708-z`。
- Springer / Crossref 路线当前可由公开元数据和作者／聚合页交叉确认；PhilPapers 当前把正式卷期登记为 2026, vol. 59(1), pp. 81–103，同时保留 2025 online-first / earlier bibliographic record。由于公开记录对“2025 online-first / 2026 issue assignment”有两种年份口径，本项目按 DOI 绑定同一论文，不把年份差异误判为两个作品。
- 作者公开 publications 页面也登记该论文，并提供作者侧下载入口；本轮只把可直接核查的摘要／元数据当作证据，不声称已经逐页审阅出版 PDF。

公开摘要明确把一个常见批评写成：Marion 将 given 的主动性放在主体预期之外，因此看似拒绝历史、传统、文化、语言、实践等 interpretation horizons；论文的目标则是反驳这一总体评价，论证 Marion 自身已经对 hermeneutic concerns 给出足够回应。

### 对首问的影响

这一文献不能替代 *Being Given* §21，也不能直接证明本仓任何 Lean theorem；但它对解释边界有明确约束：

1. “saturated phenomenon 不受一个先行 horizon 限定”不能直接升级为“Marion 排除一切 horizon”。
2. `Horizonless` 更不应成为本项目对 saturation 的默认编码；这与已经核过的 Marion 1996 p. 117–118、Murga 2024、Djian 2018 方向一致。
3. 本项目把 `situated` 与 `conditions` 分开，不是在宣称一个新的 Marion 学说，而是在形式上保存当前研究中已经存在的解释分歧。
4. 因此不需要新增 `interpretiveHorizon`、`priorDelimits` 或新的自由 predicate。若未来扩展到 hermeneutic horizon，那会是另一个研究问题，而不是首问停止门所必需。

证据等级：

`SECONDARY-CURRENT-SAME-TOPIC-PRIOR-ART / ABSTRACT+METADATA REVIEWED`

不是 direct-primary，也不是形式依赖。

## 3. 与 Dahl 2023 的交叉

为避免只依赖一篇新论文，本轮同时复核 Darren E. Dahl, “Giving, Showing, Saying: Jean-Luc Marion and Hans-Georg Gadamer on Phenomenology, Hermeneutics, and Revelation,” *Religions* 14(10), 1250 (2023), DOI `10.3390/rel14101250` 的开放全文。

Dahl 明确把 horizon 问题写成两层：一方面，先于现象的 horizon 会对显现施加限制；另一方面，hermeneutic horizon 并不必然被取消，而可以被出现者本身打开和改写。该 secondary reading 与 Rumpza 的 current argument 同向，也与本仓 `situated / conditions` 分层相容。

复用决定仍是：**保存竞争解释，不增加形式公理。**

## 4. §21 direct-primary 路线复核

本轮再次从正式出版社路线核对 *Being Given*：

- De Gruyter Brill / Stanford 的书页 `https://www.degruyterbrill.com/document/doi/10.1515/9780804785723/html` 公开确认 Book IV 目录，§21 `Sketch of the Saturated Phenomenon: The Horizon` 起于 p. 199，§22 起于 p. 212。
- §21 的章节 DOI 已固定为 `10.1515/9780804785723-024`；PhilPapers 的 chapter record 独立登记 pp. 199–212。
- 当前环境直接请求出版社 §21 HTML endpoint 仍返回 HTTP 405；相邻 §20 的出版社 PDF 搜索结果明确带 `licenseType=restricted`。本轮没有取得 §21 的正文／page image，因此不能把官方 DOI 元数据冒充 direct-primary body。
- Vivlio / immateriel 的公开 EPUB sample endpoint `331472` 本轮仍无法在当前 web 环境直接取回正文；没有绕过预览限制、DRM 或登录。

因此 direct-primary 状态不变：

`OFFICIAL SECTION IDENTIFIED / TARGET BODY NOT INGESTED`

这次检索也遇到若干非出版社整书镜像；它们没有被用于关闭原典门，也没有被写入 primary evidence chain。

## 5. 对形式化的明确决定

本轮没有发现一个需要新增 Lean API 的哲学约束。

现有结构已经能够区分：

```text
related / situated horizon
conditioning horizon
exhaustive capture by a horizon
```

而 Rumpza / Dahl 的贡献恰好说明不能在解释层把这些轴重新压成一个 “有／无 horizon” 二值谓词。

因此：

- 不新增 `Horizonless` 的强化定理；
- 不把 `Independent` 解释成“没有任何 hermeneutic horizon”；
- 不把 `NonExhaustible` 命名为 Marion 的完整 `Saturated`；
- 不为本轮制造 theorem count。

形式主入口 `first_question_formal_answer` 与 constructive witness boundary 保持不变。它们是逻辑回答；Marion 的弱历史归属仍等待 §21 direct-primary context 冻结。

## 6. 工程／形式 prior-art 增量搜索

本轮另做 GitHub 增量 code search：`Marion horizon saturated exhaustible conditioning`。有意义的命中仍主要是本仓；其余命中为词典／数据文件，没有定位到一个可替换 `HorizonConditioning` 或首问 exact-condition theorem 的外部 Lean API。

这只是“本轮搜索没有命中”，不证明全世界不存在同型形式化。既有 `novaspivack/phenomenology-lean`、LogiKEy、AFP computational-metaphysics / computational-hermeneutics 仍按 `docs/PRIOR_ART.md` 的已固定版本作为方法／基础设施先例。

## 7. 本轮结论与下一入口

本轮取得的是**解释边界更新，不是首问完成**：

- current literature 进一步反对把 Marion 粗化成 “horizonless phenomenology”；
- 本仓三轴接口因此继续足够，不新增自由谓词；
- §21 的官方章节 DOI 和页段已经完全固定，但正文访问门仍未关闭；
- 形式主定理不需要因该文献修改。

下一轮仍优先合法 direct-primary 路线：De Gruyter / Stanford 章节访问、Vivlio/immateriel 正常公开 sample、已确认正式重印或机构公开正文。只有取得足够 §21 上下文后，才冻结 `Independent` 的弱历史归属并在同一最终 SHA 重跑完整 build / `scripts/check.py` / root coverage / axiom audit。