$prenoms = @(
    "hayden",
    "marion",
    "neyla",
    "quentin",
    "sam",
    "pluto",
    "daisie",
    "donald",
    "minnie",
    "mickey",
    "jordan",  
)

$groupes = @{
    "Direction_PO"        = @($prenoms[0], $prenoms[1], $prenoms[3], $prenoms[9], $prenoms[10])
    "Compta_Lyon"         = @($prenoms[0], $prenoms[2])                                            
    "Commercial_Toulouse" = @($prenoms[0], $prenoms[2], $prenoms[3])                               
    "Technique_Nantes"    = @($prenoms[0], $prenoms[4], $prenoms[5])                               
    "Comm_Aix"            = @($prenoms[0], $prenoms[4], $prenoms[5])                               
    "Social_Lille"        = @($prenoms[0], $prenoms[6], $prenoms[10])                             
    "Enseignant_Casa"     = @($prenoms[0], $prenoms[7])                                            
    "Salle_Nice"          = @($prenoms[0], $prenoms[8])                                            
    "Refectoire_PO"       = @($prenoms[0], $prenoms[9])                                            
    "Sport_Mtp"           = @($prenoms[0], $prenoms[10])                                           
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
