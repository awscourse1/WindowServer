# NOTE : ce script ne marche que pour moi parce que j'ai formaté les noms et prénoms des utilisateurs d'une certaine manière pour pouvoir utiliser une boucle.
# J'ai gardé le meme mot de passe pour tous les utilisateurs par soucis de facilité.
# Si chaque utilisateur doit avoir un mot de passe différent, ou des noms et prénoms qui n'ont pas la même structure, il faudra oublier la boucle et créer les utilisateurs un par un en modifiant le script.

# Définition du chemin de l'OU cible
$ouPath = "OU=ps_Utilisateurs,OU=ps_ynovGroup,DC=godwin,DC=com"

# Vérification et création de l'OU ps_Utilisateurs si elle n'existe pas
if (-not (Get-ADOrganizationalUnit -Filter "Name -eq 'ps_Utilisateurs'" -SearchBase "OU=ps_ynovGroup,DC=godwin,DC=com" -ErrorAction SilentlyContinue)) {
    New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path "OU=ps_ynovGroup,DC=godwin,DC=com"
}

# Boucle pour créer les utilisateurs go1 à go11
for ($i = 1; $i -le 11; $i++) {
    $prenom = "godwin$i"
    $nom = "oblasse$i"
    $login = "go$i"
    $nomComplet = "$prenom $login. $nom"
    $motDePasse = ConvertTo-SecureString "oGbG191817$$" -AsPlainText -Force

    # Créer l'utilisateur
    New-ADUser `
        -Name $nomComplet `
        -GivenName $prenom `
        -Surname $nom `
        -DisplayName $nomComplet `
        -SamAccountName $login `
        -UserPrincipalName "$login@godwin.com" `
        -Path $ouPath `
        -AccountPassword $motDePasse `
        -Enabled $true `
        -ChangePasswordAtLogon $true
}

# Si les utilisateurs à créer existent déjà dans la foret comme c'est mon cas, modifier la boucle. par exemple faire partir i de 12 à 22 plutôt etc...