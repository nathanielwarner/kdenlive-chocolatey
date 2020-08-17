$InstallArgs = @{
    PackageName = 'kdenlive'
    FileType = 'EXE'
    SilentArgs = '/S'
    Url = 'https://files.kde.org/kdenlive/release/kdenlive-20.08.0.exe'
    ChecksumType = 'sha256'
    Checksum = '175CFACCF15BF7883586EFEC96D1D69066A6A1E0F9BAD556EE13155323F5DA52'
}

Install-ChocolateyPackage @InstallArgs