$ErrorActionPreference = 'Stop'
$toolsDir              = Split-Path -parent $MyInvocation.MyCommand.Definition

$InstallArgs = @{
    PackageName = 'kdenlive'
    FileType = 'EXE'
    SilentArgs = '/S'
    File = (Get-Childitem -Path $toolsDir -Filter "*.exe").fullname
}

Install-ChocolateyInstallPackage @InstallArgs

Remove-Item "$toolsDir\*.exe" -Force -EA SilentlyContinue | Out-Null