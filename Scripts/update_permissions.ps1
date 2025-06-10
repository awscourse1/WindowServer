Import-Module ActiveDirectory

# Liste des utilisateurs par OU
$users = @{
    "Direction" = @("ynovDomaine\user_paris_ouest1", "ynovDomaine\user_paris_ouest2")
    "Compatibilité" = @("ynovDomaine\user_lyon")
    "Commercial" = @("ynovDomaine\user_toulouse1", "ynovDomaine\user_toulouse2")
    "Technique" = @("ynovDomaine\user_aix")
    "Communication" = @("ynovDomaine\user_paris_ouest")
    "Service sociale" = @("ynovDomaine\user_lille")
    "Service enseignant" = @("ynovDomaine\user_nice")
    "Réfectoire" = @("ynovDomaine\user_montpellier")
    "Service Salle" = @("ynovDomaine\user_paris_ouest", "ynovDomaine\user_nice")
    "Service Sport" = @("ynovDomaine\user_montpellier")
}

# Tableau des permissions par répertoire (ajusté avec tirets bas)
$permissions = @(
    @{ Repertoire = "Repertoire_1"; Direction = @("Read", "Read"); Compatibilité = @("Owner"); Commercial = @("Write", "Owner"); Technique = @("Write"); Communication = @("Read"); "Service sociale" = @("Read"); "Service enseignant" = @("Read"); Réfectoire = @("Write"); "Service Salle" = @("Write", "Write"); "Service Sport" = @("Owner") },
    @{ Repertoire = "Repertoire_2"; Direction = @("Read", "Write"); Compatibilité = @("Read"); Commercial = @("Read", "Read/Write"); Technique = @("Read"); Communication = @("Read"); "Service sociale" = @("Read"); "Service enseignant" = @("Read"); Réfectoire = @("Write"); "Service Salle" = @("Write", "Write"); "Service Sport" = @("Read") },
    @{ Repertoire = "Repertoire_3"; Direction = @("Write", "Write"); Compatibilité = @("Read"); Commercial = @("Read", "Read"); Technique = @("Read/Write"); Communication = @("Read"); "Service sociale" = @("Read"); "Service enseignant" = @("Read/Write"); Réfectoire = @("Write"); "Service Salle" = @("Write", "Read/Write"); "Service Sport" = @("Read") },
    @{ Repertoire = "Repertoire_4"; Direction = @("Write", "Read"); Compatibilité = @("Read/Write"); Commercial = @("Read/Write", "Write"); Technique = @("Read"); Communication = @("Write"); "Service sociale" = @("Read"); "Service enseignant" = @("Read"); Réfectoire = @("Read/Write"); "Service Salle" = @("Read", "Read"); "Service Sport" = @("Read/Write") },
    @{ Repertoire = "Repertoire_5"; Direction = @("Read", "Owner"); Compatibilité = @("Write"); Commercial = @("Read", "Owner"); Technique = @("Write"); Communication = @("Read"); "Service sociale" = @("Write"); "Service enseignant" = @("Read/Write"); Réfectoire = @("Write"); "Service Salle" = @("Write", "Write"); "Service Sport" = @("Write") },
    @{ Repertoire = "Repertoire_6"; Direction = @("Read", "Read/Write"); Compatibilité = @("Owner"); Commercial = @("Write", "Read/Write"); Technique = @("Read"); Communication = @("Write"); "Service sociale" = @("Write"); "Service enseignant" = @("Read"); Réfectoire = @("Read"); "Service Salle" = @("Read/Write", "Read"); "Service Sport" = @("Read/Write") },
    @{ Repertoire = "Repertoire_7"; Direction = @("Owner", "Read"); Compatibilité = @("Read"); Commercial = @("Read/Write", "Write"); Technique = @("Read"); Communication = @("Read/Write"); "Service sociale" = @("Write"); "Service enseignant" = @("Read"); Réfectoire = @("Read"); "Service Salle" = @("Read", "Read"); "Service Sport" = @("Read") },
    @{ Repertoire = "Repertoire_8"; Direction = @("Owner", "Write"); Compatibilité = @("Read"); Commercial = @("Read", "Owner"); Technique = @("Read"); Communication = @("Owner"); "Service sociale" = @("Owner"); "Service enseignant" = @("Read/Write"); Réfectoire = @("Read/Write"); "Service Salle" = @("Owner", "Read/Write"); "Service Sport" = @("Read") },
    @{ Repertoire = "Repertoire_9"; Direction = @("Read", "Read/Write"); Compatibilité = @("Read/Write"); Commercial = @("Read", "Read"); Technique = @("Read"); Communication = @("Read"); "Service sociale" = @("Read/Write"); "Service enseignant" = @("Owner"); Réfectoire = @("Write"); "Service Salle" = @("Read", "Write"); "Service Sport" = @("Write") },
    @{ Repertoire = "Repertoire_10"; Direction = @("Read", "Read"); Compatibilité = @("Write"); Commercial = @("Write", "Read"); Technique = @("Write"); Communication = @("Read"); "Service sociale" = @("Read"); "Service enseignant" = @("Read"); Réfectoire = @("Read"); "Service Salle" = @("Write", "Read"); "Service Sport" = @("Read") },
    @{ Repertoire = "Repertoire_11"; Direction = @("Read", "Write"); Compatibilité = @("Owner"); Commercial = @("Owner", "Write"); Technique = @("Read"); Communication = @("Owner"); "Service sociale" = @("Write"); "Service enseignant" = @("Write"); Réfectoire = @("Write"); "Service Salle" = @("Owner", "Write"); "Service Sport" = @("Read") },
    @{ Repertoire = "Repertoire_12"; Direction = @("Read/Write", "Read"); Compatibilité = @("Read"); Commercial = @("Read", "Read/Write"); Technique = @("Read"); Communication = @("Write"); "Service sociale" = @("Read"); "Service enseignant" = @("Read"); Réfectoire = @("Read"); "Service Salle" = @("Read", "Read"); "Service Sport" = @("Read") },
    @{ Repertoire = "Repertoire_13"; Direction = @("Write", "Write"); Compatibilité = @("Read"); Commercial = @("Read", "Read"); Technique = @("Read/Write"); Communication = @("Read/Write"); "Service sociale" = @("Read"); "Service enseignant" = @("Write"); Réfectoire = @("Write"); "Service Salle" = @("Read/Write", "Write"); "Service Sport" = @("Write") },
    @{ Repertoire = "Repertoire_14"; Direction = @("Write", "Read"); Compatibilité = @("Read/Write"); Commercial = @("Read/Write", "Write"); Technique = @("Read"); Communication = @("Write"); "Service sociale" = @("Read"); "Service enseignant" = @("Owner"); Réfectoire = @("Owner"); "Service Salle" = @("Write", "Owner"); "Service Sport" = @("Owner") },
    @{ Repertoire = "Repertoire_15"; Direction = @("Read", "Owner"); Compatibilité = @("Write"); Commercial = @("Read", "Owner"); Technique = @("Owner"); Communication = @("Read"); "Service sociale" = @("Write"); "Service enseignant" = @("Read"); Réfectoire = @("Read"); "Service Salle" = @("Read", "Read"); "Service Sport" = @("Read") },
    @{ Repertoire = "Repertoire_16"; Direction = @("Read", "Read/Write"); Compatibilité = @("Owner"); Commercial = @("Write", "Read"); Technique = @("Read/Write"); Communication = @("Read"); "Service sociale" = @("Read"); "Service enseignant" = @("Write"); Réfectoire = @("Write"); "Service Salle" = @("Write", "Write"); "Service Sport" = @("Write") },
    @{ Repertoire = "Repertoire_17"; Direction = @("Read", "Read"); Compatibilité = @("Read"); Commercial = @("Read/Write", "Write"); Technique = @("Owner"); Communication = @("Write"); "Service sociale" = @("Read"); "Service enseignant" = @("Read"); Réfectoire = @("Read"); "Service Salle" = @("Read", "Read"); "Service Sport" = @("Read") },
    @{ Repertoire = "Repertoire_18"; Direction = @("Write", "Write"); Compatibilité = @("Read"); Commercial = @("Read", "Owner"); Technique = @("Read"); Communication = @("Read"); "Service sociale" = @("Read"); "Service enseignant" = @("Read"); Réfectoire = @("Read"); "Service Salle" = @("Read", "Read"); "Service Sport" = @("Read") },
    @{ Repertoire = "Repertoire_19"; Direction = @("Read", "Read"); Compatibilité = @("Write"); Commercial = @("Read/Write", "Read"); Technique = @("Write"); Communication = @("Read"); "Service sociale" = @("Write"); "Service enseignant" = @("Write"); Réfectoire = @("Read/Write"); "Service Salle" = @("Read/Write", "Write"); "Service Sport" = @("Read/Write") },
    @{ Repertoire = "Repertoire_20"; Direction = @("Read", "Owner"); Compatibilité = @("Read"); Commercial = @("Write", "Read"); Technique = @("Read"); Communication = @("Read"); "Service sociale" = @("Read"); "Service enseignant" = @("Owner"); Réfectoire = @("Read"); "Service Salle" = @("Write", "Owner"); "Service Sport" = @("Read") }
)

# Applique les permissions NTFS et de partage
foreach ($perm in $permissions) {
    $repertoire = $perm.Repertoire
    $path = "C:\Shares\$repertoire"
    $userIndex = 0

    foreach ($ou in $users.Keys) {
        $ouUsers = $users[$ou]
        $ouPerms = $perm.$ou

        foreach ($user in $ouUsers) {
            if ($ouPerms[$userIndex]) {
                $permission = $ouPerms[$userIndex]
                # Permissions NTFS
                $acl = Get-Acl -Path $path
                if ($permission -eq "Owner") { $ntfsRight = "FullControl" } elseif ($permission -eq "Read/Write") { $ntfsRight = "Modify" } elseif ($permission -eq "Read") { $ntfsRight = "ReadAndExecute" } elseif ($permission -eq "Write") { $ntfsRight = "Modify" } else { $ntfsRight = "FullControl" }
                $accessRule = New-Object System.Security.AccessControl.FileSystemAccessRule($user, $ntfsRight, "ContainerInherit, ObjectInherit", "None", "Allow")
                $acl.AddAccessRule($accessRule)
                Set-Acl -Path $path -AclObject $acl
                Write-Host "Permission NTFS $ntfsRight ajoutée pour $user sur $path"

                # Permissions de partage (SMB)
                if ($permission -eq "Owner" -or $permission -eq "FullControl") {
                    Grant-SmbShareAccess -Name $repertoire -AccountName $user -AccessRight Full -Force
                } elseif ($permission -eq "Read") {
                    Grant-SmbShareAccess -Name $repertoire -AccountName $user -AccessRight Read -Force
                } elseif ($permission -eq "Read/Write" -or $permission -eq "Write") {
                    Grant-SmbShareAccess -Name $repertoire -AccountName $user -AccessRight Change -Force
                }
                Write-Host "Permission de partage $permission ajoutée pour $user sur \\ynovLAxelserver\$repertoire"
            }
            $userIndex++
        }
        $userIndex = 0
    }
}