# Astock KOL Radar

面向 A 股研究的本机 KOL 信息雷达开源项目。

本项目基于两个 fork 组成：

- `wurannnnn666/TradingAgents-astock`：A 股多 Agent 投研分析、KOL 数据闭环、Streamlit 本机总控台。
- `wurannnnn666/Horizon`：信息源聚合、日报生成、KOL source 接入。

目标是把 KOL 内容、个股分析、Obsidian 知识库和 Horizon 信息流串成一个可复现、可审计、可本机运行的研究系统。

> 仅供学习研究和技术演示，不构成投资建议，不自动荐股，不下单。

## 当前能力

- KOL 数据闭环：JSONL/抖音适配、SQLite 存储、规则抽取、作者评分。
- TradingAgents 接入：`social` analyst 可读取 KOL 雷达摘要。
- Horizon 接入：KOL SQLite 可作为 Horizon 一等 source 输出 `ContentItem`。
- Obsidian 投影：从 SQLite 幂等生成 `KOL-Radar` 笔记。
- 可视化 UI：TradingAgents Streamlit 总控台提供 `个股分析`、`KOL 雷达`、`本机系统` 三个页签。
- 本机开放访问：默认 `http://localhost:8501`，可监听 `0.0.0.0:8501` 支持局域网访问。

## 仓库结构

```text
Astock-KOL-Radar/
  modules/
    TradingAgents-astock/  # fork: wurannnnn666/TradingAgents-astock
    Horizon/               # fork: wurannnnn666/Horizon
  docs/
    architecture.md
    development-summary.md
    roadmap.md
  scripts/
    start-local-ui.ps1
    smoke-local.ps1
```

## 快速开始

克隆本仓库和子模块：

```powershell
git clone --recurse-submodules https://github.com/wurannnnn666/Astock-KOL-Radar.git
cd Astock-KOL-Radar
```

启动 TradingAgents 本机总控台：

```powershell
powershell -ExecutionPolicy Bypass -File scripts\start-local-ui.ps1
```

打开：

- 本机：`http://localhost:8501`
- 局域网：脚本会显示当前机器的 LAN URL。

如果局域网设备打不开，用管理员 PowerShell 放开端口：

```powershell
New-NetFirewallRule -DisplayName "TradingAgents Local KOL UI" -Direction Inbound -Action Allow -Protocol TCP -LocalPort 8501 -Profile Private
```

## 本机默认路径

- KOL SQLite：`C:\Users\35230\.tradingagents\kol\local_kol_radar.sqlite`
- Obsidian Vault：`C:\Users\35230\Documents\Obsidian Vault`
- Obsidian KOL Radar：`C:\Users\35230\Documents\Obsidian Vault\KOL-Radar`

## GitHub 展示入口

- TradingAgents fork PR：<https://github.com/wurannnnn666/TradingAgents-astock/pull/1>
- Horizon fork PR：<https://github.com/wurannnnn666/Horizon/pull/1>

## License

本总项目采用 Apache-2.0。子模块保留各自上游项目的许可证与版权声明。
