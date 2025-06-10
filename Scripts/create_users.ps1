# Create users for Direction (Paris-Ouest)
$ouPath1 = "OU=Utilisateurs,OU=Paris-Ouest,OU=Paris,OU=France,OU=ynovGroup,DC=ynovDomaine,DC=com"
if (-not (Get-ADOrganizationalUnit -Filter 'DistinguishedName -eq $ouPath1')) {
    New-ADOrganizationalUnit -Name "Utilisateurs" -Path "OU=Paris-Ouest,OU=Paris,OU=France,OU=ynovGroup,DC=ynovDomaine,DC=com" -ProtectedFromAccidentalDeletion $true
}
New-ADUser -Name "user_paris_ouest1" -GivenName "user" -Surname "paris_ouest1" -SamAccountName "user_paris_ouest1" -UserPrincipalName "user_paris_ouest1@ynovDomaine.com" -Path $ouPath1 -AccountPassword (ConvertTo-SecureString "P@ssw0rd!" -AsPlainText -Force) -Enabled $true
New-ADUser -Name "user_paris_ouest2" -GivenName "user" -Surname "paris_ouest2" -SamAccountName "user_paris_ouest2" -UserPrincipalName "user_paris_ouest2@ynovDomaine.com" -Path $ouPath1 -AccountPassword (ConvertTo-SecureString "P@ssw0rd!" -AsPlainText -Force) -Enabled $true

# Create user for Compatibilité (Lyon)
$ouPath2 = "OU=Utilisateurs,OU=Lyon,OU=Est,OU=France,OU=ynovGroup,DC=ynovDomaine,DC=com"
if (-not (Get-ADOrganizationalUnit -Filter 'DistinguishedName -eq $ouPath2')) {
    New-ADOrganizationalUnit -Name "Utilisateurs" -Path "OU=Lyon,OU=Est,OU=France,OU=ynovGroup,DC=ynovDomaine,DC=com" -ProtectedFromAccidentalDeletion $true
}
New-ADUser -Name "user_lyon" -GivenName "user" -Surname "lyon" -SamAccountName "user_lyon" -UserPrincipalName "user_lyon@ynovDomaine.com" -Path $ouPath2 -AccountPassword (ConvertTo-SecureString "P@ssw0rd!" -AsPlainText -Force) -Enabled $true

# Create users for Commercial (Toulouse)
$ouPath3 = "OU=Utilisateurs,OU=Toulouse,OU=Sud,OU=France,OU=ynovGroup,DC=ynovDomaine,DC=com"
if (-not (Get-ADOrganizationalUnit -Filter 'DistinguishedName -eq $ouPath3')) {
    New-ADOrganizationalUnit -Name "Utilisateurs" -Path "OU=Toulouse,OU=Sud,OU=France,OU=ynovGroup,DC=ynovDomaine,DC=com" -ProtectedFromAccidentalDeletion $true
}
New-ADUser -Name "user_toulouse1" -GivenName "user" -Surname "toulouse1" -SamAccountName "user_toulouse1" -UserPrincipalName "user_toulouse1@ynovDomaine.com" -Path $ouPath3 -AccountPassword (ConvertTo-SecureString "P@ssw0rd!" -AsPlainText -Force) -Enabled $true
New-ADUser -Name "user_toulouse2" -GivenName "user" -Surname "toulouse2" -SamAccountName "user_toulouse2" -UserPrincipalName "user_toulouse2@ynovDomaine.com" -Path $ouPath3 -AccountPassword (ConvertTo-SecureString "P@ssw0rd!" -AsPlainText -Force) -Enabled $true

# Create user for Technique (Aix-en-Provence)
$ouPath4 = "OU=Utilisateurs,OU=Aix-en-Provence,OU=Sud,OU=France,OU=ynovGroup,DC=ynovDomaine,DC=com"
if (-not (Get-ADOrganizationalUnit -Filter 'DistinguishedName -eq $ouPath4')) {
    New-ADOrganizationalUnit -Name "Utilisateurs" -Path "OU=Aix-en-Provence,OU=Sud,OU=France,OU=ynovGroup,DC=ynovDomaine,DC=com" -ProtectedFromAccidentalDeletion $true
}
New-ADUser -Name "user_aix" -GivenName "user" -Surname "aix" -SamAccountName "user_aix" -UserPrincipalName "user_aix@ynovDomaine.com" -Path $ouPath4 -AccountPassword (ConvertTo-SecureString "P@ssw0rd!" -AsPlainText -Force) -Enabled $true

# Create user for Communication (Paris-Ouest)
$ouPath5 = "OU=Utilisateurs,OU=Paris-Ouest,OU=Paris,OU=France,OU=ynovGroup,DC=ynovDomaine,DC=com"
if (-not (Get-ADOrganizationalUnit -Filter 'DistinguishedName -eq $ouPath5')) {
    New-ADOrganizationalUnit -Name "Utilisateurs" -Path "OU=Paris-Ouest,OU=Paris,OU=France,OU=ynovGroup,DC=ynovDomaine,DC=com" -ProtectedFromAccidentalDeletion $true
}
New-ADUser -Name "user_paris_ouest" -GivenName "user" -Surname "paris_ouest" -SamAccountName "user_paris_ouest" -UserPrincipalName "user_paris_ouest@ynovDomaine.com" -Path $ouPath5 -AccountPassword (ConvertTo-SecureString "P@ssw0rd!" -AsPlainText -Force) -Enabled $true

# Create user for Service sociale (Lille)
$ouPath6 = "OU=Utilisateurs,OU=Lille,OU=Nord,OU=France,OU=ynovGroup,DC=ynovDomaine,DC=com"
if (-not (Get-ADOrganizationalUnit -Filter 'DistinguishedName -eq $ouPath6')) {
    New-ADOrganizationalUnit -Name "Utilisateurs" -Path "OU=Lille,OU=Nord,OU=France,OU=ynovGroup,DC=ynovDomaine,DC=com" -ProtectedFromAccidentalDeletion $true
}
New-ADUser -Name "user_lille" -GivenName "user" -Surname "lille" -SamAccountName "user_lille" -UserPrincipalName "user_lille@ynovDomaine.com" -Path $ouPath6 -AccountPassword (ConvertTo-SecureString "P@ssw0rd!" -AsPlainText -Force) -Enabled $true

# Create user for Service enseignant
$ouPath7 = "OU=Utilisateurs,OU=Nice-Sophia,OU=Sud,OU=France,OU=ynovGroup,DC=ynovDomaine,DC=com"
if (-not (Get-ADOrganizationalUnit -Filter 'DistinguishedName -eq $ouPath7')) {
    New-ADOrganizationalUnit -Name "Utilisateurs" -Path "OU=Nice-Sophia,OU=Sud,OU=France,OU=ynovGroup,DC=ynovDomaine,DC=com" -ProtectedFromAccidentalDeletion $true
}
New-ADUser -Name "user_nice" -GivenName "user" -Surname "nice" -SamAccountName "user_nice" -UserPrincipalName "user_nice@ynovDomaine.com" -Path $ouPath7 -AccountPassword (ConvertTo-SecureString "P@ssw0rd!" -AsPlainText -Force) -Enabled $true

# Create user for Réfectoire
$ouPath8 = "OU=Utilisateurs,OU=Montpellier,OU=Sud,OU=France,OU=ynovGroup,DC=ynovDomaine,DC=com"
if (-not (Get-ADOrganizationalUnit -Filter 'DistinguishedName -eq $ouPath8')) {
    New-ADOrganizationalUnit -Name "Utilisateurs" -Path "OU=Montpellier,OU=Sud,OU=France,OU=ynovGroup,DC=ynovDomaine,DC=com" -ProtectedFromAccidentalDeletion $true
}
New-ADUser -Name "user_montpellier" -GivenName "user" -Surname "montpellier" -SamAccountName "user_montpellier" -UserPrincipalName "user_montpellier@ynovDomaine.com" -Path $ouPath8 -AccountPassword (ConvertTo-SecureString "P@ssw0rd!" -AsPlainText -Force) -Enabled $true