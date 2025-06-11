<# 
Script PowerShell pour :
- Créer des répertoires partagés
- Appliquer des permissions NTFS et SMB pour des groupes AD
Assurez-vous que le nom des groupes est correct et que le chemin de base est adapté à votre environnement.
#>

# Chemin racine des partages
$BasePath = "C:\Shares"
if (!(Test-Path $BasePath)) { New-Item -ItemType Directory -Path $BasePath -Force }

# Liste des répertoires à créer
$FoldersToCreate = @(
    "ps_Repertoire_1", "ps_Repertoire_2", "ps_Repertoire_3", "ps_Repertoire_4", "ps_Repertoire_5",
    "ps_Repertoire_6", "ps_Repertoire_7", "ps_Repertoire_8", "ps_Repertoire_9", "ps_Repertoire_10",
    "ps_Repertoire_11", "ps_Repertoire_12", "ps_Repertoire_13", "ps_Repertoire_14", "ps_Repertoire_15",
    "ps_Repertoire_16", "ps_Repertoire_17", "ps_Repertoire_18", "ps_Repertoire_19", "ps_Repertoire_20"
)

# Définition des permissions par dossier
$PermissionsMatrix = @{
    "ps_Repertoire_1" = @{"ps_Direction"="Read";"ps_Commercial"="Owner"}
    "ps_Repertoire_2" = @{"ps_Direction"="Read";"ps_Technique"="Read";"ps_Communication"="Read";"ps_Service sociale"="Read";"ps_Service Enseignant"="Read";"ps_Réfectoire"="Write";"ps_Service salle"="Write";"ps_Service sport"="Read"}
    "ps_Repertoire_3" = @{"ps_Direction"="Write";"ps_Comptabilité"="Read";"ps_Commercial"="Read";"ps_Technique"="Read|Write";"ps_Communication"="Write";"ps_Service sociale"="Owner";"ps_Service Enseignant"="Read|Write";"ps_Réfectoire"="Write";"ps_Service salle"="Write";"ps_Service sport"="Read"}
    "ps_Repertoire_4" = @{"ps_Direction"="Write";"ps_Comptabilité"="Read";"ps_Commercial"="Read|Write";"ps_Service Enseignant"="Read";"ps_Réfectoire"="Read";"ps_Service salle"="Write";"ps_Service sport"="Write"}
    "ps_Repertoire_5" = @{"ps_Direction"="Read";"ps_Comptabilité"="Write";"ps_Commercial"="Read";"ps_Communication"="Read";"ps_Service sociale"="Write";"ps_Service Enseignant"="Read|Write";"ps_Réfectoire"="Write";"ps_Service salle"="Write";"ps_Service sport"="Read"}
    "ps_Repertoire_6" = @{"ps_Comptabilité"="Owner";"ps_Communication"="Write";"ps_Service Enseignant"="Read";"ps_Réfectoire"="Read";"ps_Service salle"="Read|Write";"ps_Service sport"="Read|Write"}
    "ps_Repertoire_7" = @{"ps_Direction"="Read";"ps_Comptabilité"="Read";"ps_Technique"="Read|Write";"ps_Communication"="Read|Write";"ps_Service Enseignant"="Read|Write"}
    "ps_Repertoire_8" = @{"ps_Direction"="Owner";"ps_Comptabilité"="Read";"ps_Commercial"="Read";"ps_Communication"="Owner";"ps_Service sociale"="Owner";"ps_Service Enseignant"="Owner";"ps_Réfectoire"="Read|Write";"ps_Service salle"="Read";"ps_Service sport"="Read"}
    "ps_Repertoire_9" = @{"ps_Comptabilité"="Write";"ps_Commercial"="Read|Write";"ps_Technique"="Read";"ps_Communication"="Read";"ps_Service sociale"="Read|Write";"ps_Service Enseignant"="Owner";"ps_Réfectoire"="Write";"ps_Service salle"="Write"}
    "ps_Repertoire_10" = @{"ps_Direction"="Read";"ps_Comptabilité"="Owner";"ps_Commercial"="Owner";"ps_Technique"="Write";"ps_Communication"="Owner";"ps_Service sociale"="Write";"ps_Service Enseignant"="Write";"ps_Réfectoire"="Write";"ps_Service salle"="Read";"ps_Service sport"="Read"}
    "ps_Repertoire_11" = @{"ps_Direction"="Read";"ps_Comptabilité"="Write";"ps_Commercial"="Read";"ps_Technique"="Write";"ps_Service sociale"="Read";"ps_Service Enseignant"="Write";"ps_Réfectoire"="Owner";"ps_Service salle"="Read";"ps_Service sport"="Read"}
    "ps_Repertoire_12" = @{"ps_Direction"="Read|Write";"ps_Comptabilité"="Read";"ps_Communication"="Write";"ps_Réfectoire"="Read";"ps_Service sport"="Write"}
    "ps_Repertoire_13" = @{"ps_Commercial"="Read";"ps_Technique"="Read";"ps_Communication"="Read|Write";"ps_Service sociale"="Write";"ps_Service salle"="Read";"ps_Service sport"="Write"}
    "ps_Repertoire_14" = @{"ps_Direction"="Write";"ps_Comptabilité"="Read";"ps_Commercial"="Read";"ps_Technique"="Read|Write";"ps_Service sociale"="Read";"ps_Service Enseignant"="Write";"ps_Réfectoire"="Owner";"ps_Service salle"="Read|Write"}
    "ps_Repertoire_15" = @{"ps_Comptabilité"="Read";"ps_Commercial"="Write";"ps_Technique"="Read";"ps_Communication"="Read";"ps_Service sociale"="Read|Write";"ps_Service Enseignant"="Write";"ps_Réfectoire"="Write";"ps_Service salle"="Read"}
    "ps_Repertoire_16" = @{"ps_Comptabilité"="Read";"ps_Commercial"="Read";"ps_Technique"="Write";"ps_Service sociale"="Read";"ps_Service Enseignant"="Write";"ps_Réfectoire"="Owner";"ps_Service salle"="Read";"ps_Service sport"="Owner"}
    "ps_Repertoire_17" = @{"ps_Direction"="Read";"ps_Comptabilité"="Write";"ps_Commercial"="Write";"ps_Technique"="Write";"ps_Communication"="Read";"ps_Service Enseignant"="Read";"ps_Réfectoire"="Read";"ps_Service salle"="Read|Write";"ps_Service sport"="Write"}
    "ps_Repertoire_18" = @{"ps_Direction"="Write";"ps_Comptabilité"="Read";"ps_Commercial"="Write";"ps_Technique"="Read";"ps_Communication"="Write";"ps_Service sociale"="Read";"ps_Service Enseignant"="Write";"ps_Réfectoire"="Read";"ps_Service sport"="Read"}
    "ps_Repertoire_19" = @{"ps_Direction"="Read";"ps_Comptabilité"="Read";"ps_Communication"="Read";"ps_Service sociale"="Write";"ps_Réfectoire"="Write";"ps_Service salle"="Write";"ps_Service sport"="Read"}
    "ps_Repertoire_20" = @{"ps_Direction"="Read";"ps_Technique"="Write";"ps_Communication"="Read";"ps_Service sociale"="Read";"ps_Service Enseignant"="Owner";"ps_Service sport"="Owner"}
}

# Fonction de conversion texte -> droits NTFS
function Get-NTFSRights($Permission) {
    return @{ "Read"="ReadAndExecute"; "Write"="Modify"; "Owner"="FullControl"; "Read|Write"="Modify" }[$Permission]
}

# Boucle de création des dossiers, partages et affectation des droits
foreach ($Folder in $FoldersToCreate) {
    $FolderPath = Join-Path $BasePath $Folder
    $ShareName = $Folder

    if (!(Test-Path $FolderPath)) {
        New-Item -ItemType Directory -Path $FolderPath -Force
    }

    # Réinitialisation du partage
    Get-SmbShare -Name $ShareName -ErrorAction SilentlyContinue | Remove-SmbShare -Force -Confirm:$false
    New-SmbShare -Name $ShareName -Path $FolderPath -FullAccess "Administrateur" -Description "Partage $Folder" | Out-Null
    Revoke-SmbShareAccess -Name $ShareName -AccountName "Everyone" -Force -Confirm:$false -ErrorAction SilentlyContinue

    # Affectation des droits NTFS et SMB
    $FolderPermissions = $PermissionsMatrix[$Folder]
    foreach ($Group in $FolderPermissions.Keys) {
        $Permission = $FolderPermissions[$Group]
        $NTFSRights = Get-NTFSRights -Permission $Permission

        $ACL = Get-Acl $FolderPath
        $AccessRule = New-Object System.Security.AccessControl.FileSystemAccessRule($Group, $NTFSRights, "ContainerInherit,ObjectInherit", "None", "Allow")
        $ACL.SetAccessRule($AccessRule)
        Set-Acl -Path $FolderPath -AclObject $ACL

        $SMBRight = if ($Permission -eq "Owner") { "Full" } elseif ($Permission -like "*Write*") { "Change" } else { "Read" }
        Grant-SmbShareAccess -Name $ShareName -AccountName $Group -AccessRight $SMBRight -Force -Confirm:$false | Out-Null
    }
}
