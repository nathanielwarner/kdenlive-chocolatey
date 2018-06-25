$kdenlive = Get-Process kdenlive -ErrorAction Silent
if ($kdenlive) {
	$kdenlive.CloseMainWindow()
	Sleep 5
	$kdenlive = Get-Process kdenlive -ErrorAction Silent
	if ($kdenlive) {
		Stop-Process -Force $kdenlive
	}
}
Remove-Variable kdenlive