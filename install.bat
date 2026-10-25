@echo off
setlocal
set "PATH=C:\Program Files\nodejs;%PATH%"

echo ===================================================
echo   Installing All Project Dependencies
echo ===================================================

echo.
echo [1/2] Setting up Python virtual environment and backend dependencies...
if not exist ".venv" (
    echo Creating .venv...
    python -m venv .venv
)

echo Installing Python packages (FastAPI, Uvicorn, Pillow, NumPy, ONNX Runtime)...
.\.venv\Scripts\python.exe -m pip install --upgrade pip
.\.venv\Scripts\pip.exe install -r requirements.txt

echo.
echo [2/2] Installing Node.js frontend dependencies (npm install)...
call "C:\Program Files\nodejs\npm.cmd" install

echo.
echo ===================================================
echo   All dependencies installed successfully!
echo   You can now run: run.bat
echo ===================================================
pause
