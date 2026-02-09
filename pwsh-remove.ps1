#winget list
$app = "Microsoft.PowerShell"

New-Line
 Write-Output "winget search $app"
 winget search $app

New-Line
 Write-Output "winget list | Select-String $app"
 winget list | Select-String $app
 
New-Line
 Write-Output "To uninstall use:"
 Write-Output "winget uninstall $app"

