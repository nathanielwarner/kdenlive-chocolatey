$packageName = $env:ChocolateyPackageName
$url = 'https://files.kde.org/kdenlive/release/kdenlive-18.12.1.exe'

$checksum = 'F37F148922244999080FACD5EFE796CBE785F66C78008335D7F356640EDC2A5A'
$checksumType = 'sha256'

$silentArgs = '/S'

Install-ChocolateyPackage -PackageName $packageName -FileType $fileType -SilentArgs $silentArgs -Url $url -Checksum $checksum -ChecksumType $checksumType