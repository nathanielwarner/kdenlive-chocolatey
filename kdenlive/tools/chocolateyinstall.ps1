$ErrorActionPreference = 'Stop'
$toolsDir              = Split-Path -parent $MyInvocation.MyCommand.Definition

$uninstaller = 'C:\Program Files\kdenlive\uninstall.exe'

if (Test-Path -Path $uninstaller -PathType Leaf) {
	'Uninstalling existing version of kdenlive'
	Start-Process $uninstaller /S -NoNewWindow -Wait
}

$InstallArgs = @{
    PackageName = 'kdenlive'
    FileType = 'EXE'
    SilentArgs = '/S'
    File = (Get-Childitem -Path $toolsDir -Filter "*.exe").fullname
}

Install-ChocolateyInstallPackage @InstallArgs

Remove-Item "$toolsDir\*.exe" -Force -EA SilentlyContinue | Out-Null