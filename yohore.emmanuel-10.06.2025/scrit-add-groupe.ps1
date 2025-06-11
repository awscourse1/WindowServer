
$groupes = @{
    "Direction_PO"       = @("manu1", "manu3", "manu9", "manu10")
    "Compta_Lyon"        = @("manu2")
    "Commercial_Toulouse"= @("manu2", "manu3")
    "Technique_Nantes"   = @("manu4", "manu5")
    "Comm_Aix"           = @("manu4", "manu5")
    "Social_Lille"       = @("manu6", "manu10")
    "Enseignant_Casa"    = @("manu7")
    "Salle_Nice"         = @("manu8")
    "Refectoire_PO"      = @("manu9")
    "Sport_Mtp"          = @("manu10")
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

    foreach ($user in $groupes[$groupe]) {
        try {
            $userDN = Get-ADUser -Filter "SamAccountName -eq '$user'" -ErrorAction Stop
            if ($userDN) {
                Add-ADGroupMember -Identity $groupe -Members $userDN -ErrorAction Stop
                Write-Host "Utilisateur $user ajouté à $groupe." -ForegroundColor Green
            }
        } catch [Microsoft.ActiveDirectory.Management.ADIdentityAlreadyExistsException] {
            Write-Host "Utilisateur $user déjà membre de $groupe." -ForegroundColor Yellow
        } catch {
            Write-Warning "Erreur avec l'utilisateur $user pour le groupe $groupe : $_"
        }
    }
}