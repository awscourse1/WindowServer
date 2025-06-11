Indication pour les devoir : <strong>affectation des utilisateurs dans des groupes</strong>

Utiliser le tableau user/groupes pour :
1 - créer les utilisateurs  en mode graphique
2 - créer les groupe utilisateur
3 - affecter les utilisateurs à chacun des groupes

faire le même exercice en ligne de commande en créant de nouveaux groupes et utilisateurs 
nb : en marquant au début 
- ps_ sur le nom du groupe 
- ps_ sur les noms des utilisateurs 

Principales commandes :

# creation utilisateur
New-ADUser -Name "Alice Tour" -GivenName "Alice" -Surname "Tour" -SamAccountName "atour" -UserPrincipalName "atour@domain.local" -Path "OU=Users,DC=domain,DC=local" -AccountPassword (ConvertTo-SecureString "P@ssw0rd123" -AsPlainText -Force) -Enabled $true

# "creation groupe utilisateur"
New-ADGroup -Name "DevOpsTeam" -SamAccountName "DevOpsTeam" -GroupScope Global -GroupCategory Security -Path "OU=Groups,DC=domain,DC=local"


# Ajout utilisateur dans un groupe 
Add-ADGroupMember -Identity "CN=Gestion_IT,OU=Groupes,DC=domaine,DC=com" -Members "CN=Alice Tour,OU=Utilisateurs,DC=domaine,DC=com"





Indication pour les devoir : ajouter des droits aux repertoires
Utiliser le tableau groupes/droits pour : en mode graphique 
1 - créer les repertoires comme vu aux cours
2 - affecter des droits d'accès aux différents groupes en suivant le tableau 

faire le même exercice en ligne de commande en créant de nouveaux groupes et utilisateurs 
nb : en marquant au début 
- ps_ sur le nom des répertoires 

Principales commandes :

# "full acces"
New-SmbShare -Name "partageDossier" -Path "C:\shares\MonDossier" -FullAccess "YNOVDOMAIN\Administrateur"

# "accès en lecture et écriture"
New-SmbShare -Name "partageDossier" -Path "C:\shares\MonDossier" -ChangeAccess "YNOVDOMAIN\Administrateur"

# "accès en lecture"
New-SmbShare -Name "partageLecture" -Path "C:\shares\MonDossier" -ReadAccess "YNOVDOMAIN\Administrateur"


# creation resources partagée
New-Item -Path "C:\Partages\Departement_IT" -ItemType Directory



New-ADOrganizationalUnit -Name "ps_YnovGroup" -Path "DC=ynovDomain,DC=local" -ProtectedFromAccidentalDeletion $true

New-ADOrganizationalUnit -Name "ps_YnovGroup" -Path "OU=IT,DC=ynovDomain,DC=local" -ProtectedFromAccidentalDeletion $true





# Configuration de base
$BasePath = "C:\Shares"
if (!(Test-Path $BasePath)) { New-Item -ItemType Directory -Path $BasePath -Force }

# Définition des dossiers à créer (Répertoires)
$FoldersToCreate = @(
    "ps_Repertoire1", "ps_Repertoire2", "ps_Repertoire3", "ps_Repertoire4", "ps_Repertoire5",
    "ps_Repertoire6", "ps_Repertoire7", "ps_Repertoire8", "ps_Repertoire9", "ps_Repertoire10",
    "ps_Repertoire11", "ps_Repertoire12", "ps_Repertoire13", "ps_Repertoire14", "ps_Repertoire15",
    "ps_Repertoire16", "ps_Repertoire17", "ps_Repertoire18", "ps_Repertoire19", "ps_Repertoire20"
)

# Matrice des permissions corrigée avec les bons noms de groupes
$PermissionsMatrix = @{
    "ps_Repertoire1" = @{"ps_Direction"="Read";"ps_Commercial"="Owner";"ps_Technique"="Write";"ps_Communication"="Read";"ps_ServiceSociale"="Read";"ps_ServiceEnseignant"="Read";"ps_ServiceSalle"="Write";"ps_ServiceSport"="Owner"}
    "ps_Repertoire2" = @{"ps_Direction"="Read";"ps_Technique"="Read";"ps_Communication"="Read";"ps_ServiceSociale"="Read";"ps_ServiceEnseignant"="Read";"ps_Refectoire"="Write";"ps_ServiceSalle"="Write";"ps_ServiceSport"="Read"}
    "ps_Repertoire3" = @{"ps_Direction"="Write";"ps_Comptabilite"="Read";"ps_Commercial"="Read";"ps_Technique"="Read|Write";"ps_Communication"="Write";"ps_ServiceSociale"="Owner";"ps_ServiceEnseignant"="Read|Write";"ps_Refectoire"="Write";"ps_ServiceSalle"="Write";"ps_ServiceSport"="Read"}
    "ps_Repertoire4" = @{"ps_Direction"="Write";"ps_Comptabilite"="Read";"ps_Commercial"="Read|Write";"ps_ServiceEnseignant"="Read";"ps_Refectoire"="Read";"ps_ServiceSalle"="Write";"ps_ServiceSport"="Write"}
    "ps_Repertoire5" = @{"ps_Direction"="Read";"ps_Comptabilite"="Write";"ps_Commercial"="Read";"ps_Communication"="Read";"ps_ServiceSociale"="Write";"ps_ServiceEnseignant"="Read|Write";"ps_Refectoire"="Write";"ps_ServiceSalle"="Write";"ps_ServiceSport"="Read"}
    "ps_Repertoire6" = @{"ps_Comptabilite"="Owner";"ps_Communication"="Write";"ps_ServiceEnseignant"="Read";"ps_Refectoire"="Read";"ps_ServiceSalle"="Read|Write";"ps_ServiceSport"="Read|Write"}
    "ps_Repertoire7" = @{"ps_Direction"="Read";"ps_Comptabilite"="Read";"ps_Technique"="Read|Write";"ps_Communication"="Read|Write";"ps_ServiceEnseignant"="Read|Write"}
    "ps_Repertoire8" = @{"ps_Direction"="Owner";"ps_Comptabilite"="Read";"ps_Commercial"="Read";"ps_Communication"="Owner";"ps_ServiceSociale"="Owner";"ps_ServiceEnseignant"="Owner";"ps_Refectoire"="Read|Write";"ps_ServiceSalle"="Read";"ps_ServiceSport"="Read"}
    "ps_Repertoire9" = @{"ps_Comptabilite"="Write";"ps_Commercial"="Read|Write";"ps_Technique"="Read";"ps_Communication"="Read";"ps_ServiceSociale"="Read|Write";"ps_ServiceEnseignant"="Owner";"ps_Refectoire"="Write";"ps_ServiceSalle"="Write"}
    "ps_Repertoire10" = @{"ps_Direction"="Read";"ps_Comptabilite"="Owner";"ps_Commercial"="Owner";"ps_Technique"="Write";"ps_Communication"="Owner";"ps_ServiceSociale"="Write";"ps_ServiceEnseignant"="Write";"ps_Refectoire"="Write";"ps_ServiceSalle"="Read";"ps_ServiceSport"="Read"}
    "ps_Repertoire11" = @{"ps_Direction"="Read";"ps_Comptabilite"="Write";"ps_Commercial"="Read";"ps_Technique"="Write";"ps_ServiceSociale"="Read";"ps_ServiceEnseignant"="Write";"ps_Refectoire"="Owner";"ps_ServiceSalle"="Read";"ps_ServiceSport"="Read"}
    "ps_Repertoire12" = @{"ps_Direction"="Read|Write";"ps_Comptabilite"="Read";"ps_Communication"="Write";"ps_Refectoire"="Read";"ps_ServiceSport"="Write"}
    "ps_Repertoire13" = @{"ps_Commercial"="Read";"ps_Technique"="Read";"ps_Communication"="Read|Write";"ps_ServiceSociale"="Write";"ps_ServiceSalle"="Read";"ps_ServiceSport"="Write"}
    "ps_Repertoire14" = @{"ps_Direction"="Write";"ps_Comptabilite"="Read";"ps_Commercial"="Read";"ps_Technique"="Read|Write";"ps_ServiceSociale"="Read";"ps_ServiceEnseignant"="Write";"ps_Refectoire"="Owner";"ps_ServiceSalle"="Read|Write"}
    "ps_Repertoire15" = @{"ps_Comptabilite"="Read";"ps_Commercial"="Write";"ps_Technique"="Read";"ps_Communication"="Read";"ps_ServiceSociale"="Read|Write";"ps_ServiceEnseignant"="Write";"ps_Refectoire"="Write";"ps_ServiceSalle"="Read"}
    "ps_Repertoire16" = @{"ps_Comptabilite"="Read";"ps_Commercial"="Read";"ps_Technique"="Write";"ps_ServiceSociale"="Read";"ps_ServiceEnseignant"="Write";"ps_Refectoire"="Owner";"ps_ServiceSalle"="Read";"ps_ServiceSport"="Owner"}
    "ps_Repertoire17" = @{"ps_Direction"="Read";"ps_Comptabilite"="Write";"ps_Commercial"="Write";"ps_Technique"="Write";"ps_Communication"="Read";"ps_ServiceEnseignant"="Read";"ps_Refectoire"="Read";"ps_ServiceSalle"="Read|Write";"ps_ServiceSport"="Write"}
    "ps_Repertoire18" = @{"ps_Direction"="Write";"ps_Comptabilite"="Read";"ps_Commercial"="Write";"ps_Technique"="Read";"ps_Communication"="Write";"ps_ServiceSociale"="Read";"ps_ServiceEnseignant"="Write";"ps_Refectoire"="Read";"ps_ServiceSport"="Read"}
    "ps_Repertoire19" = @{"ps_Direction"="Read";"ps_Comptabilite"="Read";"ps_Communication"="Read";"ps_ServiceSociale"="Write";"ps_Refectoire"="Write";"ps_ServiceSalle"="Write";"ps_ServiceSport"="Read"}
    "ps_Repertoire20" = @{"ps_Direction"="Read";"ps_Technique"="Write";"ps_Communication"="Read";"ps_ServiceSociale"="Read";"ps_ServiceEnseignant"="Owner";"ps_ServiceSport"="Owner"}
}

# Fonction pour convertir les permissions
function Get-NTFSRights($Permission) {
    return @{ "Read"="ReadAndExecute"; "Write"="Modify"; "Owner"="FullControl"; "Read|Write"="Modify" }[$Permission]
}

# Création des dossiers et partages
foreach ($Folder in $FoldersToCreate) {
    $FolderPath = Join-Path $BasePath $Folder
    $ShareName = $Folder
    
    Write-Host "Création du dossier et partage: $Folder" -ForegroundColor Yellow
    
    if (!(Test-Path $FolderPath)) { 
        New-Item -ItemType Directory -Path $FolderPath -Force 
        Write-Host "  - Dossier créé: $FolderPath" -ForegroundColor Green
    }
    
    # Suppression/création du partage
    Get-SmbShare -Name $ShareName -ErrorAction SilentlyContinue | Remove-SmbShare -Force -Confirm:$false
    New-SmbShare -Name $ShareName -Path $FolderPath -FullAccess "Administrateur" -Description "Partage $Folder" | Out-Null
    Revoke-SmbShareAccess -Name $ShareName -AccountName "Everyone" -Force -Confirm:$false -ErrorAction SilentlyContinue
    Write-Host "  - Partage SMB créé: $ShareName" -ForegroundColor Green
    
    # Attribution des permissions
    $FolderPermissions = $PermissionsMatrix[$Folder]
    if ($FolderPermissions) {
        foreach ($Group in $FolderPermissions.Keys) {
            $Permission = $FolderPermissions[$Group]
            $NTFSRights = Get-NTFSRights -Permission $Permission
            
            try {
                # Permission NTFS
                $ACL = Get-Acl $FolderPath
                $AccessRule = New-Object System.Security.AccessControl.FileSystemAccessRule($Group, $NTFSRights, "ContainerInherit,ObjectInherit", "None", "Allow")
                $ACL.SetAccessRule($AccessRule)
                Set-Acl -Path $FolderPath -AclObject $ACL
                
                # Permission SMB
                $SMBRight = if ($Permission -eq "Owner") { "Full" } elseif ($Permission -like "*Write*") { "Change" } else { "Read" }
                Grant-SmbShareAccess -Name $ShareName -AccountName $Group -AccessRight $SMBRight -Force -Confirm:$false | Out-Null
                
                Write-Host "    - Permission appliquée: $Group = $Permission ($NTFSRights)" -ForegroundColor Cyan
            }
            catch {
                Write-Host "    - ERREUR pour le groupe $Group : $($_.Exception.Message)" -ForegroundColor Red
            }
        }
    }
    Write-Host ""
}

Write-Host "Script terminé ! Tous les partages et permissions ont été configurés." -ForegroundColor Green