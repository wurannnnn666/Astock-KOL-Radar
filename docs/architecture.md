# 架构说明

## 一句话

TradingAgents-Astock 负责个股研究与 KOL 数据真相源，Horizon 负责信息流聚合，Obsidian 负责可重建知识库投影。

## 数据流

```text
KOL 内容
  -> TradingAgents KOL importer/extractor
  -> SQLite truth source
  -> TradingAgents social analyst
  -> Streamlit KOL Radar UI
  -> Obsidian KOL-Radar projection
  -> Horizon kol source
```

## 模块职责

### TradingAgents-Astock fork

- 存储 KOL 原帖和结构化信号。
- 解析 A 股代码、动作、周期、风险提示。
- 提供 agent tools：
  - `get_kol_summary`
  - `get_kol_hotspots`
  - `get_author_score`
- 提供 Streamlit 可视化总控台。
- 提供 Obsidian 同步出口。

### Horizon fork

- 新增 `kol` source type。
- 从 TradingAgents KOL SQLite 读取信号。
- 输出 Horizon 标准 `ContentItem`。
- 让 KOL 内容和 GitHub/RSS/OpenBB 等信息源并列进入日报管线。

### Obsidian

- 不是真相源。
- 只做可重建投影。
- 用双链、frontmatter、Dataview 组织作者、个股、信号、日报和复盘。

## 安全边界

- 不提交 `.env`、Cookie、API Key。
- 不自动荐股。
- 不下单。
- 所有 KOL 输出保留研究用途声明。

