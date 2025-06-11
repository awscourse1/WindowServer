New-ADOrganizationalUnit -Name "ps_YnovGroup" -Path "DC=ynovDomain,DC=com" -ProtectedFromAccidentalDeletion $true
New-ADOrganizationalUnit -Name "ps_France" -Path "OU=ps_YnovGroup,DC=ynovDomain,DC=com" -ProtectedFromAccidentalDeletion $true

# Chemin Racine 
$base = "OU=ps_YnovGroup,DC=ynovDomain,DC=com"

# OU France
New-ADOrganizationalUnit -Name "ps_France" -Path $base -ProtectedFromAccidentalDeletion $true

# Sous OU France
$francePath = "OU=ps_France," + $base

# OU Nord
New-ADOrganizationalUnit -Name "ps_Nord" -Path $francePath -ProtectedFromAccidentalDeletion $true
$pathNord = "OU=ps_Nord," + $francePath

New-ADOrganizationalUnit -Name "ps_Lille" -Path $pathNord -ProtectedFromAccidentalDeletion $true
$pathLille = "OU=ps_Lille," + $pathNord
New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path $pathLille -ProtectedFromAccidentalDeletion $true
New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path $pathLille -ProtectedFromAccidentalDeletion $true

New-ADOrganizationalUnit -Name "ps_Rouen" -Path $pathNord -ProtectedFromAccidentalDeletion $true
$pathRouen = "OU=ps_Rouen," + $pathNord
New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path $pathRouen -ProtectedFromAccidentalDeletion $true
New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path $pathRouen -ProtectedFromAccidentalDeletion $true

New-ADOrganizationalUnit -Name "ps_Rennes" -Path $pathNord -ProtectedFromAccidentalDeletion $true

# OU Sud
New-ADOrganizationalUnit -Name "ps_Sud" -Path $francePath -ProtectedFromAccidentalDeletion $true
$pathSud = "OU=ps_Sud," + $francePath

$villesSud = @("ps_Aix-en-Provence", "ps_Montpellier", "ps_Nice-Sophia", "ps_Toulouse")

foreach ($ville in $villesSud) {
    New-ADOrganizationalUnit -Name $ville -Path $pathSud -ProtectedFromAccidentalDeletion $true
    $pathVille = "OU=$ville," + $pathSud
    New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path $pathVille -ProtectedFromAccidentalDeletion $true
    New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path $pathVille -ProtectedFromAccidentalDeletion $true
}

# OU Est
New-ADOrganizationalUnit -Name "ps_Est" -Path $francePath -ProtectedFromAccidentalDeletion $true
$pathEst = "OU=ps_Est," + $francePath

New-ADOrganizationalUnit -Name "ps_Lyon" -Path $pathEst -ProtectedFromAccidentalDeletion $true
$pathLyon = "OU=ps_Lyon," + $pathEst
New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path $pathLyon -ProtectedFromAccidentalDeletion $true
New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path $pathLyon -ProtectedFromAccidentalDeletion $true

New-ADOrganizationalUnit -Name "ps_Strasbourg" -Path $pathEst -ProtectedFromAccidentalDeletion $true
$pathStrasbourg = "OU=ps_Strasbourg," + $pathEst
New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path $pathStrasbourg -ProtectedFromAccidentalDeletion $true
New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path $pathStrasbourg -ProtectedFromAccidentalDeletion $true

# OU Ouest
New-ADOrganizationalUnit -Name "ps_Ouest" -Path $francePath -ProtectedFromAccidentalDeletion $true
$pathOuest = "OU=ps_Ouest," + $francePath

$villesOuest = @("ps_Bordeaux", "ps_Nantes", "ps_Rennes")

foreach ($ville in $villesOuest) {
    New-ADOrganizationalUnit -Name $ville -Path $pathOuest -ProtectedFromAccidentalDeletion $true
    $pathVille = "OU=$ville," + $pathOuest
    New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path $pathVille -ProtectedFromAccidentalDeletion $true
    New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path $pathVille -ProtectedFromAccidentalDeletion $true
}

# OU Paris
New-ADOrganizationalUnit -Name "ps_Paris" -Path $francePath -ProtectedFromAccidentalDeletion $true
$pathParis = "OU=ps_Paris," + $francePath

New-ADOrganizationalUnit -Name "ps_Paris-Est" -Path $pathParis -ProtectedFromAccidentalDeletion $true
$pathParisEst = "OU=ps_Paris-Est," + $pathParis
New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path $pathParisEst -ProtectedFromAccidentalDeletion $true
New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path $pathParisEst -ProtectedFromAccidentalDeletion $true

New-ADOrganizationalUnit -Name "ps_Paris-Ouest" -Path $pathParis -ProtectedFromAccidentalDeletion $true
$pathParisOuest = "OU=ps_Paris-Ouest," + $pathParis
New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path $pathParisOuest -ProtectedFromAccidentalDeletion $true
New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path $pathParisOuest -ProtectedFromAccidentalDeletion $true

# OU International
New-ADOrganizationalUnit -Name "ps_International" -Path $base -ProtectedFromAccidentalDeletion $true
$pathInternational = "OU=ps_International," + $base

New-ADOrganizationalUnit -Name "ps_Casablanca" -Path $pathInternational -ProtectedFromAccidentalDeletion $true
$pathCasablanca = "OU=ps_Casablanca," + $pathInternational
New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path $pathCasablanca -ProtectedFromAccidentalDeletion $true
New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path $pathCasablanca -ProtectedFromAccidentalDeletion $true
