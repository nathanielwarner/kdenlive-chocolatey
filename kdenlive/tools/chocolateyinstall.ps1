$InstallArgs = @{
    PackageName = 'kdenlive'
    FileType = 'EXE'
    SilentArgs = '/S'
    Url = 'https://files.kde.org/kdenlive/release/kdenlive-19.08.2.exe'
    ChecksumType = 'sha256'
    Checksum = 'DD3A2084298F17CAF8AF8661C5D7EB9E98B756B3FDD45266593EAAE1A77662B2'
}

Install-ChocolateyPackage @InstallArgs