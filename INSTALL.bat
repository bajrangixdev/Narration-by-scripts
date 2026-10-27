@echo off
title Install Narration Timestamp Engine
cd /d "%~dp0"
python -m pip install --upgrade pip
python -m pip install edge-tts faster-whisper
echo.
echo Installation complete.
pause
