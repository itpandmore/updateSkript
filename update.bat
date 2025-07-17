@echo off
REM Git Pull im aktuellen Repository
git pull

REM Prüfen, ob Python installiert ist
where python >nul 2>nul
if errorlevel 1 (
    echo Python wurde nicht gefunden.
    exit /b 1
)

REM Prüfen, ob main.py existiert
if exist main.py (
    echo main.py gefunden. Wird ausgeführt...
    python main.py
) else (
    echo main.py nicht gefunden.
)
