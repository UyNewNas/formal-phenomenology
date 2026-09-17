# Pommier 2020：horizon 作为前提、限制与被饱和者的增量审计

核查日期：2026-09-17。

本文是 `docs/PRIOR_ART.md` 的增量审计，范围只覆盖首个研究问题所需的 horizon / conditioning / exhaustive-capture 区分。它不替代 Marion 原书目标页的 direct-primary gate。

## 1. 来源与实际访问状态

Éric Pommier, “La différence phénoménologique selon Barbaras et Marion (Projet, méthode et ligne de tension),” *Trans/Form/Ação* 43(3), 2020, pp. 111–136, DOI `10.1590/0101-3173.2020.v43n3.08.p111`。

本轮实际核查：

- ANPOF 的期刊聚合页确认作者、卷期、页码、DOI，并指向 SciELO 全文；
- PhilPapers 独立确认相同书目信息；
- Éric Pommier 的作者网站／CV 列出同一论文；
- 搜索索引返回该文与 Marion 2013 页码直接相连的法文脚注文本；Redalyc PDF 入口存在，但本轮直接打开 PDF 返回 HTTP 403，因此没有 page-image review，也不把搜索索引冒充已逐页查看 PDF。

证据状态：`SECONDARY-DIRECT-INDEXED-TEXT / PDF-PAGE-IMAGE-NOT-REVIEWED`。

## 2. 与首问直接相关的声明

Pommier 在讨论 Marion 与 Barbaras 的差异时，对 horizon 做了一个对本项目很有用的二分：

1. Marion 倾向拒绝把 horizon（以及作为“horizons 的 horizon”的 world）当作 saturated phenomena 显现的 **condition of possibility**，理由是 horizon 的先行限定作用会反而构成限制；
2. 同一脚注又明确保留 saturated phenomenon 对 horizon 的某种依赖／预设，因为它仍然“saturates”该 horizon；
3. Pommier 将这一讨论指向 Marion 2013 *Étant donné* pp. **304–308** 与 **344–348**。

这里最重要的不是把 Pommier 的术语机械翻译成项目谓词，而是确认一个已有解释空间：

```text
有／预设某个 horizon
≠
horizon 作为先行的 possibility-condition
```

因此 `situated` 与 `conditions` 分离并不是本项目原创的历史发现，而是对已有 Marion 解释问题的最小形式接口。

## 3. 与当前形式语言的对应与不对应

可对应的弱结构：

- `situated p h`：只表示 h 是 p 的 related horizon；
- `conditions p h`：单独表示 h 承担先行条件／限制角色；
- `Independent p`：没有任何 admitted horizon 被标记为 conditioning relation。

不能直接对应的部分：

- Pommier／Marion 的 “saturates a horizon” **不等于** 项目的 `Captured p`；`Captured` 只表示存在一个 related horizon 覆盖当前模型中 p 的全部 encoded aspects；
- Pommier 的“supposes horizon”也不能未经语义桥直接定义成 `Structured`；本项目只把它当作保持 relatedness/conditioning 分离的解释动机；
- pp. 304–308、344–348 是 **2013 Quadrige 独立分页轨道**的 secondary navigation，不建立 BG 2002 或 ED 1997 的固定 crosswalk。

## 4. 本轮外部形式工作查重

写新 Lean theorem 前执行了增量检索：

- `novaspivack/phenomenology-lean` 最新 `main` 仍为 `75230e4eab333ad0fc47573747521ccc1a31a163`；针对 `horizon / Marion / saturated / exhaustive / conditioning` 及 `Structured / Independent / Captured` 组合，没有定位到同型 API；
- `cbenzmueller/LogiKEy` 最新 `master` 仍为 `b29954b0876d7991baf12f17378f31700f9de759`；它继续作为 semantic embedding / computational metaphysics 方法 prior art，而不是本条有限关系见证所需依赖；
- GitHub 全局代码搜索 `Marion horizon saturated exhaustibility conditioning` 与 `Structured Independent Captured horizon conditioning phenomenology` 的有意义 formal 命中仍主要是本仓，没有找到可直接 import 的同型 theorem。

没有重新本地构建上述外部仓库；其构建状态不冒充本轮实测。

复用决定：不增加 Mathlib、LogiKEy 或新的逻辑框架；复用本仓已经存在的 `closedIndependentConditioning`、`closedIndependentConditioning_independent` 与 `closedIndependentConditioning_capture`，只把已有 witness 打包成首问所需的兼容性命题。

## 5. 新的最小形式结论

新增 theorem：

```text
related_independent_captured_are_jointly_consistent
```

命题：

```text
∃ M, ∃ p,
  appears p ∧ Structured p ∧ Independent p ∧ Captured p
```

它说明在当前关系语言中，一个**实际显现**可以同时：

- 有 related horizon；
- 不被任何 horizon 标记为 conditioning relation；
- 又存在 related horizon 对其 encoded aspects 作 existential exhaustive capture。

这只是对旧 `closedIndependentConditioning` 反模型的具名打包，不是新的数学机制。其哲学意义也严格受限：它证明这三项在当前语言中**不会仅凭定义发生冲突**。若某个解释要从 horizon-independence 推出 non-exhaustibility，仍必须增加已经形式化为“排除 `Captured ∧ Independent`”的额外条件；而 `ExhaustiveCaptureConditions` 仍是比该精确条件更强的结构 bridge。

Pommier 的二手讨论使这个兼容性见证更值得显式命名，但并不把 `Captured` 升格为 Marion 的 saturation。

## 6. 对原典停止门的影响

本轮没有关闭停止门。

Pommier 是同题 secondary work；其 Marion 2013 页码 **304–308、344–348** 提供新的合法导航范围，但没有替代：

- *Being Given* pp. 209–212、225–226 的 direct-primary 核查；或
- ED 1997 / early pagination pp. 292–297、314–315 的 direct-primary 核查；或
- 已确认正式重印中对应正文的直接核读。

尤其不能因为 Pommier 已把“horizon 被预设”与“horizon 作为 possibility-condition”分开，就宣称 Marion 已接受本项目的 `Captured` / `Exhausts` 语义。
