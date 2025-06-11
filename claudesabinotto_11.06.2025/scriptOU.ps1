# Groupe racine
New-ADOrganizationalUnit -Name "ps_ynovGroup" -Path "DC=ynovDomaine,DC=com"

# France
New-ADOrganizationalUnit -Name "ps_France" -Path "OU=ps_ynovGroup,DC=ynovDomaine,DC=com"

# Nord
New-ADOrganizationalUnit -Name "ps_Nord" -Path "OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Lille" -Path "OU=ps_Nord,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path "OU=ps_Lille,OU=ps_Nord,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path "OU=ps_Lille,OU=ps_Nord,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Rouen" -Path "OU=ps_Nord,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path "OU=ps_Rouen,OU=ps_Nord,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path "OU=ps_Rouen,OU=ps_Nord,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"

# Sud
New-ADOrganizationalUnit -Name "ps_Sud" -Path "OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Aix-en-Provence" -Path "OU=ps_Sud,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path "OU=ps_Aix-en-Provence,OU=ps_Sud,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path "OU=ps_Aix-en-Provence,OU=ps_Sud,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Montpellier" -Path "OU=ps_Sud,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path "OU=ps_Montpellier,OU=ps_Sud,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path "OU=ps_Montpellier,OU=ps_Sud,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Nice-Sophia" -Path "OU=ps_Sud,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path "OU=ps_Nice-Sophia,OU=ps_Sud,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path "OU=ps_Nice-Sophia,OU=ps_Sud,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Toulouse" -Path "OU=ps_Sud,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path "OU=ps_Toulouse,OU=ps_Sud,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path "OU=ps_Toulouse,OU=ps_Sud,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"

# Est
New-ADOrganizationalUnit -Name "ps_Est" -Path "OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Lyon" -Path "OU=ps_Est,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path "OU=ps_Lyon,OU=ps_Est,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path "OU=ps_Lyon,OU=ps_Est,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Strasbourg" -Path "OU=ps_Est,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path "OU=ps_Strasbourg,OU=ps_Est,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path "OU=ps_Strasbourg,OU=ps_Est,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"

# Ouest
New-ADOrganizationalUnit -Name "ps_Ouest" -Path "OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Bordeaux" -Path "OU=ps_Ouest,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path "OU=ps_Bordeaux,OU=ps_Ouest,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path "OU=ps_Bordeaux,OU=ps_Ouest,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Nantes" -Path "OU=ps_Ouest,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path "OU=ps_Nantes,OU=ps_Ouest,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path "OU=ps_Nantes,OU=ps_Ouest,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Rennes" -Path "OU=ps_Ouest,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path "OU=ps_Rennes,OU=ps_Ouest,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path "OU=ps_Rennes,OU=ps_Ouest,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"

# Paris
New-ADOrganizationalUnit -Name "ps_Paris" -Path "OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Paris-Est" -Path "OU=ps_Paris,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path "OU=ps_Paris-Est,OU=ps_Paris,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path "OU=ps_Paris-Est,OU=ps_Paris,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Paris-Ouest" -Path "OU=ps_Paris,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path "OU=ps_Paris-Ouest,OU=ps_Paris,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path "OU=ps_Paris-Ouest,OU=ps_Paris,OU=ps_France,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"

# Internationale
New-ADOrganizationalUnit -Name "ps_Internationale" -Path "OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Casablanca" -Path "OU=ps_Internationale,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path "OU=ps_Casablanca,OU=ps_Internationale,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path "OU=ps_Casablanca,OU=ps_Internationale,OU=ps_ynovGroup,DC=ynovDomaine,DC=com"
