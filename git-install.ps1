Set-PSReadLineOption -EditMode Vi
Set-PSReadLineOption -ViModeIndicator Cursor

Write-Host "NB! git is installed when scoop is installed!" -ForegroundColor Red
return

scoop update
scoop search git


