# 二开操作总结

## 目标

把已有的 TradingAgents-Astock 和 Horizon fork 组合成一个属于用户自己的 A 股 KOL 信息雷达开源项目。

## 已完成

- 配置 Git 身份：`wurannnnn666 <3523035420@qq.com>`。
- 创建并推送 TradingAgents-Astock 功能分支：
  - `codex/kol-radar`
  - `codex/local-kol-system`
- 创建并推送 Horizon 功能分支：
  - `codex/kol-radar`
  - `codex/local-kol-system`
- TradingAgents-Astock 新增 KOL 深模块：
  - models
  - storage
  - importers
  - extractors
  - scoring
  - aggregation
  - service
  - obsidian sync
  - horizon source export
- TradingAgents-Astock 新增 CLI：
  - `tradingagents kol ingest`
  - `tradingagents kol score`
  - `tradingagents kol sync-obsidian`
  - `tradingagents kol daily-run`
- TradingAgents-Astock 新增 agent tools：
  - `get_kol_summary`
  - `get_kol_hotspots`
  - `get_author_score`
- TradingAgents-Astock 新增 Streamlit 本机总控台。
- Horizon 新增 `kol` source type 与 `KolScraper`。
- 新增本机 smoke 脚本和样例 KOL 数据。
- 安装 GitHub CLI。
- 创建 GitHub draft PR：
  - <https://github.com/wurannnnn666/TradingAgents-astock/pull/1>
  - <https://github.com/wurannnnn666/Horizon/pull/1>

## 验证

- TradingAgents KOL/Web 测试：`12 passed`
- Horizon KOL source 测试：`6 passed`
- Streamlit 本机启动：`HTTP 200`
- Streamlit 监听：`0.0.0.0:8501`

## 当前公开展示

本总项目作为开源入口，两个 fork 作为实现模块。用户访问本仓库即可理解：

- 项目是什么。
- 如何打开。
- 两个 fork 分别做什么。
- 本机数据流如何闭环。
- 后续如何继续开发。

