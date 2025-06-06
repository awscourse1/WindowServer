# Groupe principal
New-ADOrganizationalUnit -Name "ps_ynovGroup" -Path "DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true

# France
New-ADOrganizationalUnit -Name "ps_France" -Path "OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true

    # Nord
    New-ADOrganizationalUnit -Name "ps_Nord" -Path "OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true

        # Lille
        New-ADOrganizationalUnit -Name "ps_Lille" -Path "OU=ps_Nord,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true
        New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path "OU=ps_Lille,OU=ps_Nord,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true
        New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path "OU=ps_Lille,OU=ps_Nord,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true

        # Rouen
        New-ADOrganizationalUnit -Name "ps_Rouen" -Path "OU=ps_Nord,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true
        New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path "OU=ps_Rouen,OU=ps_Nord,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true
        New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path "OU=ps_Rouen,OU=ps_Nord,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true

    # Sud
    New-ADOrganizationalUnit -Name "ps_Sud" -Path "OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true

        # Aix-en-Provence
        New-ADOrganizationalUnit -Name "ps_Aix-en-Provence" -Path "OU=ps_Sud,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true
        New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path "OU=ps_Aix-en-Provence,OU=ps_Sud,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true
        New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path "OU=ps_Aix-en-Provence,OU=ps_Sud,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true

        # Montpellier
        New-ADOrganizationalUnit -Name "ps_Montpellier" -Path "OU=ps_Sud,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true
        New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path "OU=ps_Montpellier,OU=ps_Sud,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true
        New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path "OU=ps_Montpellier,OU=ps_Sud,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true

        # Nice-Sophia
        New-ADOrganizationalUnit -Name "ps_Nice-Sophia" -Path "OU=ps_Sud,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true
        New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path "OU=ps_Nice-Sophia,OU=ps_Sud,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true
        New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path "OU=ps_Nice-Sophia,OU=ps_Sud,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true

        # Toulouse
        New-ADOrganizationalUnit -Name "ps_Toulouse" -Path "OU=ps_Sud,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true
        New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path "OU=ps_Toulouse,OU=ps_Sud,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true
        New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path "OU=ps_Toulouse,OU=ps_Sud,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true

    # Est
    New-ADOrganizationalUnit -Name "ps_Est" -Path "OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true

        # Lyon
        New-ADOrganizationalUnit -Name "ps_Lyon" -Path "OU=ps_Est,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true
        New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path "OU=ps_Lyon,OU=ps_Est,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true
        New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path "OU=ps_Lyon,OU=ps_Est,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true

        # Strasbourg
        New-ADOrganizationalUnit -Name "ps_Strasbourg" -Path "OU=ps_Est,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true
        New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path "OU=ps_Strasbourg,OU=ps_Est,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true
        New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path "OU=ps_Strasbourg,OU=ps_Est,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true

    # Ouest
    New-ADOrganizationalUnit -Name "ps_Ouest" -Path "OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true

        # Bordeaux
        New-ADOrganizationalUnit -Name "ps_Bordeaux" -Path "OU=ps_Ouest,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true
        New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path "OU=ps_Bordeaux,OU=ps_Ouest,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true
        New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path "OU=ps_Bordeaux,OU=ps_Ouest,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true

        # Nantes
        New-ADOrganizationalUnit -Name "ps_Nantes" -Path "OU=ps_Ouest,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true
        New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path "OU=ps_Nantes,OU=ps_Ouest,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true
        New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path "OU=ps_Nantes,OU=ps_Ouest,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true

        # Rennes
        New-ADOrganizationalUnit -Name "ps_Rennes" -Path "OU=ps_Ouest,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true
        New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path "OU=ps_Rennes,OU=ps_Ouest,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true
        New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path "OU=ps_Rennes,OU=ps_Ouest,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true

    # Paris
    New-ADOrganizationalUnit -Name "ps_Paris" -Path "OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true

        # Est (sous Paris ?)
        New-ADOrganizationalUnit -Name "ps_Est" -Path "OU=ps_Paris,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true
        New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path "OU=ps_Est,OU=ps_Paris,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true
        New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path "OU=ps_Est,OU=ps_Paris,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true

        # Paris-Ouest
        New-ADOrganizationalUnit -Name "ps_Paris-Quest" -Path "OU=ps_Paris,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true
        New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path "OU=ps_Paris-Quest,OU=ps_Paris,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true
        New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path "OU=ps_Paris-Quest,OU=ps_Paris,OU=ps_France,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $true

# International
New-ADOrganizationalUnit -Name "ps_International" -Path "OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $false

    # Casablanca
    New-ADOrganizationalUnit -Name "ps_Casablanca" -Path "OU=ps_International,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $false
    New-ADOrganizationalUnit -Name "ps_Utilisateurs" -Path "OU=ps_Casablanca,OU=ps_International,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $false
    New-ADOrganizationalUnit -Name "ps_Ordinateurs" -Path "OU=ps_Casablanca,OU=ps_International,OU=ps_ynovGroup,DC=godwin,DC=com" -ProtectedFromAccidentalDeletion $false
