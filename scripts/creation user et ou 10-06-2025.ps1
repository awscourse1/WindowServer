Import-Module ActiveDirectory

# Variables de base
$DomainDN = (Get-ADDomain).DistinguishedName
$BaseOU = "OU=ps_ynovGroup,$DomainDN"

# Définition des groupes par service
$Groups = @{
    "Direction" = @("Paris")
    "Comptabilite" = @("Lyon", "Toulouse") 
    "Commercial" = @("Toulouse", "Nantes", "Lyon")
    "Technique" = @("Nantes", "Lyon")
    "Communication" = @("Aix-en-Provence", "Nice-Sophia")
    "ServiceSocial" = @("Lille", "Nice-Sophia")
    "ServiceEnseignant" = @("Casablanca", "Lille")
    "ServiceSalle" = @("Nice-Sophia", "Bordeaux")
    "Refectoire" = @("Paris-Ouest", "Strasbourg")
    "ServiceSecurite" = @("Montpellier", "Strasbourg")
}

# Mapping des villes vers les OUs complètes
$CityToOU = @{
    "Paris" = "OU=Utilisateurs,OU=ps_Paris-Est,OU=ps_Paris,OU=ps_France,$BaseOU"
    "Lyon" = "OU=Utilisateurs,OU=ps_Lyon,OU=ps_Est,OU=ps_France,$BaseOU"
    "Toulouse" = "OU=Utilisateurs,OU=ps_Toulouse,OU=ps_Sud,OU=ps_France,$BaseOU"
    "Nantes" = "OU=Utilisateurs,OU=ps_Nantes,OU=ps_Ouest,OU=ps_France,$BaseOU"
    "Aix-en-Provence" = "OU=Utilisateurs,OU=ps_Aix-en-Provence,OU=ps_Sud,OU=ps_France,$BaseOU"
    "Nice-Sophia" = "OU=Utilisateurs,OU=ps_Nice-Sophia,OU=ps_Sud,OU=ps_France,$BaseOU"
    "Lille" = "OU=Utilisateurs,OU=ps_Lille,OU=ps_Nord,OU=ps_France,$BaseOU"
    "Casablanca" = "OU=Utilisateurs,OU=ps_Casablanca,OU=ps_International,$BaseOU"
    "Bordeaux" = "OU=Utilisateurs,OU=ps_Bordeaux,OU=ps_Ouest,OU=ps_France,$BaseOU"
    "Paris-Ouest" = "OU=Utilisateurs,OU=ps_Paris-Ouest,OU=ps_Paris,OU=ps_France,$BaseOU"
    "Strasbourg" = "OU=Utilisateurs,OU=ps_Strasbourg,OU=ps_Est,OU=ps_France,$BaseOU"
    "Montpellier" = "OU=Utilisateurs,OU=ps_Montpellier,OU=ps_Sud,OU=ps_France,$BaseOU"
}

# Fonction pour créer les groupes
function Create-Groups {
    foreach ($Service in $Groups.Keys) {
        $GroupName = "GRP_$Service"
        
        try {
            # Vérifier si le groupe existe déjà
            $ExistingGroup = Get-ADGroup -Filter "Name -eq '$GroupName'" -ErrorAction SilentlyContinue
            
            if (-not $ExistingGroup) {
                New-ADGroup -Name $GroupName -GroupScope Global -GroupCategory Security -Path $BaseOU -Description "Groupe pour le service $Service"
                Write-Host "Groupe créé: $GroupName"
            } else {
                Write-Host "Groupe existe déjà: $GroupName"
            }
        }
        catch {
            Write-Host "Erreur lors de la création du groupe $GroupName : $($_.Exception.Message)"
        }
    }
}

# Fonction pour créer les utilisateurs
function Create-Users {    
    $UserCounter = 1
    
    foreach ($Service in $Groups.Keys) {
        $Cities = $Groups[$Service]
        $GroupName = "GRP_$Service"
        
        foreach ($City in $Cities) {
            $TargetOU = $CityToOU[$City]
            
            # Vérifier que l'OU existe
            try {
                Get-ADOrganizationalUnit -Identity $TargetOU -ErrorAction Stop
            }
            catch {
                Write-Host "OU non trouvée: $TargetOU"
                continue
            }
            
            $Username = "user$UserCounter"
            $DisplayName = "Utilisateur $UserCounter - $Service ($City)"
            $UPN = "$Username@$((Get-ADDomain).DNSRoot)"
            
            try {
                # Vérifier si l'utilisateur existe déjà
                $ExistingUser = Get-ADUser -Filter "SamAccountName -eq '$Username'" -ErrorAction SilentlyContinue
                
                if (-not $ExistingUser) {
                    # Créer l'utilisateur
                    $SecurePassword = ConvertTo-SecureString "TempPass123!" -AsPlainText -Force
                    
                    New-ADUser -SamAccountName $Username `
                              -UserPrincipalName $UPN `
                              -Name $Username `
                              -DisplayName $DisplayName `
                              -Department $Service `
                              -City $City `
                              -Path $TargetOU `
                              -AccountPassword $SecurePassword `
                              -Enabled $true `
                              -ChangePasswordAtLogon $true `
                              -Description "Utilisateur du service $Service basé à $City"
                    
                    Write-Host "Utilisateur créé: $Username dans $City ($Service)"
                    
                    # Ajouter l'utilisateur au groupe correspondant
                    Add-ADGroupMember -Identity $GroupName -Members $Username
                    Write-Host "Ajouté au groupe: $GroupName"
                    
                } else {
                    Write-Host "Utilisateur existe déjà: $Username"
                }
            }
            catch {
                Write-Host "Erreur lors de la création de l'utilisateur $Username : $($_.Exception.Message)"
            }
            
            $UserCounter++
        }
    }
}

# Fonction principale
function Main {    
    # Vérifier que l'OU de base existe
    try {
        Get-ADOrganizationalUnit -Identity $BaseOU -ErrorAction Stop
        Write-Host "OU de base trouvée"
    }
    catch {
        Write-Host "OU de base non trouvée: $BaseOU"
        Write-Host "Assurez-vous que la structure d'OU existe avant d'exécuter ce script."
        return
    }
    
    # Exécuter les fonctions
    Create-Groups
    Create-Users
    Write-Host "Mot de passe par défaut: TempPass123! (à changer lors de la première connexion)"

Main