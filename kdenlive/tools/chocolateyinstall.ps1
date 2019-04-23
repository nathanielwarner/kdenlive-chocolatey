$InstallArgs = @{
    PackageName = 'kdenlive'
    FileType = 'EXE'
    SilentArgs = '/S'
    Url = 'https://files.kde.org/kdenlive/release/kdenlive-19.04.0-2.exe'
    ChecksumType = 'sha256'
    Checksum = '3044CC8F2A7EC319F57E04CD40A626043AEF4C8292E8DC2D36BAA8272FF45EB1'
}

Install-ChocolateyPackage @InstallArgs