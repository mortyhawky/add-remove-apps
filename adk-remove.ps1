# Uninstall ADK via winget
winget uninstall --id Microsoft.WindowsADK -e

# Remove leftover folders if they exist
$folders = @(
    "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit",
    "C:\Program Files (x86)\Windows Kits\10\Windows Preinstallation Environment"
)

foreach ($f in $folders) {
    if (Test-Path $f) {
        Remove-Item $f -Recurse -Force
        Write-Output "Removed $f"
    }
}

# Confirm winget no longer lists it
Write-Output "Remaining winget ADK entries:"
winget list | Select-String "ADK"

