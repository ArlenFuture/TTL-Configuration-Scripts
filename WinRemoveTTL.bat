@echo off & chcp 65001 >nul
REM 刪除 TTL 設定
echo 正在刪除 TTL 設定..

reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v DefaultTTL /f

if %errorlevel% equ 0 (
    echo TTL 設定已刪除，請重啟電腦以恢復預設 TTL。
) else (
    echo 發生錯誤，請以系統管理員身份執行此批處理檔案。
)

pause
