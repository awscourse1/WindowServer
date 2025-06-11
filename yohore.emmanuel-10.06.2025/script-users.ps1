
$ouPath = "OU=Utilisateurs,OU=Aix-en-Provence,OU=Sud,OU=France,OU=ynovGroup,DC=YnovDomaine,DC=com"


if (-not (Get-ADOrganizationalUnit -Filter "Name -eq 'Utilisateurs'" -SearchBase "OU=Aix-en-Provence,OU=Sud,OU=France,OU=ynovGroup,DC=YnovDomaine,DC=com" -ErrorAction SilentlyContinue)) {
    New-ADOrganizationalUnit -Name "Utilisateurs" -Path "OU=Aix-en-Provence,OU=Sud,OU=France,OU=ynovGroup,DC=YnovDomaine,DC=com"
}


for ($i = 1; $i -le 11; $i++) {
    $prenom = "manu$i"
    $nom = "manu$i"
    $login = "manu$i"
    $nomComplet = "$prenom $nom"
    $motDePasse = ConvertTo-SecureString "Lmnu1245782/@#" -AsPlainText -Force

    if (-not (Get-ADUser -Filter "SamAccountName -eq '$login'" -ErrorAction SilentlyContinue)) {
       
        New-ADUser `
            -Name $nomComplet `
            -GivenName $prenom `
            -Surname $nom `
            -DisplayName $nomComplet `
            -SamAccountName $login `
            -UserPrincipalName "$login@YnovDomaine.com" `
            -Path $ouPath `
            -AccountPassword $motDePasse `
            -Enabled $true `
            -ChangePasswordAtLogon $true

        Write-Host "Utilisateur $login créé."
    } else {
        Write-Host "Utilisateur $login existe déjà. Skipping."
    }
}
