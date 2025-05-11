Import-Module AU

$releases = 'https://kdenlive.org/download/'

function global:au_SearchReplace {
    @{
        "tools\VERIFICATION.txt" = @{
			"(?i)(\s+x32:).*" = "`${1} $($Latest.URL32)"
		}
	}
}

function global:au_BeforeUpdate() {
	Get-RemoteFiles -Purge -NoSuffix 
}


function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing
    $url        = $download_page.links | ? href -match '\d.exe$'| % href | select -First 1
	$version    = (($url -split '/' | select -Last 1) -split '-' | select -Last 1).trim('.exe')
	
	return @{ Version = $version; URL32 = $url;}
}

Update-Package -ChecksumFor none