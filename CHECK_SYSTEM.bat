@echo off
title Narration Timestamp Engine - System Check
cd /d "%~dp0"
python --version
python -c "import sys; print('Python OK:', sys.executable)"
python -c "import json; print('JSON OK')"
python -c "import importlib.util; print('faster_whisper:', bool(importlib.util.find_spec('faster_whisper')))"
python -c "import importlib.util; print('edge_tts:', bool(importlib.util.find_spec('edge_tts')))"
echo.
echo If faster_whisper or edge_tts is False, run INSTALL.bat
pause
