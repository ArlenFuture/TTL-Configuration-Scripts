@echo off & chcp 65001 >nul
REM 設定 TTL 為 65
echo 正在將 TTL 設定為 65...

reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v DefaultTTL /t REG_DWORD /d 65 /f

if %errorlevel% equ 0 (
    echo TTL 設定完成，請重啟電腦以套用更改。
) else (
    echo 發生錯誤，請以系統管理員身份執行此批處理檔案。
)

pause
