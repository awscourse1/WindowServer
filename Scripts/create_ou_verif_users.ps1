Import-Module ActiveDirectory

# Définition des OUs avec leur chemin complet basé sur la structure existante
$ouPaths = @(
    "OU=Direction,OU=Paris-Ouest,OU=Paris,OU=France,OU=ynovGroup,DC=ynovDomaine,DC=com",
    "OU=Compatibilité,OU=Lyon,OU=Est,OU=France,OU=ynovGroup,DC=ynovDomaine,DC=com",
    "OU=Commercial,OU=Toulouse,OU=Sud,OU=France,OU=ynovGroup,DC=ynovDomaine,DC=com",
    "OU=Technique,OU=Aix-en-Provence,OU=Sud,OU=France,OU=ynovGroup,DC=ynovDomaine,DC=com",
    "OU=Communication,OU=Paris-Ouest,OU=Paris,OU=France,OU=ynovGroup,DC=ynovDomaine,DC=com",
    "OU=Service sociale,OU=Lille,OU=Nord,OU=France,OU=ynovGroup,DC=ynovDomaine,DC=com",
    "OU=Service enseignant,OU=Nice-Sophia,OU=Sud,OU=France,OU=ynovGroup,DC=ynovDomaine,DC=com",
    "OU=Réfectoire,OU=Montpellier,OU=Sud,OU=France,OU=ynovGroup,DC=ynovDomaine,DC=com",
    "OU=Service Salle,OU=Paris-Ouest,OU=Paris,OU=France,OU=ynovGroup,DC=ynovDomaine,DC=com",
    "OU=Service Sport,OU=Montpellier,OU=Sud,OU=France,OU=ynovGroup,DC=ynovDomaine,DC=com"
)

# Crée les OUs spécifiques si elles n'existent pas
foreach ($ouPath in $ouPaths) {
    $ouName = ($ouPath -split ",OU=")[0] -replace "^OU=", ""
    $parentPath = $ouPath -replace "^OU=[^,]+,", ""
    
    if (-not (Get-ADOrganizationalUnit -Filter 'DistinguishedName -eq $ouPath' -ErrorAction SilentlyContinue)) {
        try {
            New-ADOrganizationalUnit -Name $ouName -Path $parentPath -ProtectedFromAccidentalDeletion $true -ErrorAction Stop
            Write-Host "OU $ouPath créée."
        } catch {
            Write-Host "Erreur lors de la création de $ouPath : $_"
        }
    } else {
        Write-Host "OU $ouPath existe déjà."
    }
}

# Vérifie les utilisateurs existants
$users = @(
    "ynovDomaine\user_paris_ouest1", "ynovDomaine\user_paris_ouest2",
    "ynovDomaine\user_lyon",
    "ynovDomaine\user_toulouse1", "ynovDomaine\user_toulouse2",
    "ynovDomaine\user_aix",
    "ynovDomaine\user_paris_ouest",
    "ynovDomaine\user_lille",
    "ynovDomaine\user_nice",
    "ynovDomaine\user_montpellier"
)
foreach ($user in $users) {
    if (Get-ADUser -Filter "SamAccountName -eq '$($user -replace 'ynovDomaine\\', '')'") {
        Write-Host "Utilisateur $user trouvé."
    } else {
        Write-Host "Utilisateur $user non trouvé. Vérifie la création."
    }
}