$ErrorActionPreference = "Stop"
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
python -m PyInstaller OpenInGoogle.spec --clean --noconfirm
$InnoPaths = @("${env:ProgramFiles(x86)}\Inno Setup 6\ISCC.exe","${env:ProgramFiles}\Inno Setup 6\ISCC.exe")
$ISCC = $InnoPaths | Where-Object { Test-Path $_ } | Select-Object -First 1
if (-not $ISCC) { throw "Inno Setup 6 was not found." }
& $ISCC ".\installer\OpenInGoogle.iss"
