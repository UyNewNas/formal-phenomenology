# 来源与阅读状态

检索／核查日期：2026-09-17。这里区分“找到书目”“读过研究文献”“已经核对原典段落”。前两者不冒充第三者。

## 1. 已查看的研究资料

### S-R1：Renaudie 的研究论文

Pierre-Jean Renaudie, *Ways of Being Given: Investigating the Bounds of Givenness through Marion and Husserl*。

- [作者的介绍与书目信息](https://renaudiephilosophy.com/publications/selected-articles/in-english/jean-luc-marion-and-husserl-on-givenness/)
- [作者公开提供的 11 页论文稿](https://renaudiephilosophy.com/wp-content/uploads/2016/09/Renaudie-Ways-of-being-Given.pdf)

阅读位置按 PDF 第 1、4—6、8—9 页计。Renaudie 比较了对胡塞尔范畴直观的不同解释，并质疑从直观的拓展直接走向不受限制的给予性。这支持本项目把“限制”“直观”“给予性”之间的转换作为需要论证的问题，而非同义替换。

证据类型：这是 Renaudie 自己论证的一手研究文本，但不是马里翁著作的一手段落，更不是直接比较梅洛-庞蒂与马里翁的证据。这里只采用它来定位解释争点，不宣称其批评已解决争论。

版本注意：作者网页列出 Lofts、Calcagno 编 *Breached Horizons: The Work of Jean-Luc Marion*，Rowman & Littlefield，2017；PDF 首页仍带有较早的 forthcoming／出版社信息。本项目引用这份可核查稿件的 PDF 页序，不虚构最终出版页码。

### S-M1：Merleau-Ponty 的研究导航

Ted Toadvine, [*Maurice Merleau-Ponty*, Stanford Encyclopedia of Philosophy](https://plato.stanford.edu/entries/merleau-ponty/)，尤其关于 *Phenomenology of Perception* 的部分。

证据类型：二手综述，用于定位原典与反向检验过度简化。它的讨论包含身体—世界关系、知觉深度与世界不可穷尽性，因此不能把“梅洛-庞蒂讨论视域”直接用作本项目 B（最终可穷尽）的依据。原典归属仍须按下一节的段落卡核查。

## 2. 原典阅读任务

下列书目提供研究目标，不代表本轮已完成逐段释读。版本固定后再补精确页码。

| ID | 原典目标 | 核查问题 | 当前状态 |
|---|---|---|---|
| P-MP-1 | Merleau-Ponty, *Phénoménologie de la perception*（1945）；英译本版本待固定 | 视域怎样组织未显现侧面？组织是否意味着封闭？ | 书目定位；段落待核对 |
| P-MP-2 | 同书身体与世界相关论述 | 身体条件与世界开放性在同一论证中如何相连？ | 段落待核对 |
| P-JM-1 | Marion, *Étant donné: Essai d'une phénoménologie de la donation*（1997）；*Being Given*，Jeffrey L. Kosky 英译（2002） | 显现、给予、直观与视域各是什么关系？ | 书目定位；段落待核对 |
| P-JM-2 | 同书关于饱和现象的论述 | 无视域、溢出既定视域、多个视域之间是否有区分？ | 段落待核对 |
| P-JM-3 | Marion, *Réduction et donation*（1989）；*Reduction and Givenness*，Thomas A. Carlson 英译（1998） | 还原中的“限制”与本模型的“穷尽”能否对应？ | S-R1 提供书目与论题线索；原文待核对 |

马里翁书目的英法文信息可在 S-R1 的参考注释中交叉核对；梅洛-庞蒂书目入口见 S-M1。不同译本的页码不能混用，也不能把研究论文的转述改写成哲学家的直接引文。

## 3. 段落卡格式

每张卡至少记录：

```yaml
id: P-MP-1a
author: 待填
work: 待填
edition_and_translator: 待填
locator: 章节、段落及该版本页码
access: 原文已查看 / 仅见转引 / 尚未查看
short_excerpt: 必要的短引文；不复制长篇受保护文本
paraphrase_zh: 中文释义
candidate_formula: 对应的 Lean 命题或明确的改动建议
alternative_reading: 至少一项不同解释
lost_structure: 形式化舍弃了什么
status: proposed / reviewed / rejected
```

验收要求：先取得文本证据，再评价映射是否充分；允许一个段落对应多个竞争模型。不能因为某个编码易于证明，就把它标为忠实解释。

## 4. 尚未确立的历史断言

目前未找到并核对“马里翁明确把梅洛-庞蒂列为去主体化不彻底的前辈”的直接原典段落。项目不采用该断言作为前提。这是待查证事项，而非断言它必定错误。

## 5. 工具来源

Lean 工具链固定为 `leanprover/lean4:v4.24.0`，见 [官方发布](https://github.com/leanprover/lean4/releases/tag/v4.24.0) 与 [官方安装说明](https://lean-lang.org/install/)。GitHub 工作流使用按提交哈希固定的 [lean-action](https://github.com/leanprover/lean-action)；以仓库内 `lean.yml` 为配置依据。
