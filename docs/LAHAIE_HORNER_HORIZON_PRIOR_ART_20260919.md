# Lahaie / Horner：Marion 视域关系同题 prior-art 审计（2026-09-19）

## 1. 本轮对象与停点

本轮从 PR #31 `research/first-question-main-theorem-20260918` 的 exact head
`a9966a89a39be250fa7382844adad7dc8dfcd446` 接续；`master` 为
`c6f527875c0a905c33dac68176ed01a2c64b97c3`。

形式目标已经由 `first_question_complete_formal_answer` 聚合，并在上述 branch head 上由
GitHub Actions 完整重建、root coverage 与 axiom audit 验证。当前唯一实质 stop gate 仍是
Marion *Being Given* §21 pp. 209–212 / early *Étant donné* pp. 292–297，或可靠映射的正式
译本／重印正文的合法 direct-body review。

本轮没有新增 philosophical primitive 或 Lean lemma。新增对象是**同题解释 prior art 的精确
页段审计**；按 prior-art gate，先判断它是否要求修改现有 `situated / conditions / Exhausts`
三轴与首问主 theorem。

## 2. 新核查来源

Myka Shea Hanson Lahaie, Durham University doctoral thesis（官方 e-theses PDF）：

- official PDF: `https://etheses.dur.ac.uk/13927/1/Myka_Lahaie_Doctoral_Thesis.pdf`
- 当前公开 PDF 共 261 页；本轮网页 PDF 解析器直接读取正文。
- 关键位置在 PDF viewer 的 p. 136 附近（论文打印页约 129 的脚注区）。
- 本轮依工具要求尝试 page-image screenshot，但运行时对该 PDF 返回 cache-miss，故没有把
  page image 冒充已查看。

证据等级：

`SECONDARY-DIRECT-INSTITUTIONAL-PDF-TEXT / PAGE-IMAGE-NOT-AVAILABLE-IN-RUNTIME`

Lahaie 在讨论 saturated phenomenon 的 quantity 与 horizon 时，脚注明确以 *Being Given*
p. 209 为一条锚点，并转述 Robyn Horner 2011 的解释：Marion 并不是把 saturated phenomenon
简单写成与 horizon 毫无关系；Horner 区分了“形成自己的 horizon”“可在无限多个 horizons 中
显现”以及二者并存等路线。Lahaie 随后继续把这些路线放在“既有 horizon 被打断／超过”的语境中。

本轮同时核对 Robyn Horner, “Jean-Luc Marion and the Possibility of Theology,” *Culture,
Theory and Critique* 52(2–3), 2011, 335–350 的公开索引／摘要型可见文本。它与 Lahaie 的转述方向
一致：Marion 的目标是解除特定 horizon 与主体 constitution 对显现的先行支配，而不是把一切
horizon relation 词面删除。但当前没有在本运行中取得可逐页核对的正式 Horner Version of Record，
所以 Horner 仍记为 secondary navigation，不升级为 direct-page review。

## 3. 与现有形式接口的比较

这一 prior-art 增量支持继续保持现有三轴分离，而**不**支持新增 bridge：

```text
situated    -- 与某 horizon 发生显现／相关关系
conditions  -- horizon 作为先行限定或 possibility-condition
Exhausts    -- 在当前 aspect 词汇下的穷尽覆盖
```

具体而言：

1. “仍与某种 horizon 有关系”与“被某个 horizon 先行规定／条件化”不能词面等同；
2. 因而 `Independent` 继续只能解释为“不受 horizon 的先行 conditioning”的弱接口，不能重命名
   为 `Horizonless`；
3. Lahaie / Horner 没有给出 `Captured p → Conditioned p`，更没有给出 same-horizon
   `situated p h ∧ Exhausts p h → conditions p h`；
4. 这组 secondary reading 也没有把本仓的 `Captured` 或 `NonExhaustible` 定义成 Marion 的完整
   saturated phenomenon；完整 saturation 仍涉及 intuition/intention、constitution reversal 以及
   一个／多个／组合 horizon 的更丰富结构。

因此，本轮的 source-triggered regression decision 是：**不改 Lean relation layer，不增加自由
predicate，也不增加重复 wrapper theorem。** 现有 `first_question_complete_formal_answer` 对首问的
纯形式回答保持合适；历史归属仍由 source ledger 单独约束。

## 4. 对最强外部基线与“原创性”的影响

这项核查进一步收紧项目可声称的增量：

- “Marion 并非简单主张 saturated phenomenon 与任何 horizon 绝缘”已有明确 secondary prior art；
- “related horizon”与“conditioning horizon”需要分开理解，也不是本项目首次提出的历史解释；
- 本项目当前可核查的工程增量仍只是把这些解释选择压成显式关系／量词，并用 Lean 检查它们
  对 `Captured`、`Independent`、`NonExhaustible` 的逻辑后果与反模型边界。

Lahaie 的 institutional thesis 还明确承认其研究受时间与疫情资料条件影响；因此本项目不会把她对
Horner 的转述提升为取代 Horner 原文、Marion 原典或 BG §21 direct-body review 的证据。

## 5. 对停止门的影响

本轮**不关闭**首问 stop gate：

- 新来源是 secondary thesis / secondary interpretation；
- 虽然它精确锚到 BG p. 209，并与现有 horizon-relation / prior-conditioning 分层一致，但不是
  Marion §21 目标页的作者正文；
- 也没有新的文本迫使引入 intention/intuition 或 horizon-combination primitive。

因此剩余入口不变：合法直接审阅 BG pp. 209–212 / early ED pp. 292–297，或可靠映射的正式
翻译／重印正文；随后冻结解释，并在同一 final SHA 重跑 `lake build`、`python3 scripts/check.py`、
root coverage、全部 `#print axioms` 与 GitHub Actions。

## 6. 本轮验证边界

创建本审计文件不会改变 Lean 源码。提交后仍必须以**新 commit 自己的** GitHub Actions 为准；
在 exact SHA 的 workflow 成功之前，本文件不沿用先前 SHA 的绿色状态，也不把 PDF 文本解析成功
当成 Lean 验证或 direct-primary gate 完成。
