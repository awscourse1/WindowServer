New-ADUser `
    -Name "By Powershell" `
    -GivenName "By" `
    -Surname "Powershell" `
    -SamAccountName "bpowershell" `
    -UserPrincipalName "bypowershell@ynovDomaine.com" `
    -Path "OU=Utilisateurs,OU=Lille,OU=Nord,OU=France,OU=ynovGroup,DC=ynovDomaine,DC=com" `
    -AccountPassword (ConvertTo-SecureString "Powershell!" -AsPlainText -Force) `
    -Enabled $true