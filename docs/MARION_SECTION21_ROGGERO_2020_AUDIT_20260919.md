# Marion §21：Roggero 2020 的 early-ED 精确页码复核（2026-09-19）

## 1. 本轮对象与查重门

本轮只推进首个研究问题尚未关闭的 Marion §21 文本映射，不新增哲学 primitive，也不把二手引文升级成 direct-primary 证据。开始写入前，开放 PR #31 的工作分支 `research/first-question-main-theorem-20260918` 为 `e80ef08f27c3db6605ae7b88106980d204b42eac`；现有 `FirstQuestion` 三个项目级入口已经把首问的纯形式层、构造性 witness 边界和有限模型兼容性包装完成。

工程查重重新核对：

- `novaspivack/phenomenology-lean` 的 `main` 仍为 `75230e4eab333ad0fc47573747521ccc1a31a163`（2026-05-20）；针对 `horizon Marion conditioning exhaustive` 的定向代码搜索未发现可替换本仓三轴关系或 `FirstQuestion` 薄封装的 API。
- `cbenzmueller/LogiKEy` 的 `master` 仍为 `b29954b0876d7991baf12f17378f31700f9de759`（2026-09-13）；它继续是 semantic embedding / computational philosophy 的方法先例，而不是当前 Lean-Core 关系正规化所需要的依赖。

因此本轮复用决定不变：继续使用 `situated / conditions / Exhausts`，不为 theorem count 新造 horizon-combination、intention/intuition 或 saturation primitive。

## 2. 新增同题来源：Roggero 2020

Jorge Luis Roggero, “La noción de ‘fenómeno’ en la fenomenología de Jean-Luc Marion,” *Diánoia* 65(84) (2020), 167–189, DOI `10.22201/iifs.18704913e.2020.84.1586`。

已直接核对的公开出版路线：

- Diánoia / UNAM 正式文章页：<https://dianoia.filosoficas.unam.mx/index.php/dianoia/article/view/1586>；
- SciELO 开放 HTML 正文：<https://www.scielo.org.mx/scielo.php?pid=S0185-24502020000100167&script=sci_arttext>；
- CONICET Digital 书目镜像登记同一 DOI、卷期、页码和 open-access 状态：<https://repositoriosdigitales.mincyt.gob.ar/vufind/Record/CONICETDig_f2dba69fccfc413b0a31b054a21515d3>。

正文使用 Marion, *Étant donné*, **1998 年第二版修订本**，而不是本仓 2013 Quadrige pagination track；Roggero 的参考文献明确登记：`Marion, Jean-Luc, 1998, Étant donné. Essai d’une phénoménologie de la donation, 2a. ed. corregida, Presses Universitaires de France, París.` 因而这里的 p. 293–295 属于本仓正在追踪的 early-ED 页码族，不能与 2013 p. 293–295 混用。

证据等级：**SECONDARY-DIRECT-PUBLISHED-HTML / EXACT-EARLY-ED-PAGE-ANCHOR**。这是直接阅读 Roggero 的正式开放正文，但仍是 Roggero 转引 / 重构 Marion，不能冒充直接阅读 Marion 的 §21 原书页。

## 3. 对 §21 页码与语义的新增收敛

Roggero 在讨论 saturated phenomenon 的 relation 维度时明确写道：不能由此推出现象可以完全摆脱 horizon，因为那会阻止 manifestation；随后直接引 Marion 1998 p. 293 的短句：

> “usar el horizonte de otro modo para liberarse de su anterioridad delimitadora”

这给出一个独立的 early-ED **p. 293** 锚点，和此前 UNED institutional thesis / 西语 *Siendo dado* p. 341 的交叉导航落在同一语义节点：目标不是一般删除 horizon，而是摆脱 horizon 的先行 delimiting role。

Roggero 的同一脚注继续按 Marion 1998 页码区分：

1. **p. 293**：第一种 saturation figure 仍发生在 horizon 内、但“against”其限制；intuition 达到 concept / horizon 的极限而不简单越界；
2. **p. 294**：第二种 figure 中，intuition 的饱和同时填满并越过一个 horizon 的 delimitation，需要联合多个 horizons 来接收该现象；
3. **p. 295**：`n + 1` horizons 与由此打开的无限 hermeneutic 被明确关联。

这与已有 Miller / Mackinlay crosswalk、UNED exact-page navigation、Llorente 2015 的 Spanish pp. 341–344 三分结构彼此独立地收敛。重要的是，这一收敛支持的是**导航与解释分层**，不是本仓的 extensional bridge。

## 4. 对当前形式接口的反向核查

将 Roggero 的表述与当前模型逐项对照：

- “仍需要 horizon 才能 manifestation”只能为 `situated` / related-horizon 轴提供解释动机；它不推出某个 related horizon `Exhausts` 当前所有 aspects。
- “摆脱 horizon 的先行 delimiting role”支持把 `conditions` 与 `situated` 分开；它不推出 `Independent` 等价于 `Horizonless`。
- p. 293–295 的 one-horizon / multi-horizon / `n+1` horizon 层级说明完整 Marion saturation 比单个布尔谓词更丰富；因此 `NonExhaustible` 仍只能是本项目 aspect-language 中“没有 related exhaustive horizon”的弱轴，不能定义完整 saturated phenomenon。
- Roggero 没有给出本仓的 `situated p h ∧ Exhausts p h → conditions p h`。因此 `ExhaustiveCaptureConditions` 继续保持 MODEL/QUESTION，而不是历史归属。

反向检查现有 `first_question_formal_answer` 后，没有发现新文本约束迫使修改 theorem statement：裸 `UniversalStructure ↛ ClosureBridge` 仍是纯逻辑反例；conditioning 变体的 exact appearing-domain condition 仍只是排除 `appears ∧ Captured ∧ Independent` witness。把 Roggero 的 secondary reconstruction 写成 Lean axiom 反而会把历史解释偷渡进逻辑层，因此本轮**不新增 Lean theorem / primitive**。

## 5. 与现有 prior art 的差异

本轮新增价值不是“发现 Marion 不主张 horizonless”——这一点已有 Marion 1996 primary-indexed text、Murga 2024、Djian 2018 等先例。新增的是一个此前仓库未登记的、可直接阅读的正式期刊正文，它把这一判断精确锚定到 **Marion 1998 p. 293**，并在同一 published secondary source 内连续给出 **pp. 293–295** 的三个 horizon-figure 页码链。

因此复用判断是：把 Roggero 作为 **secondary exact-navigation / interpretive corroboration** 纳入 §21 source ledger；不宣称新哲学解释，不改变现有三轴关系，不增加依赖。

## 6. 验证与停止门

本文件提交后必须由该 branch 的 GitHub Actions 重新执行仓库既有验证；只有实际成功的 exact-head workflow 才能作为本轮 Lean/root/audit 验证证据。由于本轮不改 Lean source，验证的目的仍是保证来源文档提交没有破坏 root/source-coverage/zero-placeholder/kernel-axiom discipline，而不是把 CI 冒充哲学证据。

首问停止门仍为 **OPEN**：Roggero 2020 是 secondary direct published body，不是 Marion §21 direct-primary body。仍需合法直接取得 BG pp. 209–212、early ED pp. 292–297，或可靠映射的正式重印 / 译文正文；之后才能冻结 `Independent` 的弱历史映射，并在同一最终 SHA 上重新完成 `lake build`、`python3 scripts/check.py`、root coverage 与全部 `#print axioms` 审计。

下一入口仍优先是能把 §21 证据等级从 secondary navigation 提升到 direct-primary body 的合法路线；在此之前不扩大 M2/M3，也不为维持活跃制造新 API。
