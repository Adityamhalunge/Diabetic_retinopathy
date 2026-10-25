@echo off
setlocal
set "PATH=C:\Program Files\nodejs;%PATH%"

echo ===================================================
echo   Starting DR Vision AI (Backend + Frontend)
echo ===================================================

echo Starting FastAPI Backend on http://localhost:8000 ...
start "DR Vision AI - Backend" cmd /k "cd /d "%~dp0" && .\.venv\Scripts\python.exe backend/run_backend.py"

echo Starting Vite Frontend on http://localhost:5173 ...
start "DR Vision AI - Frontend" cmd /k "cd /d "%~dp0" && set PATH=C:\Program Files\nodejs;%PATH% && "C:\Program Files\nodejs\npm.cmd" run dev"

echo.
echo Both servers have been launched in separate windows!
echo Backend:  http://localhost:8000
echo Frontend: http://localhost:5173
echo.
pause
