@echo off
chcp 65001
(cd /d "%~dp0")&&(NET FILE||(powershell start-process -FilePath '%0' -verb runas)&&(exit /B)) >NUL 2>&1
cd %temp%
cd ..
rd temp /s /q 2>nul & cd temp
cd C:\Windows\SoftwareDistribution
rd Download /s /q & cd Download
cd C:\Windows 
rd /s /q Prefetch & md Prefetch
wsreset.exe
ping 127.0.0.1 -n 1 >nul
taskkill /f /im winstore.app.exe
ipconfig /flushdns >nul
cls
echo 請點選清理系統檔案，並全部勾選，在按清理
start cleanmgr.exe
echo 完成
echo 按任意鍵離開
pause >nul
