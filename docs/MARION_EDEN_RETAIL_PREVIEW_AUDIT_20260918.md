# Marion §21：Cultura / Eden Livres 与 Leclerc 公共预览路线审计（2026-09-18）

## 1. 目的与边界

本轮只推进首个研究问题仍未闭合的 Marion §21 direct-primary 门。目标仍是合法直接核查 1997 *Étant donné* §21（早期法文目标约 pp. 292–297）、2002 *Being Given* pp. 209–212，或可验证为同一修订本的正式译文／重印正文。

本轮不新增 Lean primitive / theorem，不把零售商元数据、搜索摘要、二手引文或非授权整书镜像升级成作者正文，也不绕过登录、DRM、preview limit 或安全策略。

## 2. 新的独立公共预览入口：Cultura → Eden Livres

Cultura 的公开商品页：

- <https://www.cultura.com/p-etant-donneessai-d-une-phenomenologie-de-la-donation-3618528.html>

本轮直接读取其公开 HTML 索引。页面在同一商品记录中给出：

- Jean-Luc Marion, *Étant donné : Essai d'une phénoménologie de la donation*；
- Éditeur: PUF；
- Pagination: 540；
- EAN `9782130807490`；
- langue: français；
- EPUB；
- 一个明确的 `feuilleter` 公共预览链接；
- 该 `feuilleter` 链接的目标域为 `assets.edenlivres.fr`。

因此，除了已经登记的 Vivlio / immateriel 公开 sample endpoint，本轮确认了第二条由合法零售商商品页直接暴露的公共预览路径，并且目标落在 Eden Livres 资产域。

证据等级：

`PRIMARY-RETAILER/PUBLISHER-EDITION-METADATA + PUBLIC PREVIEW PATH / EDEN LIVRES TARGET IDENTIFIED`

这里的“primary”只修饰书目／版本路径，不表示目标正文已经被读到。

## 3. 独立交叉：E.Leclerc / Vivlio 仍指向 immateriel 公共样章

E.Leclerc 的电子书商品页：

- <https://e-librairie.leclerc/product/9782130807490_9782130807490_2/etant-donne-essai-dune-phenomenologie-de-la-donation>

公开 HTML 直接显示同一 PUF 电子书、同一 EAN `9782130807490`，并给出 `Lire un extrait`。该链接解析到此前已经登记的正常公开资源：

- <https://fichiers.immateriel.fr/fr/web_service/preview/331472/epub-preview.epub>

服务端随后重定向到：

- <https://extraits.immateriel.fr/files/serve_book_preview/331472.epub>

本轮重新尝试正常点击。工具能够确认上述重定向，但当前安全层不允许继续打开重定向后的 EPUB 二进制资源；没有尝试绕过。这个结果与既有 `MARION_VIVLIO_PREVIEW_ROUTE_AUDIT_20260918.md` 一致，并由另一合法零售商入口独立复现。

另外，Vivlio 本身继续公开列出同一 EAN、PUF、EPUB，并标记 `Lire un extrait`：

- <https://shop.vivlio.com/product/9782130807490_9782130807490_2/etant-donne-essai-dune-phenomenologie-de-la-donation>

## 4. Eden 路线本轮的实际访问结果

Cultura 的公开页面确实暴露 `feuilleter` → `assets.edenlivres.fr`，但当前网页工具无法解析该高编号链接的目标 URL；直接 click 返回参数解析失败。容器网络同时无法解析 Cultura 域名，因此不能通过正常网络请求提取页面 HTML 中的 href。

所以本轮**没有取得 Eden preview 的正文，也没有判断 sample 是否覆盖 Book IV / §21**。

这条路线当前应登记为：

`LEGAL PUBLIC RETAIL PREVIEW ROUTE CONFIRMED / EDEN TARGET DOMAIN IDENTIFIED / SAMPLE BODY NOT INGESTED`

这比只有“商品存在”更强，因为公开预览控件及其资产域已直接可见；但仍明显低于 direct-primary passage review。

## 5. 与现有版本路线的关系

本轮新增的是访问路径证据，不改变版本谱系判断：

- 1992 / 1996 saturated-phenomenon essay 是重要作者本人前身文本，但不能冒充 1997 *Étant donné* §21 的逐字修订版；
- 2008 西班牙语正式译本 *Siendo dado* 已把修订本 §21 的合法目标范围收窄到约 pp. 338–345，核心为 pp. 341–342，但正文仍未直接取得；
- 已登记 Czech published translation 直接关闭的是 §23 内容的 secondary-only 状态，不覆盖 §21；
- 本轮 Cultura/Eden 与 Leclerc/immateriel 两条公共 sample route 都指向 PUF 电子版 EAN `9782130807490`，因此后续若正常公开 sample 覆盖 Book IV，可直接按 section heading 和已知文本锚点核对，而不需要依赖页码算术。

## 6. 对形式层与停止门的决定

没有发现需要修改当前形式语言的证据。继续保留：

```text
situated    -- 与 horizon 相关／在 horizon 中显现
conditions  -- horizon 的条件化／先行限定角色
Exhausts    -- 对当前 aspect 语言的穷尽覆盖
```

因此：

- `first_question_formal_answer` 不修改；
- `first_question_witness_boundary` 不修改；
- 不新增自由 predicate；
- 不把 `Independent`、`NonExhaustible` 或 `Captured` 改名为完整 Marion `Saturated`；
- 不把公共 preview 按钮当作已经读取目标正文。

首问停止门仍为 **OPEN**。当前唯一未闭合的核心文本门仍是 1997 修订本 §21 的合法 direct body。

## 7. 下一入口

只继续消费能够改变证据等级的路线：

1. 正常解析 Cultura `feuilleter` 的 Eden Livres 公共 preview URL；
2. 若可公开读取，先检查 sample 的目录／section heading 是否进入 Book IV / §21；
3. 若 sample 只覆盖前言／开篇，一次性把 Eden 路线标为“不覆盖 §21”，避免重复尝试；
4. 若覆盖 §21，至少核对：horizon 的先行限定语境、不是一般取消 horizon 的限定、单一／多个／horizon-combination 不足的层级；再与 BG/ED/SD crosswalk 和 Marion 1996 primary 文本逐段比较；
5. 只有 direct-primary context 完整后才冻结 `Independent` 的弱历史归属，并在同一最终 SHA 重跑 `lake build`、`python3 scripts/check.py`、root import coverage、完整 `#print axioms` audit 与对应 GitHub Actions。
