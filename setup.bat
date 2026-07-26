@echo off
setlocal

set PYEXE=python
where py >nul 2>nul
if %ERRORLEVEL%==0 set PYEXE=py -3

echo Using Python command: %PYEXE%

%PYEXE% -m venv .venv
if %ERRORLEVEL% neq 0 (
  echo Failed to create virtual environment. Ensure Python 3 is installed.
  exit /b 1
)

.\.venv\Scripts\python.exe -m pip install --upgrade pip
if %ERRORLEVEL% neq 0 exit /b 1

.\.venv\Scripts\python.exe -m pip install -r requirements.txt
if %ERRORLEVEL% neq 0 exit /b 1

echo.
echo Setup complete.
echo Activate the environment with: .\.venv\Scripts\activate
