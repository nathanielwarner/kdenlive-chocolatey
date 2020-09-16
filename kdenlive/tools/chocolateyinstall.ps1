$InstallArgs = @{
    PackageName = 'kdenlive'
    FileType = 'EXE'
    SilentArgs = '/S'
    Url = 'https://files.kde.org/kdenlive/release/kdenlive-20.08.1.exe'
    ChecksumType = 'sha256'
    Checksum = 'A4E81B90E6ADEDA3295DF1D0716D024DBFB6A760C052A73C22E713725667E746'
}

Install-ChocolateyPackage @InstallArgs