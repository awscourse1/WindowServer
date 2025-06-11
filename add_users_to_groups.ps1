$prenoms = @(
    "jean",   
    "albert",   
    "anne",    
    "stan",     
    "kelyan",   
    "jeremy",   
    "maiwenn",  
    "cassian",  
    "matthieu", 
    "axel",     
    "najm"      
)

$groupes = @{
    "Direction_PO"        = @($prenoms[1], $prenoms[3], $prenoms[9], $prenoms[10])    # albert, stan, axel, najm
    "Compta_Lyon"         = @($prenoms[2])                                            # anne
    "Commercial_Toulouse" = @($prenoms[2], $prenoms[3])                               # anne, stan
    "Technique_Nantes"    = @($prenoms[4], $prenoms[5])                               # kelyan, jeremy
    "Comm_Aix"            = @($prenoms[4], $prenoms[5])                               # kelyan, jeremy
    "Social_Lille"        = @($prenoms[6], $prenoms[10])                              # maiwenn, najm
    "Enseignant_Casa"     = @($prenoms[7])                                            # cassian
    "Salle_Nice"          = @($prenoms[8])                                            # matthieu
    "Refectoire_PO"       = @($prenoms[9])                                            # axel
    "Sport_Mtp"           = @($prenoms[10])                                           # najm
}

$domaine = "YnovDomaine.com"
$ouGroupes = "OU=Groupes,DC=YnovDomaine,DC=com"

try {
    Get-ADOrganizationalUnit -Filter "DistinguishedName -eq '$ouGroupes'" -ErrorAction Stop
    Write-Host "OU Groupes existe déjà."
} catch {
    New-ADOrganizationalUnit -Name "Groupes" -Path "DC=YnovDomaine,DC=com"
    Write-Host "OU Groupes créée."
}

foreach ($groupe in $groupes.Keys) {

    if (-not (Get-ADGroup -Filter "Name -eq '$groupe'" -ErrorAction SilentlyContinue)) {
        try {
            New-ADGroup -Name $groupe -SamAccountName $groupe -GroupScope Global -GroupCategory Security -Path $ouGroupes
            Write-Host "Groupe $groupe créé." -ForegroundColor Green
        } catch {
            Write-Error "Erreur lors de la création du groupe $groupe : $_"
            continue
        }
    } else {
        Write-Host "Groupe $groupe existe déjà." -ForegroundColor Yellow
    }

    foreach ($prenom in $groupes[$groupe] + $prenoms[0]) {  
        try {
            $login = "$prenom$prenom".ToLower()
            $userDN = Get-ADUser -Filter "SamAccountName -eq '$login'" -ErrorAction Stop
            Add-ADGroupMember -Identity $groupe -Members $userDN
            Write-Host "Utilisateur $prenom ajouté à $groupe." -ForegroundColor Green
        } catch [Microsoft.ActiveDirectory.Management.ADIdentityAlreadyExistsException] {
            Write-Host "Utilisateur $prenom déjà membre de $groupe." -ForegroundColor Yellow
        } catch {
            Write-Warning "Erreur avec l'utilisateur $prenom pour le groupe $groupe : $_"
        }
    }
}
