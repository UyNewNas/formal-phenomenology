# Marion 1996 primary-text checkpoint

核查日期：2026-09-17。

本页记录 Jean-Luc Marion 在 *Philosophy Today* 40(1), 1996, pp. 103–124 发表的 “The Saturated Phenomenon”（Thomas A. Carlson 英译，DOI `10.5840/philtoday199640137`）中，与首个研究问题直接相关的作者本人文本。它不是 *Being Given* 2002 指定页的替代版本核对；其作用是：在目标书页仍无法合法逐页读取时，先用作者本人、同一概念的较早公开文本约束形式化。

## 1. 访问状态

- 出版平台：Philosophy Documentation Center / *Philosophy Today*。
- PDCnet 的公开搜索索引能够返回该论文正文及原刊页码，包括 p. 117–119 的 horizon / manifestation / constitution 段落。
- 当前环境直接打开 PDF URL 返回 HTTP 403，因此无法在本轮用 PDF page screenshot 对照版面。这里把证据标为 **PRIMARY-DIRECT-INDEXED**：直接读取出版社索引中的作者正文，不冒充“PDF 页面已人工逐页查看”。
- 书目：Jean-Luc Marion, “The Saturated Phenomenon,” *Philosophy Today* 40(1), 1996, 103–124。

## 2. p. 117：不是取消 horizon，而是解除其先行限定

PDCnet 索引的原文直接给出这一论证次序：

1. 一般现象的显现预设 horizon 先于显现等待并限定其出现；
2. Marion 随即问：某些现象是否能够超过每一个 horizon；
3. 他明确说明，这**不是**要一般地取消 horizon，因为那会阻止 manifestation；
4. 要摆脱的是每个 horizon 的 **delimiting anteriority**（先行限定性）。

对本项目的约束：

- `HasHorizonlessAppearance` 不能作为 saturated phenomenon 的默认接口；
- `situated p h`（有相关 horizon）与 `Independent p`（不以 horizon 作为条件化关系）可以同时出现，至少有直接作者文本动机；
- 当前 `conditions` 关系比“无 horizon”更接近首问所需的弱接口，但它仍只是抽象压缩，没有编码 anteriority、anticipation 或 intentionality。

## 3. p. 118：Marion 明确列出多种 horizon 关系

同一篇原文随后列出多个层次：

- saturated phenomenon 可以在一个 horizon 中发生 saturation；
- 可以增殖多个 horizons，并在多个视域中发生 saturation；
- 可以超过 horizon 而被“cast out”；
- 极端情况下，没有 horizon 或 horizon 组合能够承受绝对现象；
- 即使发生这种 disfiguration，仍然是 manifestation；
- Marion 随后把它称为不依赖 horizon 这一“condition of possibility par excellence”，即 unconditioned。

这给当前模型两个直接约束。

第一，`Independent` 不能和 `NonExhaustible` 定义性等同：作者本人允许“不依赖 horizon”与“在某个 horizon 中 saturation”出现在同一讨论结构内。第二，当前 `NonExhaustible` 只逐个量化单个 related horizon，并没有表达“任意 horizon 组合也失败”的极端情况。

因此 `ExhaustiveCaptureConditions`

```text
situated p h ∧ Exhausts p h → conditions p h
```

仍只能是 MODEL/QUESTION。若把 `Captured` 当成 Marion “在某个 horizon 中 saturation”的极弱替代读法，那么作者文本反而提示：`Captured ∧ Independent` 至少不应被词义直接排除。由于 `Captured` 的 extensional aspect-coverage 与 Marion 的 saturation 并不等义，本项目不据此把该 bridge 判定为“文本反驳”，但会把这种张力显式保留。

## 4. p. 119：首问不需要完整形式化 intuition/intention 才能回答，但完整 saturation 需要

PDCnet 索引的 p. 119 段落把 saturated phenomenon 描述为直观给予的过剩使通常接收框架显得过窄；主体不能把现象构成为普通 object，而主体自身的 constituting 地位发生反转。

这与 *Being Given* pp. 225–226 的带页码二手引文方向一致：完整 saturated phenomenon 涉及 intuition / intention / constitution，而不是只有“侧面未被覆盖”。

对本项目范围的判断：

- 回答首个窄问题“有 horizon 是否蕴含可被某个 horizon 穷尽”**不需要**现在就把完整 intuition/intention/constitution 理论加入 Lean；有限反模型已经否定纯逻辑蕴含。
- 但任何把 `NonExhaustible`、`Independent` 或它们的 conjunction 命名为 Marion 的 `Saturated` 的做法都仍不成立。
- 因此本轮继续拒绝为了 theorem count 扩张出完整 M3；§23 结构保留为 saturation 完整理论的后续工作，而不是首问形式结论的必要依赖。

## 5. 与 *Being Given* 门槛的关系

这条 1996 primary evidence 显著降低了历史解释的不确定性，但**没有宣称直接核对了 *Being Given* pp. 209–212、225–226**。当前合理的分层是：

- Marion 1996：作者本人文本已通过出版社索引直接读取；足以约束“horizonlessness”“conditioning”“多个 horizons”的候选解释；
- *Being Given* 2002：章节和页码已由出版社元数据固定，目标句目前仍只能由带页码二手研究交叉定位；
- 停止门仍要求合法直接核对 2002 目标页，或取得可以可靠逐段对应的法文 *Étant donné* 原文。

因此本轮不是降低停止门，而是把下一步从“我们甚至不知道 Marion 本人是否这样说”缩小为“核对 1996 论证在 1997/2002 书本版本中的具体重写、页码与上下文”。

## 6. 对现有 Lean 的直接结论

本轮 primary text **不要求新增新的 primitive relation**。已有三轴仍是最小够用语言：

```text
situated   -- 相关 horizon
conditions -- horizon 作为条件/约束
Exhausts   -- 当前 aspect 语言下的穷尽
```

真正新增的形式检查应只处理已有 `Captured` 与 `Independent` 对压力测试 bridge 的关系，而不新增 `priorDelimits` 等自由谓词。任何这样的 theorem 都必须继续标为 neutral model-theoretic result，而不是把 `Captured` 等同于 Marion 的 saturation。
