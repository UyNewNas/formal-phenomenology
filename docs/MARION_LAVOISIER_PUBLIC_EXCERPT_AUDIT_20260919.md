# Marion §21：Lavoisier 公共 EPUB 摘录路线审计（2026-09-19）

## 1. 目的

本轮只推进首个研究问题尚未闭合的 Marion §21 direct-primary 文本门。目标仍是合法直接核查 *Being Given* pp. 209–212、1997 / early *Étant donné* §21（约 pp. 292–297），或可可靠对应这一段落的正式重印／译文正文。

本轮不新增 Lean primitive / theorem，不把零售商元数据、预览按钮或无法读取的二进制资源当作已经读到作者正文，也不绕过登录、DRM、付费或预览限制。

## 2. 新确认的正常公开摘录入口：Librairie Lavoisier

Librairie Lavoisier 的公开商品页：

- <https://e.lavoisier.fr/produit/72567/9782130807490/etant-donne>

本轮直接读取其公开 HTML。页面明确给出：

- Jean-Luc Marion, *Étant donné : Essai d'une phénoménologie de la donation*；
- PUF / Quadrige；
- `2e édition`；
- publication `27 février 2025`；
- ePub，540 pages；
- EAN13 eBook `9782130807490`；
- EAN13 papier `9782130624813`；
- 一个正常公开的 `Télécharger un extrait` 链接。

对该公开链接执行普通点击，当前网页工具解析出的目标是：

- <https://e.lavoisier.fr/extract/523630>

服务器返回的资源类型为 `application/epub+zip`。当前网页阅读工具不支持消费该 MIME，因此返回 `Unsupported content-type`；容器网络同时无法解析该域名，未能通过第二条正常网络路径下载该公开 excerpt。没有尝试绕过。

证据状态：

`PRIMARY-RETAILER/PUBLISHER-EDITION-METADATA + PUBLIC EPUB EXCERPT ENDPOINT IDENTIFIED / EXCERPT BODY NOT INGESTED`

这里的 `PRIMARY` 只说明这是目标书的正式版本路径和由零售商公开暴露的摘录入口，不表示 §21 正文已经直接核查。

## 3. 独立版本交叉

Kobo France 的公开商品页登记同一 eBook ID / EAN `9782130807490`、PUF、540 pages，并给出 2013-09-18 的数字版本日期；Casa del Libro 也公开登记同一 ISBN、PUF、法文 eBook 与 2013-09-18 发布日期。Lavoisier 页面则把当前商品标为 2025 的 `2e édition`。

因此后续若成功正常读取 Lavoisier excerpt，不能仅凭电子 EAN 就把其重排页码等同于 1997 early pagination。核对顺序应当是：

1. 先从 EPUB TOC / section heading 确认 excerpt 是否进入 Book IV / §21；
2. 若进入，使用已登记的文本锚点而不是页码算术比对三种 horizon-saturation 层级；
3. 再与 BG 209–212 / early ED 292–297 / 2008 Spanish crosswalk 和 Marion 1996 primary text 比较；
4. 若 excerpt 只覆盖前言或开篇，则一次性登记“不覆盖 §21”，避免以后重复尝试。

## 4. 与前一轮 Cultura / Eden 路线的关系

前一轮已经确认 Cultura 的 `feuilleter` 控件指向 Eden Livres 资产域，以及 Leclerc / Vivlio 的正常公开 sample route。本轮新增的 Lavoisier 路线更具体：网页工具已经把公开摘录控件解析为一个确定的 EPUB endpoint，并得到 MIME 类型。

但证据等级仍没有跨过 direct-primary body 门：

- Cultura / Eden：preview path confirmed，body 未取得；
- Leclerc / Vivlio / immateriel：公开 sample route confirmed，当前工具未摄入 EPUB body；
- Lavoisier：公开 endpoint `extract/523630` confirmed，MIME=`application/epub+zip`，body 未摄入。

三条独立正常零售路径共同说明“合法公开 excerpt 机制确实存在”，但**不能**据此推断 sample 一定覆盖 §21。

## 5. 对形式层的决定

没有新正文证据改变当前解释或 formal interface。继续保留：

```text
situated    -- 与 horizon 相关／在 horizon 中显现
conditions  -- horizon 的先行限定／条件化作用
Exhausts    -- 当前 aspect 语言中的穷尽覆盖
```

因此本轮：

- 不修改 `first_question_formal_answer`；
- 不修改 `first_question_witness_boundary`；
- 不增加 `Horizonless`、horizon-combination、intuition/intention 等新 primitive；
- 不把 `Independent`、`NonExhaustible` 或 `Captured` 命名为 Marion 的完整 `Saturated`；
- 不把 excerpt endpoint 存在当作已经阅读 §21。

首问停止门保持 **OPEN**。

## 6. 下一入口

下一轮只消费能改变证据等级的动作：

1. 正常读取任一已确认公开 EPUB excerpt（Lavoisier / Eden / immateriel）；
2. 先检查 TOC / section heading，确认 sample 是否覆盖 Book IV / §21；
3. 若不覆盖，明确关闭对应 sample 路线，停止重复尝试；
4. 若覆盖，核对“horizon 的先行限定不是一般取消 horizon”、“一个 horizon / 多个 horizons / horizon-combination 仍不足”的层级，并与既有版本 crosswalk 互证；
5. direct-primary context 足够后，才冻结历史解释并在同一最终 SHA 上重跑完整 Lean build、`scripts/check.py`、root coverage、axiom audit 与 GitHub Actions。
