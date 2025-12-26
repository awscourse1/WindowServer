# 1. Cr�ation des Unit�s Organisationnelles


New-ADOrganizationalUnit -Name "ynovDomain" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "ynovGroup" -Path "DC=ynov,DC=local"


New-ADOrganizationalUnit -Name "France" -Path "OU=ynovGroup,DC=ynov,DC=local"
New-ADOrganizationalUnit -Name "International" -Path "OU=ynovGroup,DC=ynov,DC=local"


New-ADOrganizationalUnit -Name "Nord" -Path "OU=France,OU=ynovGroup,DC=ynov,DC=local"
New-ADOrganizationalUnit -Name "Sud" -Path "OU=France,OU=ynovGroup,DC=ynov,DC=local"
New-ADOrganizationalUnit -Name "Est" -Path "OU=France,OU=ynovGroup,DC=ynov,DC=local"
New-ADOrganizationalUnit -Name "Ouest" -Path "OU=France,OU=ynovGroup,DC=ynov,DC=local"


$cities = @("Lille", "Lyon", "Aix-en-Provence", "Monpellier", "Nice-Sophia", "Nantes", "Casablanca")
foreach ($city in $cities) {
    $region = switch -Wildcard ($city) {
        "Lille" { "Nord" }
        "Lyon" { "Est" }
        "Aix*" { "Sud" }
        "Monpellier" { "Sud" }
        "Nice*" { "Sud" }
        "Nantes" { "Ouest" }
        "Casablanca" { "International" }
    }
    New-ADOrganizationalUnit -Name $city -Path "OU=$region,OU=France,OU=ynovGroup,DC=ynov,DC=local"
}



foreach ($city in $cities) {
    New-ADOrganizationalUnit -Name "Utilisateurs" -Path "OU=$city,OU=$($(switch -Wildcard ($city) {
        "Lille" { "Nord" }
        "Lyon" { "Est" }
        "Aix*" { "Sud" }
        "Monpellier" { "Sud" }
        "Nice*" { "Sud" }
        "Nantes" { "Ouest" }
        "Casablanca" { "International" }
    }),OU=France,OU=ynovGroup,DC=ynov,DC=local"
}



# 2. Cr�ation des groupes

# Liste des groupes
$groups = @(
    "Direction", "Comptabilit�", "Commercial", "Technique", "Communication",
    "Service sociale", "Service Enseignant", "R�fectoire", "Service salle", "Service sport"
)


# Cr�ation de chaque groupe dans l'Unit�s Organisationnelles d'Utilisateurs de chaque ville
foreach ($city in $cities) {
    foreach ($group in $groups) {
        $ouPath = "OU=Utilisateurs,OU=$city,OU=$($(switch -Wildcard ($city) {
            "Lille" { "Nord" }
            "Lyon" { "Est" }
            "Aix*" { "Sud" }
            "Monpellier" { "Sud" }
            "Nice*" { "Sud" }
            "Nantes" { "Ouest" }
            "Casablanca" { "International" }
        }),OU=France,OU=ynovGroup,DC=ynov,DC=local"
        
        New-ADGroup -Name $group -GroupScope Global -Path $ouPath
    }
}


# 3. Cr�ation des utilisateurs


# Mot de passe unique pour tous les utilisateurs
$commonPassword = "30685766Na,,"
$securePassword = ConvertTo-SecureString -String $commonPassword -AsPlainText -Force

$users = @(
    @{Name="najm NA. adam"; GivenName="najm"; Surname="adam"; Initials="NA"; City="Monpellier"; Group="Service sport"; UPN="najm.adam@ynov.local"},
    @{Name="Paul PD. DECATOIRE"; GivenName="Paul"; Surname="DECATOIRE"; Initials="PD"; City="Nantes"; Group="Technique"; UPN="DECATOIRE.Paul@ynov.local"},
    @{Name="Axel LA. LOQUET"; GivenName="Axel"; Surname="LOQUET"; Initials="LA"; City="Aix-en-Provence"; Group="Communication"; UPN="LOQUET.Axel@ynov.local"},
    @{Name="Romain JR. JOLLIVET"; GivenName="Romain"; Surname="JOLLIVET"; Initials="JR"; City="Lyon"; Group="Comptabilit�"; UPN="JOLLIVET.Romain@ynov.local"},
    @{Name="Kelyan DK. DANIS"; GivenName="Kelyan"; Surname="DANIS"; Initials="DK"; City="Aix-en-Provence"; Group="Communication"; UPN="DANIS.Kelyan@ynov.local"},
    @{Name="Cassian JC. JOLY"; GivenName="Cassian"; Surname="JOLY"; Initials="JC"; City="Lille"; Group="Service sociale"; UPN="JOLY.Cassian@ynov.local"},
    @{Name="Roxane RL. LAMBIN"; GivenName="Roxane"; Surname="LAMBIN"; Initials="RL"; City="Casablanca"; Group="Service Enseignant"; UPN="LAMBIN.Roxane@ynov.local"},
    @{Name="Alpha FA. FALL"; GivenName="Alpha"; Surname="FALL"; Initials="FA"; City="Casablanca"; Group="Service Enseignant"; UPN="FALL.Alpha@ynov.local"},
    @{Name="C�cilia LC. LEROY"; GivenName="C�cilia"; Surname="LEROY"; Initials="LC"; City="Monpellier"; Group="Service sport"; UPN="LEROY.C�cilia@ynov.local"},
    @{Name="Damien DL. LANDOIS"; GivenName="Damien"; Surname="LANDOIS"; Initials="DL"; City="Nice-Sophia"; Group="Service salle"; UPN="LANDOIS.Damien@ynov.local"},
    @{Name="Stanislas SI. IBRAHIM"; GivenName="Stanislas"; Surname="IBRAHIM"; Initials="SI"; City="Lille"; Group="Service sociale"; UPN="IBRAHIM.Stanislas@ynov.local"},
    @{Name="KING Star"; GivenName="Star"; Surname="KING"; Initials=""; City="Lyon"; Group="Comptabilit�"; UPN="sking@ynov.local"},
    @{Name="ADAM adamz"; GivenName="ADAM"; Surname="adamz"; Initials=""; City="Lyon"; Group="Comptabilit�"; UPN="Aadamz@ynov.local"}
)

foreach ($user in $users) {
    $city = $user.City
    $ouPath = "OU=Utilisateurs,OU=$city,OU=$($(switch -Wildcard ($city) {
        "Lille" { "Nord" }
        "Lyon" { "Est" }
        "Aix*" { "Sud" }
        "Monpellier" { "Sud" }
        "Nice*" { "Sud" }
        "Nantes" { "Ouest" }
        "Casablanca" { "International" }
    }),OU=France,OU=ynovGroup,DC=ynov,DC=local"
    
    $samAccountName = ($user.GivenName.Substring(0,1) + $user.Surname
    
    New-ADUser -Name $user.Name `
               -GivenName $user.GivenName `
               -Surname $user.Surname `
               -Initials $user.Initials `
               -UserPrincipalName $user.UPN `
               -SamAccountName $samAccountName `
               -AccountPassword $securePassword `
               -Enabled $true `
               -Path $ouPath `
               -ChangePasswordAtLogon $true
    
    # Ajouter l'utilisateur au groupe appropri�
    $groupDN = "CN=$($user.Group),$ouPath"
    Add-ADGroupMember -Identity $groupDN -Members $samAccountName
    
    Write-Host "Utilisateur $($user.Name) cr�� avec le mot de passe: 50879844Na,,"
}


