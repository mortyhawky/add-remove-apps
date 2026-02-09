$ThisLocation=Get-Location
$AppsPath="C:\scoop\apps"
$Destination="E:\win\add-remove-apps\AppsList.txt"

Set-Location $AppsPath
Get-ChildItem -Directory |
	Select-Object Name | 
		Out-File -FilePath $Destination

Set-Location $ThisLocation
bat $Destination

