$Password = ConvertTo-SecureString "P@ssw0rd123" -AsPlainText -Force

New-ADUser -Name "ps_Jean Martin" -GivenName "Jean" -Surname "Martin" -SamAccountName "ps_jmartin" -UserPrincipalName "ps_jmartin@domain.local" -Path "OU=Utilisateurs,DC=domain,DC=local" -AccountPassword $Password -Enabled $true

New-ADUser -Name "ps_Lucie Bernard" -GivenName "Lucie" -Surname "Bernard" -SamAccountName "ps_lbernard" -UserPrincipalName "ps_lbernard@domain.local" -Path "OU=Utilisateurs,DC=domain,DC=local" -AccountPassword $Password -Enabled $true

New-ADUser -Name "ps_Ali Hamza" -GivenName "Ali" -Surname "Hamza" -SamAccountName "ps_ahamza" -UserPrincipalName "ps_ahamza@domain.local" -Path "OU=Utilisateurs,DC=domain,DC=local" -AccountPassword $Password -Enabled $true

New-ADGroup -Name "ps_Gestion_IT" -SamAccountName "ps_Gestion_IT" -GroupScope Global -GroupCategory Security -Path "OU=Groupes,DC=domain,DC=local"
New-ADGroup -Name "ps_Comptabilite" -SamAccountName "ps_Comptabilite" -GroupScope Global -GroupCategory Security -Path "OU=Groupes,DC=domain,DC=local"

Add-ADGroupMember -Identity "ps_Gestion_IT" -Members "ps_jmartin", "ps_lbernard"
Add-ADGroupMember -Identity "ps_Comptabilite" -Members "ps_ahamza"
