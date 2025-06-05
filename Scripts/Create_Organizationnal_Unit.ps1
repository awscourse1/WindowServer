New-ADOrganizationalUnit -Name "ps_YnovGroup" -Path "DC=ynovDomaine,DC=com" -ProtectedFromAccidentalDeletion $true

New-ADOrganizationalUnit -Name "ps_France" -Path "OU=PS_YnovGroup,DC=YnovDomaine,DC=com" -ProtectedFromAccidentalDeletion $true