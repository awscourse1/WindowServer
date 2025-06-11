<# 
Script PowerShell pour :
- Créer des groupes AD dans leurs OU respectives
- Créer 11 utilisateurs avec un nom et prénom formatés
- Affecter les utilisateurs à un ou plusieurs groupes
#>

# Définition du domaine racine et de l'OU de base
$root = "DC=ronan,DC=com"
$baseOU = "OU=ps_ynovGroup"

# Chemins OU par service
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

# Création des groupes dans les OU correspondantes
foreach ($groupe in $ouMap.Keys) {
    $groupeNom = "ps_$groupe"
    $ouPath = $ouMap[$groupe]

    if (-not (Get-ADGroup -Filter "Name -eq '$groupeNom'" -SearchBase $ouPath -ErrorAction SilentlyContinue)) {
        New-ADGroup -Name $groupeNom -GroupScope Global -Path $ouPath -PassThru
    }
}

# Création des utilisateurs dans l'OU Utilisateurs
$usersOU = "OU=ps_Utilisateurs,OU=ps_ynovGroup,$root"
for ($i = 1; $i -le 11; $i++) {
    $prenom = "ps_ronan$i"
    $nom = "ps_dupas$i"
    $login = "ps_rd$i"
    $nomComplet = "$prenom $login. $nom"
    $motDePasse = ConvertTo-SecureString "Password123!" -AsPlainText -Force

    New-ADUser `
        -Name $nomComplet `
        -GivenName $prenom `
        -Surname $nom `
        -DisplayName $nomComplet `
        -SamAccountName $login `
        -UserPrincipalName "$login@ronan.com" `
        -Path $usersOU `
        -AccountPassword $motDePasse `
        -Enabled $true `
        -ChangePasswordAtLogon $true
}

# Association des utilisateurs aux groupes
$mapping = @{
    "ps_rd1"  = @("ps_Direction", "ps_Comptabilité", "ps_Commercial", "ps_Technique", "ps_Communication", "ps_Service sociale", "ps_Service Enseignant", "ps_Service salle", "ps_Réfectoire", "ps_Service sport")
    "ps_rd2"  = @("ps_Commercial", "ps_Technique")
    "ps_rd3"  = @("ps_Direction", "ps_Communication")
    "ps_rd4"  = @("ps_Comptabilité")
    "ps_rd5"  = @("ps_Communication")
    "ps_rd6"  = @("ps_Service sociale")
    "ps_rd7"  = @("ps_Service Enseignant")
    "ps_rd8"  = @("ps_Service Enseignant")
    "ps_rd9"  = @("ps_Réfectoire", "ps_Service sport")
    "ps_rd10" = @("ps_Direction", "ps_Service salle")
    "ps_rd11" = @("ps_Direction", "ps_Service sociale")
}

foreach ($user in $mapping.Keys) {
    foreach ($groupeNom in $mapping[$user]) {
        Add-ADGroupMember -Identity $groupeNom -Members $user
    }
}
