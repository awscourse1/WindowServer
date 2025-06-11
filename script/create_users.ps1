$ouPath = "OU=Utilisateurs,OU=Paris-Ouest,OU=Paris,OU=France,OU=ynovGroup,DC=YnovDomaine,DC=com"

if (-not (Get-ADOrganizationalUnit -Filter "Name -eq 'Utilisateurs'" -SearchBase "OU=Paris-Ouest,OU=Paris,OU=France,OU=ynovGroup,DC=YnovDomaine,DC=com" -ErrorAction SilentlyContinue)) {
    New-ADOrganizationalUnit -Name "Utilisateurs" -Path "OU=Paris-Ouest,OU=Paris,OU=France,OU=ynovGroup,DC=YnovDomaine,DC=com"
}

$utilisateurs = @(
    "jean Michel",
    "albert stone",
    "anne calmant",
    "stan ibrahim",
    "kelyan danis",
    "jeremy gaudin",
    "maiwenn textier",
    "cassian joly",
    "matthieu carron",
    "axel loquet",
    "romain jollivet"
)

$motDePasse = ConvertTo-SecureString "Lmnu1245782/@#" -AsPlainText -Force

foreach ($nomComplet in $utilisateurs) {
    $parts = $nomComplet -split ' '
    $prenom = $parts[0]
    $nom = $parts[1]
    $login = ($prenom + $nom).ToLower() -replace '\s',''  

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