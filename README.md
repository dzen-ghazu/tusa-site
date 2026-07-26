# TUSA Site Workspace

This repository is the workspace for the new TUSA website for the IT interns who may interested. This repository focuses on the doc site serving beside the main website. This repository is initialised by Dongyi Guo, and now handed over to Dijen Ghazu.

## Environments and Dependencies

Install Python on your computer and make sure it is configured under path. Then, create a new virtual environment in this project folder and activate it:

```bash
python -m venv .venv
source .venv/bin/activate
```

Use `venv` or `.venv` so it will be gitignored.

Then install depending python libraries:

```bash
pip install -r requirements.txt
```

Make sure you select the correct python interpreter and the virtual environment for your IDE as well.

## Quick Setup Scripts

You can also run one setup script (after Python is installed):

```bash
# macOS / Linux

chmod +x setup.sh
./setup.sh
```

```bat
:: Windows (Command Prompt)

setup.bat
```

```powershell
# Windows (PowerShell)

.\setup.ps1
```

If your machine blocks local script execution, run:

```powershell
powershell -ExecutionPolicy Bypass -File .\setup.ps1
```

The scripts create `.venv` and install packages from `requirements.txt`.

After setup, activate the environment:

```bash
# macOS / Linux
source .venv/bin/activate
```

```bat
:: Windows Command Prompt
.\.venv\Scripts\activate
```

```powershell
# Windows PowerShell
.\.venv\Scripts\Activate.ps1
```

You can also run tools directly without activating:

```bash
# macOS / Linux

./.venv/bin/mkdocs serve
```

```bat
:: Windows

.\.venv\Scripts\mkdocs.exe serve
```

```powershell
# Windows PowerShell

.\.venv\Scripts\mkdocs.exe serve
```

