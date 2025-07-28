@echo off
chcp 65001 > nul

REM Этот скрипт удаляет файлы конфигурации и кеш AnyDesk

set "ANYDESK_systemCONF=%APPDATA%\AnyDesk\system.conf"
set "ANYDESK_serviceCONF=%APPDATA%\AnyDesk\service.conf"
set "ANYDESK_cache_DIR=%APPDATA%\AnyDesk\cache"

REM --- Удаление system.conf ---
if exist "%ANYDESK_systemCONF%" (
    del /f /q "%ANYDESK_systemCONF%"
    echo Файл system.conf успешно удален.
) else (
    echo Файл system.conf не найден.
)

REM --- Удаление service.conf ---
if exist "%ANYDESK_serviceCONF%" (
    del /f /q "%ANYDESK_serviceCONF%"
    echo Файл service.conf успешно удален.
) else (
    echo Файл service.conf не найден.
)

REM --- Удаление папки cache ---
if exist "%ANYDESK_cache_DIR%" (
    rd /s /q "%ANYDESK_cache_DIR%"
    echo Папка cache успешно удалена.
) else (
    echo Папка cache не найдена.
)

echo.
echo Все операции завершены.
echo Перезапустите AnyDesk и выполните переподключение.
pause