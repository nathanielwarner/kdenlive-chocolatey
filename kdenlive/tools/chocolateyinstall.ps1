$InstallArgs = @{
    PackageName = 'kdenlive'
    FileType = 'EXE'
    SilentArgs = '/S'
    Url = 'https://files.kde.org/kdenlive/release/kdenlive-19.04.3-1.exe'
    ChecksumType = 'sha256'
    Checksum = 'C36F56D1C47258BFF3519A3D8CA4AFFC7D5E0B6AB5EFEC3AD3983199A7A192D3'
}

Install-ChocolateyPackage @InstallArgs