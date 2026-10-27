@echo off
title Narration Timestamp Engine
cd /d "%~dp0"
echo.
echo ============================================
echo      NARRATION TIMESTAMP ENGINE
echo ============================================
echo.
if not exist "INPUT\script.txt" (
    echo ERROR: INPUT\script.txt not found.
    echo Put your script into INPUT\script.txt
    pause
    exit /b 1
)
python ENGINE\main.py
echo.
pause
