$InstallArgs = @{
    PackageName = 'kdenlive'
    FileType = 'EXE'
    SilentArgs = '/S'
    Url = 'https://files.kde.org/kdenlive/release/kdenlive-18.12.1.exe'
    ChecksumType = 'sha256'
    Checksum = 'F37F148922244999080FACD5EFE796CBE785F66C78008335D7F356640EDC2A5A'
}

Install-ChocolateyPackage @InstallArgs