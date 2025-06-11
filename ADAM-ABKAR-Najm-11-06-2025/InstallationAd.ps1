Write-Host "`n[1/4] Installation du r�le AD DS..." -ForegroundColor Cyan
Install-WindowsFeature AD-Domain-Services -IncludeManagementTools

Write-Host "`n[2/4] Configuration du mot de passe DSRM..." -ForegroundColor Cyan
$SecurePassword = ConvertTo-SecureString "0926774415Na,," -AsPlainText -Force

Write-Host "`n[3/4] Promotion du serveur en contr�leur de domaine..." -ForegroundColor Cyan
Install-ADDSForest `
    -DomainName "ynov.local" `
    -DomainNetbiosName "YNOV" `
    -SafeModeAdministratorPassword $SecurePassword `
    -Force

