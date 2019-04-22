$InstallArgs = @{
    PackageName = 'kdenlive'
    FileType = 'EXE'
    SilentArgs = '/S'
    Url = 'https://files.kde.org/kdenlive/release/kdenlive-19.04.0-1.exe'
    ChecksumType = 'sha256'
    Checksum = '721E711E586ACC72CFFF5F9A0C7BE0BEA777D0122EC4F29539A2EDD9DBF6FA13'
}

Install-ChocolateyPackage @InstallArgs