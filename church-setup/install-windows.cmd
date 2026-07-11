@echo off
REM Church Caption — Windows installer wrapper
REM Runs install-windows.ps1 with ExecutionPolicy Bypass so volunteers
REM do not need to change PowerShell policy settings.

cd /d "%~dp0"
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0install-windows.ps1"
exit /b %ERRORLEVEL%
