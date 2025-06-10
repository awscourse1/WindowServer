<# A lire !!!

Voici mon script utilisé pour créer les utilisateurs, les groupes et mettre les utilisateurs dans les groupes.
J'ai créé une boucle parce que, par soucis de simplicité, j'ai formaté mes utilisateurs selon le même pattern (nom : ps_oblasse1 à ps_oblasse11, Prénom : ps_godwin1 à ps_godwin11).
Tous les utilisateurs ont le même mot de passe par défaut mais il devront le changer à la première connexion.

Si vous voulez créer des utilisateurs avec des noms différents à chaque fois (qui ne suivent pas un pattern précis) ou des mots de passe différent à chaque fois, il faudra laisser tomber la boucle et tout rentrer manuellement.

G.O
#>



# Définition du domaine racine
$root = "DC=godwin,DC=com"
$baseOU = "OU=ps_ynovGroup"

# Dictionnaire des chemins OU par ville
$ouMap = @{
    "Direction" = "OU=ps_Utilisateurs,OU=ps_Paris-Ouest,OU=ps_Paris,OU=ps_France,$baseOU,$root"
    "Comptabilité" = "OU=ps_Utilisateurs,OU=ps_Lyon,OU=ps_Est,OU=ps_France,$baseOU,$root"
    "Commercial" = "OU=ps_Utilisateurs,OU=ps_Toulouse,OU=ps_Sud,OU=ps_France,$baseOU,$root"
    "Technique" = "OU=ps_Utilisateurs,OU=ps_Nantes,OU=ps_Ouest,OU=ps_France,$baseOU,$root"
    "Communication" = "OU=ps_Utilisateurs,OU=ps_Aix-en-Provence,OU=ps_Sud,OU=ps_France,$baseOU,$root"
    "Service sociale" = "OU=ps_Utilisateurs,OU=ps_Lille,OU=ps_Nord,OU=ps_France,$baseOU,$root"
    "Service Enseignant" = "OU=ps_Utilisateurs,OU=ps_Casablanca,OU=ps_International,$baseOU,$root"
    "Service salle" = "OU=ps_Utilisateurs,OU=ps_Nice-Sophia,OU=ps_Sud,OU=ps_France,$baseOU,$root"
    "Réfectoire" = "OU=ps_Utilisateurs,OU=ps_Paris-Ouest,OU=ps_Paris,OU=ps_France,$baseOU,$root"
    "Service sport" = "OU=ps_Utilisateurs,OU=ps_Montpellier,OU=ps_Sud,OU=ps_France,$baseOU,$root"
}

# Création des groupes dans les bonnes unitées d'organisation
foreach ($groupe in $ouMap.Keys) {
    $groupeNom = "ps_$groupe"
    $ouPath = $ouMap[$groupe]

    if (-not (Get-ADGroup -Filter "Name -eq '$groupeNom'" -SearchBase $ouPath -ErrorAction SilentlyContinue)) {
        New-ADGroup -Name $groupeNom -GroupScope Global -Path $ouPath -PassThru
    }
}

# Création des utilisateurs dans une unité d'organisation appelé ps_Utilisateurs
$usersOU = "OU=ps_Utilisateurs,OU=ps_ynovGroup,$root"
for ($i = 1; $i -le 11; $i++) {
    $prenom = "ps_godwin$i"
    $nom = "ps_oblasse$i"
    $login = "ps_go$i"
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
        -Path $usersOU `
        -AccountPassword $motDePasse `
        -Enabled $true `
        -ChangePasswordAtLogon $true
}

# Mappage des utilisateurs aux groupes
$mapping = @{
    "ps_go1"  = @("ps_Direction", "ps_Comptabilité", "ps_Commercial", "ps_Technique", "ps_Communication", "ps_Service sociale", "ps_Service Enseignant", "ps_Service salle", "ps_Réfectoire", "ps_Service sport")
    "ps_go2"  = @("ps_Commercial", "ps_Technique")
    "ps_go3"  = @("ps_Direction", "ps_Communication")
    "ps_go4"  = @("ps_Comptabilité")
    "ps_go5"  = @("ps_Communication")
    "ps_go6"  = @("ps_Service sociale")
    "ps_go7"  = @("ps_Service Enseignant")
    "ps_go8"  = @("ps_Service Enseignant")
    "ps_go9"  = @("ps_Réfectoire", "ps_Service sport")
    "ps_go10" = @("ps_Direction", "ps_Service salle")
    "ps_go11" = @("ps_Direction", "ps_Service sociale")
}

# Ajout des utilisateurs dans les groupes correspondants
foreach ($user in $mapping.Keys) {
    foreach ($groupeNom in $mapping[$user]) {
        $ouPath = $ouMap[$groupeNom -replace "ps_", ""]
        Add-ADGroupMember -Identity $groupeNom -Members $user
    }
}
