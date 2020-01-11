$InstallArgs = @{
    PackageName = 'kdenlive'
    FileType = 'EXE'
    SilentArgs = '/S'
    Url = 'https://files.kde.org/kdenlive/release/kdenlive-19.12.1.exe'
    ChecksumType = 'sha256'
    Checksum = '4D3ED315367C75BC74A74A62A4A93FB889041791BFD364C463092A5C1EE41B1D'
}

Install-ChocolateyPackage @InstallArgs