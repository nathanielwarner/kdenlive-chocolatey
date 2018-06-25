$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64      = 'https://files.kde.org/kdenlive/release/Kdenlive-18.04.1d-w64.zip'

$packageName   = $env:ChocolateyPackageName

$softwareName  = 'kdenlive*'

$checksum64    = 'D1BC33D1C32F9E2343D9A91BCD6DEB864C5C598A08C88DC2E8F7AA46CC45D35F'
$checksumType64= 'sha256'

$fileName = "Kdenlive-18.04.1\kdenlive.exe"
$linkName = "kdenlive.lnk"
$destdir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage -PackageName $packageName -Url64Bit $url64 -UnzipLocation $toolsDir -Checksum64 $checksum64 -ChecksumType64 $checksumType64

$programs = [environment]::GetFolderPath([environment+specialfolder]::Programs)
$shortcutFilePath = Join-Path $programs $linkName
$targetPath = Join-Path $destdir $fileName
Install-ChocolateyShortcut -shortcutFilePath $shortcutFilePath -targetPath $targetPath