# ps_YnovGroup
New-ADOrganizationalUnit -Name "ps_YnovGroup" -Path "DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false

# ps_France 
New-ADOrganizationalUnit -Name "ps_France" -Path "OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false

# NORD
New-ADOrganizationalUnit -Name "Nord" -Path "OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false

New-ADOrganizationalUnit -Name "Lille" -Path "OU=Nord,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "Utilisateurs" -Path "OU=Lille,OU=Nord,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "Ordinateurs" -Path "OU=Lille,OU=Nord,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false

New-ADOrganizationalUnit -Name "Rouen" -Path "OU=Nord,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "Utilisateurs" -Path "OU=Rouen,OU=Nord,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "Ordinateurs" -Path "OU=Rouen,OU=Nord,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false

New-ADOrganizationalUnit -Name "Rennes" -Path "OU=Nord,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "Utilisateurs" -Path "OU=Rennes,OU=Nord,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "Ordinateurs" -Path "OU=Rennes,OU=Nord,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false

# SUD
New-ADOrganizationalUnit -Name "Sud" -Path "OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false

New-ADOrganizationalUnit -Name "Aix-en-Provence" -Path "OU=Sud,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "Utilisateurs" -Path "OU=Aix-en-Provence,OU=Sud,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "Ordinateurs" -Path "OU=Aix-en-Provence,OU=Sud,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false

New-ADOrganizationalUnit -Name "Montpellier" -Path "OU=Sud,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "Utilisateurs" -Path "OU=Montpellier,OU=Sud,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "Ordinateurs" -Path "OU=Montpellier,OU=Sud,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false

New-ADOrganizationalUnit -Name "Nice-Sophia" -Path "OU=Sud,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "Utilisateurs" -Path "OU=Nice-Sophia,OU=Sud,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "Ordinateurs" -Path "OU=Nice-Sophia,OU=Sud,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false

New-ADOrganizationalUnit -Name "Toulouse" -Path "OU=Sud,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "Utilisateurs" -Path "OU=Toulouse,OU=Sud,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "Ordinateurs" -Path "OU=Toulouse,OU=Sud,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false

# EST
New-ADOrganizationalUnit -Name "Est" -Path "OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false

New-ADOrganizationalUnit -Name "Lyon" -Path "OU=Est,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "Utilisateurs" -Path "OU=Lyon,OU=Est,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "Ordinateurs" -Path "OU=Lyon,OU=Est,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false

New-ADOrganizationalUnit -Name "Strasbourg" -Path "OU=Est,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "Utilisateurs" -Path "OU=Strasbourg,OU=Est,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "Ordinateurs" -Path "OU=Strasbourg,OU=Est,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false

# OUEST
New-ADOrganizationalUnit -Name "Ouest" -Path "OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false

New-ADOrganizationalUnit -Name "Bordeaux" -Path "OU=Ouest,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "Utilisateurs" -Path "OU=Bordeaux,OU=Ouest,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "Ordinateurs" -Path "OU=Bordeaux,OU=Ouest,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false

New-ADOrganizationalUnit -Name "Nantes" -Path "OU=Ouest,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "Utilisateurs" -Path "OU=Nantes,OU=Ouest,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "Ordinateurs" -Path "OU=Nantes,OU=Ouest,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false

New-ADOrganizationalUnit -Name "Rennes" -Path "OU=Ouest,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "Utilisateurs" -Path "OU=Rennes,OU=Ouest,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "Ordinateurs" -Path "OU=Rennes,OU=Ouest,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false

# PARIS
New-ADOrganizationalUnit -Name "Paris" -Path "OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false

New-ADOrganizationalUnit -Name "Paris-Est" -Path "OU=Paris,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "Utilisateurs" -Path "OU=Paris-Est,OU=Paris,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "Ordinateurs" -Path "OU=Paris-Est,OU=Paris,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false

New-ADOrganizationalUnit -Name "Paris-Ouest" -Path "OU=Paris,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "Utilisateurs" -Path "OU=Paris-Ouest,OU=Paris,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "Ordinateurs" -Path "OU=Paris-Ouest,OU=Paris,OU=ps_France,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false

# INTERNATIONAL
New-ADOrganizationalUnit -Name "International" -Path "OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "Casablanca" -Path "OU=International,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "Utilisateurs" -Path "OU=Casablanca,OU=International,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false
New-ADOrganizationalUnit -Name "Ordinateurs" -Path "OU=Casablanca,OU=International,OU=ps_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $false
