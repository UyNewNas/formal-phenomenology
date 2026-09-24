# Marion §21：西班牙语正式译本公开预览路线复核（2026-09-19）

## 1. 范围与接续点

本轮从 PR #31 `research/first-question-main-theorem-20260918` 的 exact head
`456abfe8d0dada9a783af0e34bc60de8ba5eb7a6` 接续。开始前重新实读默认分支协作规范、
PR #31、Issue #1、`docs/ROADMAP.md`、`docs/SOURCES.md`，并复核
`docs/MARION_SECTION21_TRANSLATION_GENEALOGY_AUDIT_20260918.md`，避免把已经登记的
西班牙语正式译本路线重新包装成新发现。

此前已确认：Jean-Luc Marion, *Siendo dado: ensayo para una fenomenología de la donación*,
Javier Bassas Vila 译，Madrid: Editorial Síntesis, 2008，ISBN `9788497565561`，是 1997
*Étant donné* 的正式西班牙语译本；二手精确 crosswalk 已把 §21 的核心目标压到
SD pp. 341–342（更宽搜索窗 pp. 338–345）。本轮新增对象不是译本 provenance，
而是**公开零售预览控件是否真的提供可合法直接核查该目标页的正文入口**。

形式层当前已经有 `first_question_complete_formal_answer` 聚合首问所需逻辑结论；
因此本轮遵守 prior-art/source gate：只有新作者正文迫使解释改变时才新增 primitive/theorem，
不为来源轮次制造 theorem count。

## 2. Buscalibre：公开页面确实显示 `Empezar a Leer`，但本运行未取得正文

直接核查当前公开产品页：

- https://www.buscalibre.com/int-es/libro-siendo-dado/9788497565561/p/2874328

页面当前公开显示：

- `Empezar a Leer`；
- 书名 *Siendo Dado*；
- Jean-Luc Marion / Javier Bassas Vila；
- Editorial Síntesis；2008；西班牙语；516 页；
- ISBN-10 `8497565568`、ISBN-13 `9788497565561`。

这确认预览 surface 与已登记正式译本是**同一 ISBN 载体**，不是相似标题或另一版。
但网页读取器没有把 `Empezar a Leer` 暴露为一个稳定、可跟随的正文链接；页面内另一个
AWS API `siguiente` 链接在当前运行中请求超时，而且没有证据表明它就是该预览控件的
正文 endpoint，因此本项目不把它猜作 preview API，也不尝试构造隐藏参数。

本轮没有登录、购买、调用私有接口、绕过地区／会话／DRM，也没有把搜索引擎缓存片段
冒充直接阅读。

状态：

`FORMAL-TRANSLATION / SAME-ISBN-PUBLIC-PREVIEW-SURFACE / TARGET-BODY-NOT-REVIEWED`

## 3. Casa del Libro / 其他书业页：继续只能核对版本元数据

再次核查 Casa del Libro 的同 ISBN 页面：

- https://www.casadellibro.com/libro-siendo-dado/9788497565561/1189780

当前公开页面继续确认译者、Síntesis、ISBN、2008、516 页等版本信息；本运行没有取得
可直接展开至 pp. 341–342 的正文预览链接。Agapea 与 `Todos tus libros` 同样只增加了
同一版的独立书目 corroboration，没有提供目标页 body。

因此这些入口的证据等级仍是：

`PRIMARY-FORMAL-TRANSLATION-METADATA / RETAIL-CORROBORATION`

而不是 `PRIMARY-DIRECT-BODY`。

## 4. 反向核查：精确二手引文仍不能替代 direct-primary gate

本轮搜索再次返回公开学术材料对 SD §21 的精确页码／引文：例如公开期刊正文将
“不一般取消 horizon、而是解除其 delimiting anteriority”定位至 SD p. 341，并把第一种
horizon saturation 定位至 p. 342；其他同题研究也复述 one / multiple / no-combination
三层结构。

这些材料与仓库已经登记的 Roggero、Llorente、UNED crosswalk 同向，因此提高的是
**导航置信度**，不是来源等级。按照既有停止规则：secondary exact quotation 即使逐字、
页码精确，也不等于本项目直接查看了正式译本 pp. 341–342 的作者正文上下文。

同理，搜索结果仍能命中非出版社整书扫描／Scribd 页面；这些材料没有被用于关闭门槛。

## 5. 对 Lean 形式层的本轮决定

新核查没有提供要求改变现有语义的作者正文。反向检查现有首问接口后，继续维持：

```text
situated    -- related / in-horizon relation
conditions  -- horizon as prior conditioning relation
Exhausts    -- exhaustive coverage in the current aspect language
```

以及已验证的边界：

1. `UniversalStructure` 不推出 `ClosureBridge`；
2. appearing-domain `Independent → NonExhaustible` 的 exact FORMAL condition 是排除
   `appears ∧ Captured ∧ Independent` witness；
3. 从 exact exclusion 到实际 `Conditioned` witness 仍额外需要 captured-domain
   double-negation stability；
4. 现有语言不把 `Captured` 或 `NonExhaustible` 定义成 Marion 的完整 saturation。

因此本轮的 Lean 工作是**对已完成形式目标做 source-triggered regression decision**：
没有新的哲学约束，就不改 `FormalPhenomenology/*.lean`，不新增自由谓词，也不重复包装
已有 theorem。这个不改代码的决定来自已实读来源门和现有 proof map，而不是跳过形式化。

## 6. 验证状态

接续 head `456abfe8d0dada9a783af0e34bc60de8ba5eb7a6` 的两次 GitHub Actions
`Lean verification`（runs `35405151087` 及同 SHA 的另一 verify run）已在本轮开始时实读为
`completed / success`。这说明接续点本身是绿色，但**不能替代本次新提交自己的验证**。

本文件只增加来源审计，不改 Lean 源码。提交后必须实读新 SHA 的 Actions；在新 SHA
成功前，不把本轮写成 build/axiom 已验收。此前 formal-target SHA 的 78/78 axiom audit
也只作为历史基线，不冒充本次结果。

## 7. 剩余停止门与下一入口

首问仍未完成。唯一实质缺口仍是合法 direct body review：

- BG pp. 209–212；或
- early ED pp. 292–297；或
- 能明确映射修订本 §21 的正式译文／重印正文，当前最窄西译目标是 SD pp. 341–342。

下一轮不应再机械重复搜索同一书目页。优先入口调整为：

1. 只在公开控件允许的范围内继续寻找 Buscalibre / 出版社可直接跟随的 sample 资源；
2. 检查 Editorial Síntesis、Google Books 或图书馆公开预览是否新增合法页级正文；
3. 若公开 retail preview 仍不暴露 body，则转向正式图书馆电子访问或明确收录 §21 的
   publisher-hosted excerpt/reprint，而不是猜测动态 API；
4. 一旦正文可读，按既有 crosswalk 检查提问语境、`horizon in general`、
   delimiting/conditioning anteriority 与 one/multiple/no-combination 顺序；
5. 只有正文要求改变解释时才做最小 Lean 修改；否则冻结解释，并在同一最终 SHA
   重跑 full build、`scripts/check.py`、root coverage、全部 axiom audit 与 Actions。

本轮没有把“页面存在预览按钮”升级成“已读目标页”，也没有用受限或非正式整书镜像
绕过 direct-primary gate。
