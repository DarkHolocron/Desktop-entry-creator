# Desktop Entry Creator

Простой bash-скрипт для быстрого создания `.desktop` файлов в Linux.

## Установка

### Способ 1: Скачать готовый файл (рекомендуется)

Скачайте последнюю стабильную версию из [Releases](https://github.com/DarkHolocron/Desktop-entry-creator/releases).

### Способ 2: Клонировать репозиторий

Для получения самой свежей версии, включая нестабильные, клонируйте ветку `dev`:

```bash
git clone -b dev https://github.com/DarkHolocron/Desktop-entry-creator.git
cd Desktop-entry-creator
```

## Использование

1. Дайте права на выполнение:
   ```bash
   chmod +x create-desktop.sh
   ```

2. Запустите скрипт:
   ```bash
   ./create-desktop.sh
   ```

3. Следуйте инструкциям:
   - Введите имя файла без расширения `.desktop`
   - Введите название приложения
   - Укажите полный путь к исполняемому файлу
   - Укажите полный путь к иконке

4. После завершения ярлык будет создан в `/usr/share/applications/`
