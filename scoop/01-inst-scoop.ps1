Set-PSReadLineOption -EditMode Vi

$env:SCOOP='C:\scoop'
[Environment]::SetEnvironmentVariable('SCOOP', $env:SCOOP, 'User')
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -useb get.scoop.sh | Invoke-Expression



# run as regular user:
#Invoke-RestMethod get.scoop.sh | Invoke-Expression
#irm get.scoop.sh | iex

#scoop install git

# To register file associations, please execute the following command:
#reg import "C:\Users\morty\scoop\apps\git\current\install-associations.reg"

#To register the context menu entry, please execute the following command:
#reg import "C:\Users\morty\scoop\apps\git\current\install-context.reg"

# To set Git Credential Manager Core for portable Git,
# please execute the following command:
#git config --global credential.helper manager

#scoop update
#scoop bucket add extras

