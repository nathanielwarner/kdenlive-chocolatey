# IMPORTANT: Before releasing this package, copy/paste the next 2 lines into PowerShell to remove all comments from this file:
#   $f='c:\path\to\thisFile.ps1'
#   gc $f | ? {$_ -notmatch "^\s*#"} | % {$_ -replace '(^.*?)\s*?[^``]#.*','$1'} | Out-File $f+".~" -en utf8; mv -fo $f+".~" $f

# 1. See the _TODO.md that is generated top level and read through that
# 2. Follow the documentation below to learn how to create a package for the package type you are creating.
# 3. In Chocolatey scripts, ALWAYS use absolute paths - $toolsDir gets you to the package's tools directory.
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
# Internal packages (organizations) or software that has redistribution rights (community repo)
# - Use `Install-ChocolateyInstallPackage` instead of `Install-ChocolateyPackage`
#   and put the binaries directly into the tools folder (we call it embedding)
#$fileLocation = Join-Path $toolsDir 'NAME_OF_EMBEDDED_INSTALLER_FILE'
# If embedding binaries increase total nupkg size to over 1GB, use share location or download from urls
#$fileLocation = '\\SHARE_LOCATION\to\INSTALLER_FILE'
# Community Repo: Use official urls for non-redist binaries or redist where total package size is over 200MB
# Internal/Organization: Download from internal location (internet sources are unreliable)
#$url        = '' # download url, HTTPS preferred
$url64      = 'https://files.kde.org/kdenlive/release/Kdenlive-18.04.1d-w64.zip' # 64bit URL here (HTTPS preferred) or remove - if installer contains both (very rare), use $url

$packageName   = $env:ChocolateyPackageName
#file         = $fileLocation

$softwareName  = 'kdenlive*'

$checksum64    = 'D1BC33D1C32F9E2343D9A91BCD6DEB864C5C598A08C88DC2E8F7AA46CC45D35F'
$checksumType64= 'sha256'

Install-ChocolateyZipPackage -PackageName $packageName -Url64Bit $url64 -UnzipLocation $toolsDir -Checksum64 $checksum64 -ChecksumType64 $checksumType64
    
## add specific folders to the path - any executables found in the chocolatey package 
## folder will already be on the path. This is used in addition to that or for cases 
## when a native installer doesn't add things to the path.
## - https://chocolatey.org/docs/helpers-install-chocolatey-path
#Install-ChocolateyPath 'LOCATION_TO_ADD_TO_PATH' 'User_OR_Machine' # Machine will assert administrative rights

## Add specific files as shortcuts to the desktop
## - https://chocolatey.org/docs/helpers-install-chocolatey-shortcut
#$target = Join-Path $toolsDir "$($packageName).exe"
#Install-ChocolateyShortcut -shortcutFilePath "" -targetPath "<path>" [-workDirectory "C:\" -arguments "C:\test.txt" -iconLocation "C:\test.ico" -description "This is the description"]

## Outputs the bitness of the OS (either "32" or "64")
## - https://chocolatey.org/docs/helpers-get-o-s-architecture-width
#$osBitness = Get-ProcessorBits

## Set persistent Environment variables
## - https://chocolatey.org/docs/helpers-install-chocolatey-environment-variable
#Install-ChocolateyEnvironmentVariable -variableName "SOMEVAR" -variableValue "value" [-variableType = 'Machine' #Defaults to 'User']

## Set up a file association
## - https://chocolatey.org/docs/helpers-install-chocolatey-file-association
#Install-ChocolateyFileAssociation 

## Adding a shim when not automatically found - Cocolatey automatically shims exe files found in package directory.
## - https://chocolatey.org/docs/helpers-install-bin-file
## - https://chocolatey.org/docs/create-packages#how-do-i-exclude-executables-from-getting-shims
#Install-BinFile

##PORTABLE EXAMPLE
#$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
# despite the name "Install-ChocolateyZipPackage" this also works with 7z archives
#Install-ChocolateyZipPackage $packageName $toolsDir $url64
## END PORTABLE EXAMPLE

## [DEPRECATING] PORTABLE EXAMPLE
#$binRoot = Get-BinRoot
#$installDir = Join-Path $binRoot "$packageName"
#Write-Host "Adding `'$installDir`' to the path and the current shell path"
#Install-ChocolateyPath "$installDir"
#$env:Path = "$($env:Path);$installDir"

# if removing $url64, please remove from here
# despite the name "Install-ChocolateyZipPackage" this also works with 7z archives
#Install-ChocolateyZipPackage "$packageName" "$url" "$installDir" "$url64"
## END PORTABLE EXAMPLE
