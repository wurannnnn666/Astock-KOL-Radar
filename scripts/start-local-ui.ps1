$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent (Split-Path -Parent $PSScriptRoot)
$tradingAgentsRoot = Join-Path $repoRoot "modules\TradingAgents-astock"

if (-not (Test-Path $tradingAgentsRoot)) {
    throw "Missing submodule: modules\TradingAgents-astock. Run: git submodule update --init --recursive"
}

Set-Location $tradingAgentsRoot
powershell -ExecutionPolicy Bypass -File scripts\start-local-kol-ui.ps1

