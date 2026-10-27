@echo off
cd /d "%~dp0"
if exist "OUTPUT" rmdir /s /q "OUTPUT"
mkdir "OUTPUT"
echo OUTPUT reset.
pause
