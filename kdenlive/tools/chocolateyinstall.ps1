$InstallArgs = @{
    PackageName = 'kdenlive'
    FileType = 'EXE'
    SilentArgs = '/S'
    Url = 'https://files.kde.org/kdenlive/release/kdenlive-19.12.3.exe'
    ChecksumType = 'sha256'
    Checksum = '95EE0A8BB8C111756C151AAB5936E963BE22949D36B29F44673AF4CBC44B6660'
}

Install-ChocolateyPackage @InstallArgs