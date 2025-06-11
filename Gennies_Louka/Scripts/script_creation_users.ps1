# Def du chemin de l'OU cible
$ouPath = "OU=ps_Users,OU=ps_ynovGroup,DC=corp,DC=YnovDomain,DC=com"

# Vérification et création de l'OU ps_Utilisateurs si elle n'existe pas
if (-not (Get-ADOrganizationalUnit -Filter "Name -eq 'ps_Users'" -SearchBase "OU=ps_ynovGroup,DC=corp,DC=YnovDomain,DC=com" -ErrorAction SilentlyContinue)) {
    New-ADOrganizationalUnit -Name "ps_Users" -Path "OU=ps_ynovGroup,DC=corp,DC=YnovDomain,DC=com"
}

# Boucle pour cr�er les utilisateurs LG1 à LG11
for ($i = 1; $i -le 11; $i++) {
    $prenom = "Louka$i"
    $nom = "Gennies$i"
    $login = "LG$i"
    $nomComplet = "$prenom $login. $nom"
    $motDePasse = ConvertTo-SecureString "ABCD-efgh-1234$$" -AsPlainText -Force

    # Créer l'utilisateur
    New-ADUser `
        -Name $nomComplet `
        -GivenName $prenom `
        -Surname $nom `
        -DisplayName $nomComplet `
        -SamAccountName $login `
        -UserPrincipalName "$login@LoukaGennies.com" `
        -Path $ouPath `
        -AccountPassword $motDePasse `
        -Enabled $true `
        -ChangePasswordAtLogon $true
}
