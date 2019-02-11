$UninstallArgs = @{
    PackageName = 'kdenlive'
    FileType = 'EXE'
    File = 'C:\Program Files\kdenlive\uninstall.exe'
    SilentArgs = '/S'
}

Uninstall-ChocolateyPackage @UninstallArgs