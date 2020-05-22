$InstallArgs = @{
    PackageName = 'kdenlive'
    FileType = 'EXE'
    SilentArgs = '/S'
    Url = 'https://files.kde.org/kdenlive/release/kdenlive-20.04.1.exe'
    ChecksumType = 'sha256'
    Checksum = '62DB34513D7C58A5A7F9CBD88C0FCA985D10C0FFDDEB8BED6A451CC968B2C81C'
}

Install-ChocolateyPackage @InstallArgs