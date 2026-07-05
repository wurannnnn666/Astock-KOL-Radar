$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent (Split-Path -Parent $PSScriptRoot)
$tradingAgentsRoot = Join-Path $repoRoot "modules\TradingAgents-astock"
$horizonRoot = Join-Path $repoRoot "modules\Horizon"

if (-not (Test-Path $tradingAgentsRoot)) {
    throw "Missing submodule: modules\TradingAgents-astock. Run: git submodule update --init --recursive"
}

if (-not (Test-Path $horizonRoot)) {
    throw "Missing submodule: modules\Horizon. Run: git submodule update --init --recursive"
}

Write-Host "Running TradingAgents KOL smoke..." -ForegroundColor Green
Set-Location $tradingAgentsRoot
powershell -ExecutionPolicy Bypass -File scripts\run-local-kol-smoke.ps1

Write-Host "Running Horizon KOL source smoke..." -ForegroundColor Green
Set-Location $horizonRoot
powershell -ExecutionPolicy Bypass -File scripts\run-local-kol-source-smoke.ps1
