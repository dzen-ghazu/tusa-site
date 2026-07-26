$ErrorActionPreference = "Stop"

function Get-PythonCommand {
    if (Get-Command py -ErrorAction SilentlyContinue) {
        return @("py", "-3")
    }

    if (Get-Command python -ErrorAction SilentlyContinue) {
        return @("python")
    }

    throw "Python 3 was not found. Please install Python first."
}

$pythonCmd = Get-PythonCommand
$pythonCmdDisplay = $pythonCmd -join " "

Write-Host "Using Python command: $pythonCmdDisplay"

if ($pythonCmd.Length -gt 1) {
    & $pythonCmd[0] $pythonCmd[1] -m venv .venv
} else {
    & $pythonCmd[0] -m venv .venv
}
& .\.venv\Scripts\python.exe -m pip install --upgrade pip
& .\.venv\Scripts\python.exe -m pip install -r requirements.txt

Write-Host ""
Write-Host "Setup complete."
Write-Host "Activate the environment with: .\.venv\Scripts\Activate.ps1"
