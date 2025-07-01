<#
create_structure.ps1
Запуск:  PowerShell -ExecutionPolicy Bypass -File scripts\create_structure.ps1
#>

param(
    # Корень репозитория; по-умолчанию текущая папка
    [string]$RepoRoot = "."
)

########################################################################
# 0. Переходим в корень репозитория                                    #
########################################################################
Set-Location $RepoRoot   # cd аналог :contentReference[oaicite:1]{index=1}

########################################################################
# 1. Каталоги монорепы                                                 #
########################################################################
$dirs = @(
    "frontend","frontend\public","frontend\src","frontend\tests",
    "backend","backend\app","backend\tests",
    "infra",
    ".github\workflows",
    "docs",
    "scripts"
)

foreach ($d in $dirs) {
    New-Item -ItemType Directory -Path $d -Force | Out-Null   # mkdir :contentReference[oaicite:2]{index=2}
}

########################################################################
# 2. Плейсхолдер-файлы                                                 #
########################################################################
$placeholders = @{
    "frontend\README.md"          = "# Frontend`n"
    "backend\README.md"           = "# Backend`n"
    "infra\README.md"             = "# Infrastructure`n"
    "docs\README.md"              = "# Project docs`n"
    ".github\workflows\README.md" = "# CI placeholder`n"

    # фронтовые конфиги
    "frontend\next.config.mjs"    = "export default { reactStrictMode: true };`n"
    "frontend\tailwind.config.js" = "module.exports = { content: [], theme: { extend: {} }, plugins: [], };`n"
    "frontend\postcss.config.js"  = "module.exports = { plugins: { tailwindcss: {}, autoprefixer: {} }, };`n"

    # бэкенд
    "backend\pyproject.toml" = '[project]`nname = "virtual-fitting-room-backend"`nversion = "0.1.0"`n'


    # инфраструктура
    "infra\docker-compose.yml"    = "# docker-compose placeholder`n"
    "infra\Dockerfile.frontend"   = "# Dockerfile for frontend`n"
    "infra\Dockerfile.backend"    = "# Dockerfile for backend`n"

    # корневые утилы
    ".dockerignore"               = "node_modules/`n__pycache__/`n*.py[cod]`n"
    ".env.example"                = "# Example environment variables`n"
    "Makefile"                    = "# Make commands`n"
}

foreach ($item in $placeholders.GetEnumerator()) {
    if (-not (Test-Path $item.Key)) {
        New-Item -ItemType File -Path $item.Key -Force -Value $item.Value | Out-Null   # touch-аналог :contentReference[oaicite:3]{index=3}
    }
}

########################################################################
# 3. Сразу индексируем изменения                                       #
########################################################################
git add .                          # подготовка к коммиту :contentReference[oaicite:4]{index=4}
Write-Host "✅ Структура сгенерирована и добавлена в git-индекс."
