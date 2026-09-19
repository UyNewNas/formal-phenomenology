# Marion §21：Vivlio / immateriel 合法 EPUB 预览入口审计（2026-09-18）

## 1. 本轮目的

本轮只处理首个研究问题尚未闭合的 Marion §21 direct-primary 门。目标仍是合法直接核查 *Being Given* pp. 209–212、早期 *Étant donné* pp. 292–297，或已经确认的正式重印／正式译文中对应正文。

本轮不新增哲学 primitive，不把二手引文、搜索摘要或第三方整书镜像升级成 primary evidence，也不把“存在公开预览按钮”等同于“已经读取目标正文”。

## 2. Vivlio 官方销售页给出的公开样章路径

公开产品页：

- <https://shop.vivlio.com/product/9782130807490_9782130807490_2/etant-donne-essai-dune-phenomenologie-de-la-donation>

页面直接确认：

- Jean-Luc Marion, *Étant donné : Essai d'une phénoménologie de la donation*；
- éditeur: Presses Universitaires de France；
- EAN `9782130807490`；
- 2025-02-27 的当前 Vivlio 商品记录；
- ePub，数字水印；
- 明确存在 `Lire un extrait` 的公开预览入口。

Web 索引进一步暴露出该按钮指向的公开样章 URL：

- `https://fichiers.immateriel.fr/fr/web_service/preview/331472/epub-preview.epub`

请求该 URL 时，服务端重定向到：

- `https://extraits.immateriel.fr/files/serve_book_preview/331472.epub`

因此，相比此前只知道 Lavoisier 的 `Télécharger un extrait`，本轮把同一 PUF 电子版的一条**实际公开 EPUB preview endpoint**定位到了具体资源地址。

证据等级：

`PRIMARY-PUBLISHER/DISTRIBUTOR-SAMPLE-PATH / EXACT PUBLIC PREVIEW ENDPOINT IDENTIFIED`

## 3. 为什么本轮仍不能声称读过正文

本轮只使用正常公开访问，不绕过登录、DRM、preview limit 或安全策略。

实际访问结果：

1. Web fetcher 能从 Vivlio 商品页解析出 `Lire un extrait` 链接；
2. 对公开 EPUB URL 的请求能看到其重定向目标，但当前 web 安全层拒绝继续打开该二进制重定向；
3. 容器环境直接下载同一公开 URL 时，外部域名解析失败，因此也没有取得 EPUB 字节；
4. 没有使用其他镜像替代，也没有根据文件名或商品页元数据推断样章内容。

所以本轮**没有读取 EPUB 内文**，更不能判断样章是否覆盖 Book IV / §21。

该路线的状态应明确写成：

`LEGAL PUBLIC SAMPLE ROUTE CONFIRMED / SAMPLE BODY NOT INGESTED`

而不是 direct-primary passage 已闭合。

## 4. 正式 Routledge 重印路线的再确认

Google Books 对 Dermot Moran / Lester Embree 编 *Phenomenology: Critical Concepts in Philosophy*, vol. 4（Taylor & Francis / Routledge, 2004）的公开记录直接列出：

- `Sketch of the saturated phenomenon the horizon` 从该卷 p. 5 开始；
- 这与 Dermot Moran 作者公开稿已经登记的“*Being Given* Sketch 重印于 vol. 4, pp. 5–28”一致。

因此正式重印 provenance 继续得到独立平台元数据支持，但 Google Books 当前公开结果没有暴露目标正文句段。

证据等级仍是：

`PUBLISHER/PLATFORM METADATA + SECONDARY-EXACT REPRINT PROVENANCE`

不能借此把重印正文标成已读。

## 5. 外部工作与模型边界复核

本轮没有发现需要新增形式语言的外部证据。此前已经登记的同题 prior art（Murga、Djian、Mackinlay、Leung、Lind 等）足以说明：

- “有 horizon”与“受 horizon 作为先行 possibility-condition 限定”必须区分；
- Marion saturation 不能简化成 `Horizonless`；
- `NonExhaustible` 只能作为本项目的一条弱模型轴，不能冒充完整 saturation；
- 构造性 `Captured → ¬ Independent` 与 witness-producing `Captured → Conditioned` 的差距仍是纯 FORMAL / proof-theoretic 问题。

因此本轮不新增 theorem、model 或依赖；这是避免为来源访问进展制造新的自由谓词或 theorem count。

## 6. 对停止门的影响

首问仍未完成。当前证据图现在更精确：

- §23：已有 `PRIMARY-DIRECT-INDEXED-PUBLISHED-TRANSLATION`；
- §21：已有多个 publisher / formal-reprint / public-sample route，但目标正文仍未被本项目合法直接读取；
- 形式答案已经封装，但历史解释冻结仍应等待 §21 direct-primary body。

只有当上述 Vivlio/immateriel 样章、Cairn/PUF 正式电子版、Routledge 正式重印或其他合法作者／出版社／机构入口实际暴露对应正文时，才允许升级证据等级。

## 7. 下一入口

优先级维持为：

1. 在支持公开 EPUB preview 的环境中重新消费已经定位的 `331472` 样章资源；
2. 如果样章仅含前言／开篇，则把该路线一次性标记为“不覆盖 §21”，避免重复尝试；
3. 若样章含 Book IV，则按 section heading 与文本锚点定位 §21，不依赖 2013/2025 的页码算术；
4. 与 BG / early-ED crosswalk、Marion 1996 primary text 逐段核对后，再冻结 `Independent` 的弱历史归属；
5. 冻结后在同一最终 SHA 重跑完整 Lean build、`scripts/check.py`、root-import coverage 和 axiom audit。
