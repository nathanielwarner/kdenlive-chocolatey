$InstallArgs = @{
    PackageName = 'kdenlive'
    FileType = 'EXE'
    SilentArgs = '/S'
    Url = 'https://files.kde.org/kdenlive/release/kdenlive-19.04.2-3.exe'
    ChecksumType = 'sha256'
    Checksum = 'BD4AF9787C8D5432FF73EF73CDC8EA3340746C410485195C5D2A286B0A3E269A'
}

Install-ChocolateyPackage @InstallArgs