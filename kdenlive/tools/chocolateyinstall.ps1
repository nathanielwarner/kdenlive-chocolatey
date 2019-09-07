$InstallArgs = @{
    PackageName = 'kdenlive'
    FileType = 'EXE'
    SilentArgs = '/S'
    Url = 'https://files.kde.org/kdenlive/release/kdenlive-19.08.0-1.exe'
    ChecksumType = 'sha256'
    Checksum = '87834CA6BA1D90B9063E80D448AC09CF65D34126EA3FCF98B2BBE21B9C18C4CD'
}

Install-ChocolateyPackage @InstallArgs