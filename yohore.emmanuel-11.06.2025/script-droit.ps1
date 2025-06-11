
$basePath = "C:\Partage"


$groups = @{
    "Direction" = "G_Direction_PO"; "Comptabilite" = "G_Compta_Lyon"; "Commercial" = "G_Commercial_Toulouse"
    "Technique" = "G_Technique_Nantes"; "Communication" = "G_Comm_Aix"; "Service_sociale" = "G_Social_Lille"
    "Service_enseignant" = "G_Enseignant_Casa"; "Refectoire" = "G_Refectoire_PO"
    "Service_Salle" = "G_Salle_Nice"; "Service_Sport" = "G_Sport_Mtp"
}


$perms = @{
    "Repertoire_1" = @{ "Direction"="Read"; "Commercial"="Owner"; "Technique"="Write"; "Communication"="Read"; "Service_sociale"="Read"; "Service_enseignant"="Read"; "Refectoire"="Write"; "Service_Salle"="Write"; "Service_Sport"="Owner" }
    "Repertoire_2" = @{ "Direction"="Read"; "Technique"="Read"; "Communication"="Read"; "Service_sociale"="Read"; "Service_enseignant"="Read"; "Refectoire"="Write"; "Service_Salle"="Write"; "Service_Sport"="Read" }
    "Repertoire_3" = @{ "Direction"="Write"; "Comptabilite"="Read"; "Commercial"="Read"; "Technique"="Write"; "Communication"="Write"; "Service_enseignant"="Write"; "Refectoire"="Write"; "Service_Salle"="Write"; "Service_Sport"="Read" }
    "Repertoire_4" = @{ "Direction"="Write"; "Comptabilite"="Read"; "Commercial"="Write"; "Service_enseignant"="Read"; "Refectoire"="Read"; "Service_Salle"="Write"; "Service_Sport"="Write" }
    "Repertoire_5" = @{ "Direction"="Read"; "Comptabilite"="Write"; "Commercial"="Read"; "Communication"="Read"; "Service_sociale"="Write"; "Service_enseignant"="Write"; "Refectoire"="Write"; "Service_Salle"="Write"; "Service_Sport"="Read" }
    "Repertoire_6" = @{ "Comptabilite"="Owner"; "Communication"="Write"; "Service_enseignant"="Read"; "Service_Salle"="Write"; "Service_Sport"="Write" }
    "Repertoire_7" = @{ "Direction"="Read"; "Comptabilite"="Read"; "Technique"="Write"; "Communication"="Write"; "Service_sociale"="Write"; "Service_enseignant"="Write"; "Service_Salle"="Read" }
    "Repertoire_8" = @{ "Direction"="Owner"; "Comptabilite"="Read"; "Commercial"="Read"; "Technique"="Read"; "Communication"="Owner"; "Service_sociale"="Owner"; "Service_enseignant"="Owner"; "Refectoire"="Write"; "Service_Salle"="Read"; "Service_Sport"="Read" }
    "Repertoire_9" = @{ "Comptabilite"="Write"; "Commercial"="Write"; "Communication"="Read"; "Service_sociale"="Write"; "Service_enseignant"="Owner"; "Refectoire"="Write"; "Service_Sport"="Write" }
    "Repertoire_10" = @{ "Direction"="Read"; "Comptabilite"="Owner"; "Commercial"="Owner"; "Technique"="Write"; "Communication"="Owner"; "Service_sociale"="Write"; "Service_enseignant"="Write"; "Refectoire"="Write"; "Service_Salle"="Read"; "Service_Sport"="Read" }
    "Repertoire_11" = @{ "Direction"="Read"; "Comptabilite"="Write"; "Commercial"="Read"; "Technique"="Write"; "Service_sociale"="Read"; "Service_enseignant"="Write"; "Refectoire"="Owner"; "Service_Sport"="Read" }
    "Repertoire_12" = @{ "Direction"="Write"; "Comptabilite"="Read"; "Communication"="Write"; "Service_enseignant"="Read"; "Service_Sport"="Write" }
    "Repertoire_13" = @{ "Commercial"="Read"; "Technique"="Read"; "Communication"="Write"; "Service_sociale"="Write"; "Service_Salle"="Read"; "Service_Sport"="Write" }
    "Repertoire_14" = @{ "Direction"="Write"; "Comptabilite"="Read"; "Commercial"="Read"; "Technique"="Write"; "Service_sociale"="Read"; "Service_enseignant"="Write"; "Refectoire"="Owner"; "Service_Salle"="Write" }
    "Repertoire_15" = @{ "Comptabilite"="Read"; "Commercial"="Write"; "Communication"="Read"; "Service_sociale"="Write"; "Service_enseignant"="Write"; "Service_Salle"="Read"; "Service_Sport"="Read" }
    "Repertoire_16" = @{ "Comptabilite"="Read"; "Commercial"="Read"; "Technique"="Write"; "Service_sociale"="Read"; "Service_enseignant"="Write"; "Refectoire"="Owner"; "Service_Salle"="Read"; "Service_Sport"="Owner" }
    "Repertoire_17" = @{ "Direction"="Read"; "Comptabilite"="Write"; "Commercial"="Write"; "Technique"="Write"; "Communication"="Read"; "Service_enseignant"="Read"; "Refectoire"="Read"; "Service_Salle"="Write"; "Service_Sport"="Write" }
    "Repertoire_18" = @{ "Direction"="Write"; "Comptabilite"="Read"; "Commercial"="Write"; "Technique"="Read"; "Communication"="Write"; "Service_sociale"="Read"; "Service_enseignant"="Write"; "Refectoire"="Read"; "Service_Sport"="Read" }
    "Repertoire_19" = @{ "Direction"="Read"; "Comptabilite"="Read"; "Communication"="Read"; "Service_sociale"="Write"; "Refectoire"="Write"; "Service_Salle"="Write"; "Service_Sport"="Read" }
    "Repertoire_20" = @{ "Direction"="Read"; "Technique"="Write"; "Communication"="Read"; "Service_sociale"="Read"; "Service_enseignant"="Owner"; "Service_Sport"="Owner" }
}

function Set-Perm($folder, $group, $perm) {
    $rights = switch($perm) { "Read"{"ReadAndExecute"} "Write"{"Modify"} "Owner"{"FullControl"} }
    $acl = Get-Acl $folder
    $rule = New-Object System.Security.AccessControl.FileSystemAccessRule($group,$rights,"ContainerInherit,ObjectInherit","None","Allow")
    $acl.SetAccessRule($rule)
    Set-Acl $folder $acl
}


foreach($rep in $perms.Keys) {
    $path = "$basePath\$rep"
    if(!(Test-Path $path)) { mkdir $path }
    foreach($service in $perms[$rep].Keys) {
        Set-Perm $path $groups[$service] $perms[$rep][$service]
    }
    Write-Host "$rep - OK"
}