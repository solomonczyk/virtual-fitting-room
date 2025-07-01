# Скрипт для создания файловой структуры проекта "Виртуальная Примерочная Одежды"

# Устанавливаем текущую директорию как корневую для проекта
$projectRoot = Get-Location

# Функция для создания папки
function Create-Directory ($path) {
    if (-not (Test-Path $path)) {
        New-Item -ItemType Directory -Path $path | Out-Null
        Write-Host "Создана папка: $path"
    }
}

# Функция для создания пустого файла
function Create-File ($path) {
    if (-not (Test-Path $path)) {
        New-Item -ItemType File -Path $path | Out-Null
        Write-Host "Создан файл: $path"
    }
}

Write-Host "Начинаем создание файловой структуры..."

# .github/workflows/
Create-Directory (Join-Path $projectRoot ".github\workflows")
Create-File (Join-Path $projectRoot ".github\workflows\main.yml")

# public/
Create-Directory (Join-Path $projectRoot "public")
Create-File (Join-Path $projectRoot "public\index.html")
Create-File (Join-Path $projectRoot "public\favicon.ico")

# public/assets/
Create-Directory (Join-Path $projectRoot "public\assets")
Create-Directory (Join-Path $projectRoot "public\assets\images")
Create-File (Join-Path $projectRoot "public\assets\images\placeholder.png")
Create-Directory (Join-Path $projectRoot "public\assets\fonts")

# src/
Create-Directory (Join-Path $projectRoot "src")

# src/api/
Create-Directory (Join-Path $projectRoot "src\api")
Create-File (Join-Path $projectRoot "src\api\auth.js")
Create-File (Join-Path $projectRoot "src\api\product.js")
Create-File (Join-Path $projectRoot "src\api\index.js")

# src/components/
Create-Directory (Join-Path $projectRoot "src\components")
Create-Directory (Join-Path $projectRoot "src\components\Button")
Create-File (Join-Path $projectRoot "src\components\Button\Button.js")
Create-File (Join-Path $projectRoot "src\components\Button\Button.module.css")
Create-Directory (Join-Path $projectRoot "src\components\Header")
Create-File (Join-Path $projectRoot "src\components\Header\Header.js")
Create-File (Join-Path $projectRoot "src\components\Header\Header.module.css")
Create-Directory (Join-Path $projectRoot "src\components\VirtualTryOnCanvas")
Create-File (Join-Path $projectRoot "src\components\VirtualTryOnCanvas\VirtualTryOnCanvas.js")
Create-File (Join-Path $projectRoot "src\components\VirtualTryOnCanvas\VirtualTryOnCanvas.module.css")
Create-File (Join-Path $projectRoot "src\components\index.js")

# src/config/
Create-Directory (Join-Path $projectRoot "src\config")
Create-File (Join-Path $projectRoot "src\config\settings.js")

# src/constants/
Create-Directory (Join-Path $projectRoot "src\constants")
Create-File (Join-Path $projectRoot "src\constants\appConstants.js")

# src/hooks/
Create-Directory (Join-Path $projectRoot "src\hooks")
Create-File (Join-Path $projectRoot "src\hooks\useVirtualFitting.js")

# src/layouts/
Create-Directory (Join-Path $projectRoot "src\layouts")
Create-File (Join-Path $projectRoot "src\layouts\MainLayout.js")

# src/pages/
Create-Directory (Join-Path $projectRoot "src\pages")
Create-File (Join-Path $projectRoot "src\pages\HomePage.js")
Create-File (Join-Path $projectRoot "src\pages\ProductPage.js")
Create-File (Join-Path $projectRoot "src\pages\TryOnPage.js")

# src/services/
Create-Directory (Join-Path $projectRoot "src\services")
Create-File (Join-Path $projectRoot "src\services\authService.js")
Create-File (Join-Path $projectRoot "src\services\imageProcessingService.js")
Create-File (Join-Path $projectRoot "src\services\tryOnService.js")
Create-File (Join-Path $projectRoot "src\services\utils.js")

# src/store/
Create-Directory (Join-Path $projectRoot "src\store")
Create-File (Join-Path $projectRoot "src\store\index.js")
Create-Directory (Join-Path $projectRoot "src\store\reducers")
Create-File (Join-Path $projectRoot "src\store\reducers\uiReducer.js")
Create-File (Join-Path $projectRoot "src\store\reducers\productReducer.js")
Create-Directory (Join-Path $projectRoot "src\store\actions")
Create-File (Join-Path $projectRoot "src\store\actions\productActions.js")

# src/styles/
Create-Directory (Join-Path $projectRoot "src\styles")
Create-File (Join-Path $projectRoot "src\styles\base.css")
Create-File (Join-Path $projectRoot "src\styles\variables.css")

# src/utils/
Create-Directory (Join-Path $projectRoot "src\utils")
Create-File (Join-Path $projectRoot "src\utils\helpers.js")
Create-File (Join-Path $projectRoot "src\utils\validation.js")

# Основные файлы в src/
Create-File (Join-Path $projectRoot "src\App.js")
Create-File (Join-Path $projectRoot "src\index.js")

# tests/
Create-Directory (Join-Path $projectRoot "tests")
Create-Directory (Join-Path $projectRoot "tests\components")
Create-Directory (Join-Path $projectRoot "tests\services")
Create-Directory (Join-Path $projectRoot "tests\pages")

# docs/
Create-Directory (Join-Path $projectRoot "docs")
Create-File (Join-Path $projectRoot "docs\architecture.md")
Create-File (Join-Path $projectRoot "docs\api.md")
Create-File (Join-Path $projectRoot "docs\setup.md")

# Корневые файлы (уже должны быть, но на всякий случай)
Create-File (Join-Path $projectRoot ".gitignore")
Create-File (Join-Path $projectRoot "package.json")
Create-File (Join-Path $projectRoot "package-lock.json") # Этот файл генерируется npm, пока пустой
Create-File (Join-Path $projectRoot "CONTRIBUTING.md")

Write-Host "Файловая структура успешно создана!"