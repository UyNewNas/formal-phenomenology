# Marion §21：*The Essential Writings* 图书馆路线增量审计（2026-09-19）

## 1. 本轮目标与起点

本轮只推进首个研究问题剩余的 Marion §21 direct-primary 文本门，并复核本轮新增对象的工程 prior art。写入前 PR #31 的工作分支 `research/first-question-main-theorem-20260918` 精确 head 为 `a1ebe835570c4768db35379da50b7909c7f5ce11`；该 head 的两个 GitHub Actions `verify` check run 均为 `success`，且 PR 无 submitted review / review comment。

形式层不新增 primitive 或 theorem。理由不是“没有事可做”，而是现有 `first_question_complete_formal_answer` 已经聚合首问所需的四个 kernel-checked 结论；在 §21 原典门未变之前，再造 horizon-combination / intuition / intention 谓词会增加无来源约束的自由度，违反 prior-art gate。

## 2. 工程查重：本轮无替代 API 出现

2026-09-19 本轮重新实读外部仓库当前默认分支：

- `novaspivack/phenomenology-lean@75230e4eab333ad0fc47573747521ccc1a31a163`：默认分支仍停在 2026-05-20 的 root/barrel 构建修复；未出现 Marion / horizon / exhaustibility API，可替换本仓当前 `situated / conditions / Exhausts` 三轴。
- `cbenzmueller/LogiKEy@b29954b0876d7991baf12f17378f31700f9de759`：当前提交属于 `ImplicitDisagreement` Isabelle 文档包装调整；它仍是 computational-hermeneutics / semantic-embedding 方法 prior art，而不是首问关系层的直接实现。

复用决定保持：**Lean Core 薄层 + 现有内部证明复用；不引入新依赖，不宣称基础逻辑原创。**

## 3. 新的正式发现链：WorldCat → Internet Archive

本轮从 WorldCat 的 2013 电子书记录出发，找到一条此前未在本仓单列的正式图书馆发现链：

- WorldCat：*The essential writings*，Jean-Luc Marion；Kevin Hart (ed.)，Fordham University Press, 2013，eBook；OCLC `924270665`。
- WorldCat 页面把外部访问入口标成 `Access free`，链接到 Internet Archive。
- Internet Archive item：`essentialwriting0000mari`，标题 *The essential writings*，出版社 `New York : Fordham University Press`，2013；页面列出 ISBN `9780823251063`、`9780823251070`，并回链 OCLC `924270665`。

这条链的重要性在于：它不是搜索引擎猜测或非正式镜像，而是 **OCLC 图书馆记录 → Internet Archive Books 馆藏扫描** 的可核来源；同时可以与 Fordham / De Gruyter-Brill 的出版者元数据独立互证。

## 4. 关键访问边界：`Access free` 不能被当作正文已开放

直接查看 Internet Archive item 后，访问状态比 WorldCat 的标签更严格：

- `Access-restricted-item: true`；
- collection 包含 `internetarchivebooks` / `printdisabled`；
- item 记录存在 OCR 元数据，但页面 `DOWNLOAD OPTIONS` 明确显示 `No suitable files to display here`；
- BookReader 在当前无登录、无借阅状态下只给出 JavaScript reader 壳层，没有暴露 §21 正文。

因此本轮把该路线登记为：

`LIBRARY-CATALOG-DIRECT / IA-PRINTDISABLED / ACCESS-RESTRICTED / TARGET-BODY-NOT-REVIEWED`

并明确纠正一个容易发生的证据等级错误：**WorldCat 的 `Access free` 是链接/馆藏发现标签，不足以推出目标正文已可匿名读取。** 本项目不绕过借阅、登录、DRM 或 preview 限制，也不把 OCR 存在性当成已读正文。

## 5. 与正式出版者路线的三角互证

本轮同时重新核查 Fordham / De Gruyter-Brill：

- *The Essential Writings*，Fordham University Press, 2013，ISBN `9780823251063`；
- De Gruyter-Brill 正式书页 DOI `10.1515/9780823292905`；
- 目录直接列出 Marion, `Sketch of the Saturated Phenomenon`, pp. 108–134；
- 该章独立 DOI 为 `10.1515/9780823292905-006`；
- 当前正式平台仍把该章正文置于访问限制后，没有在匿名 HTML 中展开 body。

因此现在可以把“正式重印路线”的 **出版身份、篇名、页段、章节 DOI、图书馆馆藏扫描** 四项互相锁定，但仍不能把这些 metadata 组合成 direct-primary body review。

## 6. 导航信号与证据隔离

公开搜索索引中的非出版者副本会返回该章内部的 `§21` 标题及与 BG 209–212 相同的 horizon / condition-of-possibility 论证顺序。这只用于确认我们追踪的是正确章节、帮助设计后续合法检索锚点。

依照本仓规则，这些非正式副本：

- **不作为作者正文证据**；
- **不用于冻结历史解释**；
- **不用于关闭停止门**；
- 不在本文件转录长段正文。

后续若获得合法的 Fordham / De Gruyter / Internet Archive 借阅正文，只需用已知锚点核验其确为 `§21`，再与 BG 209–212 / early ED 292–297 crosswalk 对齐。

## 7. 对首问解释的影响

本轮没有新 primary body，因此不修改既有历史归属：

1. `situated` 继续表示与 horizon 的相关/显现结构；
2. `conditions` 继续表示 horizon 的先行限定、possibility-condition 角色；
3. `Exhausts` 继续只是本项目 aspect 语言中的穷尽覆盖；
4. `Independent` 仍只作为“不受 horizon 的先行条件化”的弱接口；
5. `NonExhaustible` 仍是独立模型轴，不等同 Marion 的完整 saturated phenomenon；
6. `Captured` 不能因同一个自然语言词 `saturate` 或 `horizon` 出现就偷换为 Marion 的 saturation。

现有 1996 primary-indexed Marion 文本、Merleau-Ponty primary pages 与同题 secondary literature 已足以解释为什么三轴应分开；本轮只把 2013 正式重印的合法获取路线收得更窄，没有增加新的哲学公理。

## 8. 形式层反向核查与最小工作决定

重新以首问形式目标检查当前 `first_question_complete_formal_answer`：

- bare `UniversalStructure` 不蕴含 `ClosureBridge`；
- 在实际显现域，`Independent → NonExhaustible` 的精确冲突正规形是不存在 `appears ∧ Captured ∧ Independent` witness；
- 从排斥式到实际 `Conditioned` witness 额外需要 captured-domain double-negation stability；
- `related / independent / non-exhaustible` 与 `ConditioningIsSituated` 有联合一致性见证。

这些结论已覆盖“有视域是否必然可被某个视域穷尽”以及“兼容/冲突所需确切前提”的窄形式内容。新图书馆路线没有引入任何改变 theorem statement 的文本证据，所以本轮选择 **不增加 Lean 声明**，避免把来源访问问题错误转化为 theorem-count 问题。

## 9. 停止门与下一入口

首问仍 **未完成**。现在 §21 路线按优先级收敛为：

1. 通过合法匿名/机构/借阅入口直接查看 *The Essential Writings* pp. 108–134 中对应 §21 的正文，并以标题和句子锚点确认其与 BG 209–212 / early ED 292–297 的重印关系；或
2. 直接查看 BG 209–212；或
3. 直接查看 early ED 292–297；或
4. 找到另一份正式、可可靠映射的 §21 重印/译文正文。

一旦获得 direct-primary body，先冻结 `Independent` 的弱解释边界，再在**同一最终 SHA**重新执行 root import coverage、`lake build`、`python3 scripts/check.py`、全部 `#print axioms` 审计并核对 GitHub Actions；在此之前不把 metadata、受限馆藏、二手精确引文或导航镜像冒充停止条件完成。

### 本轮来源入口

- WorldCat OCLC 924270665: `https://search.worldcat.org/title/The-essential-writings/oclc/924270665`
- Internet Archive item: `https://archive.org/details/essentialwriting0000mari`
- Fordham University Press: `https://fordhampress.com/the-essential-writings-hb-9780823251056.html`
- De Gruyter-Brill book DOI: `https://doi.org/10.1515/9780823292905`
- De Gruyter-Brill chapter DOI: `https://doi.org/10.1515/9780823292905-006`

本轮没有把访问受限解释成“没有前人工作”，也没有因为 WorldCat 显示 `Access free` 就把未读正文升级成 primary evidence。