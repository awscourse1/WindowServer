# Définition de la structure des données
$PermissionsMatrix = @{
    "Repertoire_1" = @{
        "Direction" = "Read"
        "Comptabilite" = ""
        "Commercial" = "Owner"
        "Technique" = "Write"
        "Communication" = "Read"
        "Service_sociale" = "Read"
        "Service_enseignant" = "Read"
        "Refectoire" = ""
        "Service_Salle" = "Write"
        "Service_Sport" = "Owner"
    }
    "Repertoire_2" = @{
        "Direction" = "Read"
        "Comptabilite" = ""
        "Commercial" = ""
        "Technique" = "Read"
        "Communication" = "Read"
        "Service_sociale" = "Read"
        "Service_enseignant" = "Read"
        "Refectoire" = "Write"
        "Service_Salle" = "Write"
        "Service_Sport" = "Read"
    }
    "Repertoire_3" = @{
        "Direction" = "Write"
        "Comptabilite" = "Read"
        "Commercial" = "Read"
        "Technique" = "Read|Write"
        "Communication" = "Write"
        "Service_sociale" = "Owner"
        "Service_enseignant" = "Read|Write"
        "Refectoire" = "Write"
        "Service_Salle" = "Owner"
        "Service_Sport" = "Read"
    }
    "Repertoire_4" = @{
        "Direction" = "Write"
        "Comptabilite" = "Read"
        "Commercial" = "Read|Write"
        "Technique" = ""
        "Communication" = ""
        "Service_sociale" = ""
        "Service_enseignant" = "Read"
        "Refectoire" = "Read"
        "Service_Salle" = "Write"
        "Service_Sport" = "Write"
    }
    "Repertoire_5" = @{
        "Direction" = "Read"
        "Comptabilite" = "Write"
        "Commercial" = "Read"
        "Technique" = ""
        "Communication" = "Read"
        "Service_sociale" = "Write"
        "Service_enseignant" = "Read|Write"
        "Refectoire" = "Write"
        "Service_Salle" = "Write"
        "Service_Sport" = "Read"
    }
    "Repertoire_6" = @{
        "Direction" = ""
        "Comptabilite" = "Owner"
        "Commercial" = ""
        "Technique" = ""
        "Communication" = "Write"
        "Service_sociale" = ""
        "Service_enseignant" = "Read"
        "Refectoire" = "Read"
        "Service_Salle" = "Read|Write"
        "Service_Sport" = "Read|Write"
    }
    "Repertoire_7" = @{
        "Direction" = "Read"
        "Comptabilite" = "Read"
        "Commercial" = ""
        "Technique" = "Read|Write"
        "Communication" = "Read|Write"
        "Service_sociale" = "Write"
        "Service_enseignant" = "Read|Write"
        "Refectoire" = ""
        "Service_Salle" = "Read"
        "Service_Sport" = ""
    }
    "Repertoire_8" = @{
        "Direction" = "Owner"
        "Comptabilite" = "Read"
        "Commercial" = "Read"
        "Technique" = ""
        "Communication" = "Owner"
        "Service_sociale" = "Owner"
        "Service_enseignant" = "Owner"
        "Refectoire" = "Read|Write"
        "Service_Salle" = "Read"
        "Service_Sport" = "Read"
    }
    "Repertoire_9" = @{
        "Direction" = ""
        "Comptabilite" = "Write"
        "Commercial" = "Read|Write"
        "Technique" = "Read"
        "Communication" = "Read"
        "Service_sociale" = "Read|Write"
        "Service_enseignant" = "Owner"
        "Refectoire" = "Write"
        "Service_Salle" = ""
        "Service_Sport" = "Write"
    }
    "Repertoire_10" = @{
        "Direction" = "Read"
        "Comptabilite" = "Owner"
        "Commercial" = "Owner"
        "Technique" = "Write"
        "Communication" = "Owner"
        "Service_sociale" = "Write"
        "Service_enseignant" = "Write"
        "Refectoire" = "Write"
        "Service_Salle" = ""
        "Service_Sport" = "Read"
    }
    "Repertoire_11" = @{
        "Direction" = "Read"
        "Comptabilite" = "Write"
        "Commercial" = "Read"
        "Technique" = "Write"
        "Communication" = ""
        "Service_sociale" = "Read"
        "Service_enseignant" = "Write"
        "Refectoire" = "Owner"
        "Service_Salle" = "Read"
        "Service_Sport" = "Read"
    }
    "Repertoire_12" = @{
        "Direction" = "Read|Write"
        "Comptabilite" = "Read"
        "Commercial" = ""
        "Technique" = ""
        "Communication" = "Write"
        "Service_sociale" = ""
        "Service_enseignant" = ""
        "Refectoire" = "Read"
        "Service_Salle" = ""
        "Service_Sport" = "Write"
    }
    "Repertoire_13" = @{
        "Direction" = ""
        "Comptabilite" = ""
        "Commercial" = "Read"
        "Technique" = "Read"
        "Communication" = "Read|Write"
        "Service_sociale" = "Write"
        "Service_enseignant" = ""
        "Refectoire" = ""
        "Service_Salle" = "Read"
        "Service_Sport" = "Write"
    }
    "Repertoire_14" = @{
        "Direction" = "Write"
        "Comptabilite" = "Read"
        "Commercial" = "Read"
        "Technique" = "Read|Write"
        "Communication" = ""
        "Service_sociale" = "Read"
        "Service_enseignant" = "Write"
        "Refectoire" = "Owner"
        "Service_Salle" = "Read|Write"
        "Service_Sport" = ""
    }
    "Repertoire_15" = @{
        "Direction" = ""
        "Comptabilite" = "Read"
        "Commercial" = "Write"
        "Technique" = ""
        "Communication" = "Read"
        "Service_sociale" = "Read|Write"
        "Service_enseignant" = "Write"
        "Refectoire" = "Write"
        "Service_Salle" = "Read"
        "Service_Sport" = "Read"
    }
    "Repertoire_16" = @{
        "Direction" = ""
        "Comptabilite" = "Read"
        "Commercial" = "Read"
        "Technique" = "Write"
        "Communication" = ""
        "Service_sociale" = "Read"
        "Service_enseignant" = "Write"
        "Refectoire" = "Owner"
        "Service_Salle" = "Read"
        "Service_Sport" = "Owner"
    }
    "Repertoire_17" = @{
        "Direction" = "Read"
        "Comptabilite" = "Write"
        "Commercial" = "Write"
        "Technique" = "Write"
        "Communication" = "Read"
        "Service_sociale" = ""
        "Service_enseignant" = "Read"
        "Refectoire" = "Read"
        "Service_Salle" = "Read|Write"
        "Service_Sport" = "Write"
    }
    "Repertoire_18" = @{
        "Direction" = "Write"
        "Comptabilite" = "Read"
        "Commercial" = "Write"
        "Technique" = "Read"
        "Communication" = "Write"
        "Service_sociale" = "Read"
        "Service_enseignant" = "Write"
        "Refectoire" = "Read"
        "Service_Salle" = ""
        "Service_Sport" = "Read"
    }
    "Repertoire_19" = @{
        "Direction" = "Read"
        "Comptabilite" = "Read"
        "Commercial" = ""
        "Technique" = ""
        "Communication" = "Read"
        "Service_sociale" = "Write"
        "Service_enseignant" = ""
        "Refectoire" = "Write"
        "Service_Salle" = "Write"
        "Service_Sport" = "Read"
    }
    "Repertoire_20" = @{
        "Direction" = "Read"
        "Comptabilite" = ""
        "Commercial" = ""
        "Technique" = "Write"
        "Communication" = "Read"
        "Service_sociale" = "Read"
        "Service_enseignant" = "Owner"
        "Refectoire" = ""
        "Service_Salle" = ""
        "Service_Sport" = "Owner"
    }
}
# Fonction pour appliquer les permissions sur le système de fichiers
function Apply-Permissions {
    param(
        [string]$BasePath,
        [hashtable]$Matrix,
        [hashtable]$UserMapping
    )
    
    foreach ($Repo in $Matrix.Keys) {
        $RepoPath = Join-Path $BasePath $Repo
        
        # Créer le répertoire s'il n'existe pas
        if (-not (Test-Path $RepoPath)) {
            New-Item -Path $RepoPath -ItemType Directory -Force | Out-Null
        }
        
        $RepoData = $Matrix[$Repo]
        
        foreach ($Service in $RepoData.Keys) {
            $Permission = $RepoData[$Service]
            
            if ($Permission -ne "" -and $UserMapping.ContainsKey($Service)) {
                $Username = $UserMapping[$Service]
                
                try {
                    switch ($Permission) {
                        "Read" {
                            # Appliquer permission de lecture
                            icacls $RepoPath /grant "${Username}:(R)" /T | Out-Null
                        }
                        "Write" {
                            # Appliquer permission d'écriture
                            icacls $RepoPath /grant "${Username}:(M)" /T | Out-Null
                        }
                        "Owner" {
                            # Appliquer permission complète (propriétaire)
                            icacls $RepoPath /grant "${Username}:(F)" /T | Out-Null
                        }
                        "Read|Write" {
                            # Appliquer permission de lecture et écriture
                            icacls $RepoPath /grant "${Username}:(M)" /T | Out-Null
                        }
                    }
                } catch {
                    Write-Warning "Erreur lors de l'application des permissions pour $Username sur $Repo : $($_.Exception.Message)"
                }
            }
        }
    }
}

# Fonction pour rechercher les permissions d'un utilisateur
function Get-UserPermissions {
    param(
        [string]$ServiceName,
        [hashtable]$Matrix
    )
    
    Write-Host "Permissions pour le service: $ServiceName" -ForegroundColor Cyan
    Write-Host "=" * 40
    
    foreach ($Repo in $Matrix.Keys | Sort-Object) {
        $Permission = $Matrix[$Repo][$ServiceName.Replace(" ", "_")]
        if ($Permission -ne "") {
            Write-Host "$Repo : $Permission"
        }
    }
}

# Récupération du domaine actuel
$Domain = (Get-ADDomain).NetBIOSName

$UserMapping = @{
    "Direction" = "$Domain\GRP_Direction"
    "Comptabilite" = "$Domain\GRP_Comptabilite"
    "Commercial" = "$Domain\GRP_Commercial"
    "Technique" = "$Domain\GRP_Technique"
    "Communication" = "$Domain\GRP_Communication"
    "Service_sociale" = "$Domain\GRP_ServiceSocial"
    "Service_enseignant" = "$Domain\GRP_ServiceEnseignant"
    "Refectoire" = "$Domain\GRP_Refectoire"
    "Service_Salle" = "$Domain\GRP_ServiceSalle"
    "Service_Sport" = "$Domain\GRP_ServiceSecurite"
}

# Ajout d'une fonction pour vérifier les groupes AD
function Test-ADGroups {
    param(
        [hashtable]$UserMapping
    )
    
    
    foreach ($Service in $UserMapping.Keys) {
        $GroupName = $UserMapping[$Service].Split('\')[1]
        
        try {
            $Group = Get-ADGroup -Identity $GroupName -ErrorAction Stop
            $Members = Get-ADGroupMember -Identity $GroupName | Measure-Object
        }
        catch {
            Write-Host "$GroupName introuvable"
        }
    }
    Write-Host ""
}

# Fonction pour lister les membres de chaque groupe
function Show-GroupMembers {
    param(
        [hashtable]$UserMapping
    )
    
    foreach ($Service in $UserMapping.Keys | Sort-Object) {
        $GroupName = $UserMapping[$Service].Split('\')[1]
        
        try {
            $Members = Get-ADGroupMember -Identity $GroupName | Select-Object Name, SamAccountName
            Write-Host "Groupe: $Service ($GroupName)"
            
            if ($Members) {
                foreach ($Member in $Members) {
                    Write-Host "  - $($Member.Name) ($($Member.SamAccountName))"
                }
            } else {
                Write-Host "  (Aucun membre)"
            }
            Write-Host ""
        }
        catch {
            Write-Host "Erreur pour le groupe $GroupName"
        }
    }
}

Get-UserPermissions -ServiceName "Direction" -Matrix $PermissionsMatrix

Apply-Permissions -BasePath "C:\Shares" -Matrix $PermissionsMatrix -UserMapping $UserMapping