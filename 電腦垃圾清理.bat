@echo off
(cd /d "%~dp0")&&(NET FILE||(powershell start-process -FilePath '%0' -verb runas)&&(exit /B)) >NUL 2>&1
cd %temp%
cd ..
rd temp /s /q 2>nul & cd temp
cd C:\Windows\SoftwareDistribution
rd Download /s /q & cd Download
cd C:\Windows 
rd /s /q Prefetch & md Prefetch
wsreset.exe
ping 8.8.8.8 -n 1
taskkill /f /im winstore.app.exe
ipconfig /flushdns >nul
cls
echo ���I��M�z�t���ɮסA�å����Ŀ�A�b���M�z
start cleanmgr.exe
echo ����
echo �����N�����}
pause >nul