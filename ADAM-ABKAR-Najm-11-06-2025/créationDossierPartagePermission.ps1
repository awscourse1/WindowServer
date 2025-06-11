if (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Error "Ce script doit être exécuté en tant qu'administrateur"
    exit 1
}

$BasePath = "C:\Shares"
if (!(Test-Path $BasePath)) { New-Item -ItemType Directory -Path $BasePath -Force }

$FoldersToCreate = 1..20 | ForEach-Object { "Repertoire_$_" }

$PermissionsMatrix = @{
    "Repertoire_1" = @{"Direction"="Read";"Commercial"="Owner"}
    "Repertoire_2" = @{"Direction"="Read";"Technique"="Read";"Communication"="Read";"Service_sociale"="Read";"Service_enseignant"="Read";"Refectoire"="Write";"Service_Salle"="Write";"Service_Sport"="Read"}
    "Repertoire_3" = @{"Direction"="Write";"Comptabilite"="Read";"Commercial"="Read";"Technique"="Read|Write";"Communication"="Write";"Service_sociale"="Owner";"Service_enseignant"="Read|Write";"Refectoire"="Write";"Service_Salle"="Write";"Service_Sport"="Read"}
    "Repertoire_4" = @{"Direction"="Write";"Comptabilite"="Read";"Commercial"="Read|Write";"Service_enseignant"="Read";"Refectoire"="Read";"Service_Salle"="Write";"Service_Sport"="Write"}
    "Repertoire_5" = @{"Direction"="Read";"Comptabilite"="Write";"Commercial"="Read";"Communication"="Read";"Service_sociale"="Write";"Service_enseignant"="Read|Write";"Refectoire"="Write";"Service_Salle"="Write";"Service_Sport"="Read"}
    "Repertoire_6" = @{"Comptabilite"="Owner";"Communication"="Write";"Service_enseignant"="Read";"Refectoire"="Read";"Service_Salle"="Read|Write";"Service_Sport"="Read|Write"}
    "Repertoire_7" = @{"Direction"="Read";"Comptabilite"="Read";"Technique"="Read|Write";"Communication"="Read|Write";"Service_enseignant"="Read|Write"}
    "Repertoire_8" = @{"Direction"="Owner";"Comptabilite"="Read";"Commercial"="Read";"Communication"="Owner";"Service_sociale"="Owner";"Service_enseignant"="Owner";"Refectoire"="Read|Write";"Service_Salle"="Read";"Service_Sport"="Read"}
    "Repertoire_9" = @{"Comptabilite"="Write";"Commercial"="Read|Write";"Technique"="Read";"Communication"="Read";"Service_sociale"="Read|Write";"Service_enseignant"="Owner";"Refectoire"="Write";"Service_Salle"="Write"}
    "Repertoire_10" = @{"Direction"="Read";"Comptabilite"="Owner";"Commercial"="Owner";"Technique"="Write";"Communication"="Owner";"Service_sociale"="Write";"Service_enseignant"="Write";"Refectoire"="Write";"Service_Salle"="Read";"Service_Sport"="Read"}
    "Repertoire_11" = @{"Direction"="Read";"Comptabilite"="Write";"Commercial"="Read";"Technique"="Write";"Service_sociale"="Read";"Service_enseignant"="Write";"Refectoire"="Owner";"Service_Salle"="Read";"Service_Sport"="Read"}
    "Repertoire_12" = @{"Direction"="Read|Write";"Comptabilite"="Read";"Communication"="Write";"Refectoire"="Read";"Service_Sport"="Write"}
    "Repertoire_13" = @{"Commercial"="Read";"Technique"="Read";"Communication"="Read|Write";"Service_sociale"="Write";"Service_Salle"="Read";"Service_Sport"="Write"}
    "Repertoire_14" = @{"Direction"="Write";"Comptabilite"="Read";"Commercial"="Read";"Technique"="Read|Write";"Service_sociale"="Read";"Service_enseignant"="Write";"Refectoire"="Owner";"Service_Salle"="Read|Write"}
    "Repertoire_15" = @{"Comptabilite"="Read";"Commercial"="Write";"Technique"="Read";"Communication"="Read";"Service_sociale"="Read|Write";"Service_enseignant"="Write";"Refectoire"="Write";"Service_Salle"="Read"}
    "Repertoire_16" = @{"Comptabilite"="Read";"Commercial"="Read";"Technique"="Write";"Service_sociale"="Read";"Service_enseignant"="Write";"Refectoire"="Owner";"Service_Salle"="Read";"Service_Sport"="Owner"}
    "Repertoire_17" = @{"Direction"="Read";"Comptabilite"="Write";"Commercial"="Write";"Technique"="Write";"Communication"="Read";"Service_enseignant"="Read";"Refectoire"="Read";"Service_Salle"="Read|Write";"Service_Sport"="Write"}
    "Repertoire_18" = @{"Direction"="Write";"Comptabilite"="Read";"Commercial"="Write";"Technique"="Read";"Communication"="Write";"Service_sociale"="Read";"Service_enseignant"="Write";"Refectoire"="Read";"Service_Sport"="Read"}
    "Repertoire_19" = @{"Direction"="Read";"Comptabilite"="Read";"Communication"="Read";"Service_sociale"="Write";"Refectoire"="Write";"Service_Salle"="Write";"Service_Sport"="Read"}
    "Repertoire_20" = @{"Direction"="Read";"Technique"="Write";"Communication"="Read";"Service_sociale"="Read";"Service_enseignant"="Owner";"Service_Sport"="Owner"}
}

function Get-NTFSRights($Permission) {
    return @{ "Read"="ReadAndExecute"; "Write"="Modify"; "Owner"="FullControl"; "Read|Write"="Modify" }[$Permission]
}

foreach ($Folder in $FoldersToCreate) {
    $FolderPath = Join-Path $BasePath $Folder
    $ShareName = $Folder

    if (!(Test-Path $FolderPath)) { New-Item -ItemType Directory -Path $FolderPath -Force }

    Get-SmbShare -Name $ShareName -ErrorAction SilentlyContinue | Remove-SmbShare -Force -Confirm:$false
    New-SmbShare -Name $ShareName -Path $FolderPath -FullAccess "Administrators" -Description "Partage $Folder" | Out-Null
    Revoke-SmbShareAccess -Name $ShareName -AccountName "Everyone" -Force -Confirm:$false -ErrorAction SilentlyContinue

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

    Write-Host "? $ShareName configuré" -ForegroundColor Green
}

Write-Host "`nTous les partages créés dans $BasePath" -ForegroundColor Yellow

