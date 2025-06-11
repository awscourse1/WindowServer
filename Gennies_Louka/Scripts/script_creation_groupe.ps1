# Script de création des groupes Active Directory

# Groupes pour Direction (Paris)
New-ADGroup -Name "ps_Direction" -GroupScope Global -GroupCategory Security -Path "OU=ps_Utilisateurs,OU=ps_Paris_Ouest,OU=ps_Paris,OU=ps_France,OU=ps_ynovGroup,DC=corp,DC=YnovDomain,DC=com"

# Groupes pour Comptabilité (Lyon)
New-ADGroup -Name "ps_Comptabilite" -GroupScope Global -GroupCategory Security -Path "OU=ps_Utilisateurs,OU=ps_Lyon,OU=ps_Est,OU=ps_France,OU=ps_ynovGroup,DC=corp,DC=YnovDomain,DC=com"

# Groupes pour Commercial (Toulouse)
New-ADGroup -Name "ps_Commercial" -GroupScope Global -GroupCategory Security -Path "OU=ps_Utilisateurs,OU=ps_Toulouse,OU=ps_Sud,OU=ps_France,OU=ps_ynovGroup,DC=corp,DC=YnovDomain,DC=com"

# Groupes pour Technique (Nantes)
New-ADGroup -Name "ps_Technique" -GroupScope Global -GroupCategory Security -Path "OU=ps_Utilisateurs,OU=ps_Nantes,OU=ps_Ouest,OU=ps_France,OU=ps_ynovGroup,DC=corp,DC=YnovDomain,DC=com"

# Groupes pour Communication (Aix-en-Provence)
New-ADGroup -Name "ps_Communication" -GroupScope Global -GroupCategory Security -Path "OU=ps_Utilisateurs,OU=ps_Aix-en-Provence,OU=ps_Sud,OU=ps_France,OU=ps_ynovGroup,DC=corp,DC=YnovDomain,DC=com"

# Groupes pour Service sociale (Lille)
New-ADGroup -Name "ps_ServiceSociale" -GroupScope Global -GroupCategory Security -Path "OU=ps_Utilisateurs,OU=ps_Lille,OU=ps_Nord,OU=ps_France,OU=ps_ynovGroup,DC=corp,DC=YnovDomain,DC=com"

# Groupes pour Service Enseignant (Casablanca)
New-ADGroup -Name "ps_ServiceEnseignant" -GroupScope Global -GroupCategory Security -Path "OU=ps_Utilisateurs,OU=ps_Casablanca,OU=ps_International,OU=ps_ynovGroup,DC=corp,DC=YnovDomain,DC=com"

# Groupes pour Service salle (Nice)
New-ADGroup -Name "ps_ServiceSalle" -GroupScope Global -GroupCategory Security -Path "OU=ps_Utilisateurs,OU=ps_Nice-Sophia,OU=ps_Sud,OU=ps_France,OU=ps_ynovGroup,DC=corp,DC=YnovDomain,DC=com"

# Groupes pour Réfectoire (Paris-Ouest)
New-ADGroup -Name "ps_Refectoire" -GroupScope Global -GroupCategory Security -Path "OU=ps_Utilisateurs,OU=ps_Paris_Ouest,OU=ps_Paris,OU=ps_France,OU=ps_ynovGroup,DC=corp,DC=YnovDomain,DC=com"

# Groupes pour Service sport (Montpellier)  
New-ADGroup -Name "ps_ServiceSport" -GroupScope Global -GroupCategory Security -Path "OU=ps_Utilisateurs,OU=ps_Montpellier,OU=ps_Sud,OU=ps_France,OU=ps_ynovGroup,DC=corp,DC=YnovDomain,DC=com"

Write-Host "Tous les groupes ont été créés avec succès !" -ForegroundColor Green
Write-Host "Groupes créés :" -ForegroundColor Yellow
Write-Host "- ps_Direction (Paris Est et Paris-Ouest)" -ForegroundColor Cyan
Write-Host "- ps_Comptabilite (Lyon)" -ForegroundColor Cyan
Write-Host "- ps_Commercial (Toulouse)" -ForegroundColor Cyan
Write-Host "- ps_Technique (Nantes)" -ForegroundColor Cyan
Write-Host "- ps_Communication (Aix-en-Provence)" -ForegroundColor Cyan
Write-Host "- ps_ServiceSociale (Lille)" -ForegroundColor Cyan
Write-Host "- ps_ServiceEnseignant (Casablanca)" -ForegroundColor Cyan
Write-Host "- ps_ServiceSalle (Nice-Sophia)" -ForegroundColor Cyan
Write-Host "- ps_Refectoire (Paris-Ouest)" -ForegroundColor Cyan
Write-Host "- ps_ServiceSport (Montpellier)" -ForegroundColor Cyan