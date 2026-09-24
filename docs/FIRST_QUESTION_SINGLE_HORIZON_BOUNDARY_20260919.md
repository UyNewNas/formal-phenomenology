# 首问：单一视域不可穷尽的解释边界（2026-09-19）

## 本轮对象

当前 `Presentation.NonExhaustible p` 的量词只是否定“存在一个 situated horizon 能覆盖 p 的全部已编码 aspect”。本轮核查它是否会被自然语言误读成更强的“多个视域或其组合也不能容纳该现象”。

## 外部查重与解释基线

- `novaspivack/phenomenology-lean` 本轮重新核对仍停在 commit `75230e4eab333ad0fc47573747521ccc1a31a163`。既有范围提供 formal phenomenology 与 countermodel 先例，但未定位到可直接替换本仓 horizon / exhaustive-capture 关系层的 API。
- Leung 2022 对 *Being Given* 211–212 的讨论把“不依赖 horizon”放在 horizon 作为 `condition of possibility` 的语境中；继续支持把 related horizon 与 conditioning horizon 分开。
- Mason 对 *Being Given* 210–211 的重构明确区分单一 horizon、多个 horizons 与更强的 horizon-combination 情形；Mackinlay 的 BG/ED crosswalk 也保持这一层次。它们是 secondary interpretation，不提供本仓 `Captured → Conditioned` 之类的形式 bridge。
- 因而本轮不把基础量词分离包装成新哲学发现，也不新增 horizon-family / combination primitive。若未来直接书本正文证明该结构是首问忠实陈述所必需，才增加最小接口。

## Lean 增量

`FormalPhenomenology/FirstQuestion.lean` 新增：

```text
first_question_nonExhaustible_allows_aspectwise_horizon_cover
```

其内容是存在一个实际显现的 p，同时满足：

```text
NonExhaustible p
IndividuallyCoverable p
```

证明直接复用既有 `splitModel_situatedExcess` 与 `splitModel_individual`。因此同一个 p 可以没有任何单一 related horizon 穷尽全部 aspect，同时每个 aspect 又各自能由某个 related horizon 覆盖。

这只是项目级 semantic guardrail：它明确阻止把弱 `NonExhaustible` 解释成“任何多个视域或视域组合都无法容纳”。没有新增模型、primitive、classical axiom 或历史归属。

代码提交：

- `f178c2b2b8ccf11e9a2df33c397f617ce3c8e3c5` — 新 theorem；
- `ba9045a6c4fb6ddab663451c14e02e91f9f33250` — 将 theorem 纳入 `Audit.lean`。

## 原典门状态

本轮继续沿既有合法公开路径寻找 *Being Given* §21 / early *Étant donné* 对应正文，但未取得可直接审阅的目标 body。PUF 同一电子版本的公开 excerpt / preview 路线仍可定位，当前运行环境没有成功读取 excerpt 内容。

因此首问停止门不变：BG 209–212 / early ED 292–297（或可靠映射的正式译本／重印正文）仍需 direct-body review。现有 secondary crosswalk 与作者平行文本只能约束解释，不能代替该门。

## 验证要求

由于本轮修改了 Lean 源码，旧 SHA 的绿色 CI 不能沿用。新 theorem 只有在最新 exact head 上完成 root build、`scripts/check.py`、全部 `#print axioms` 审计与 GitHub Actions 后才记为 kernel-verified。
