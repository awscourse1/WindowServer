New-ADUser `
    -Name "Martin Pierre" `
    -GivenName "Pierre" `
    -Surname "Martin" `
    -SamAccountName "pmartin" `
    -UserPrincipalName "pierre.martin@ynovNL.com" `
    -Path "OU=Utilisateurs,OU=Paris-Ouest,OU=Paris,OU=france,OU=ynovGroup,DC=YnovNL,DC=com" `
    -AccountPassword (ConvertTo-SecureString "#root1234" -AsPlainText -Force) `
    -Enabled $true



New-ADUser `
    -Name "Blond Camille" `
    -GivenName "Camille" `
    -Surname "Blond" `
    -SamAccountName "cblond" `
    -UserPrincipalName "camille.blond@ynovNL.com" `
    -Path "OU=Utilisateurs,OU=Lyon,OU=Est,OU=france,OU=ynovGroup,DC=YnovNL,DC=com" `
    -AccountPassword (ConvertTo-SecureString "#root1234" -AsPlainText -Force) `
    -Enabled $true


New-ADUser `
    -Name "Lelong Jean" `
    -GivenName "Jean" `
    -Surname "Lelong" `
    -SamAccountName "jlelong" `
    -UserPrincipalName "jean.lelong@ynovNL.com" `
    -Path "OU=Utilisateurs,OU=Aix-en-Provence,OU=Sud,OU=france,OU=ynovGroup,DC=YnovNL,DC=com" `
    -AccountPassword (ConvertTo-SecureString "#root1234" -AsPlainText -Force) `
    -Enabled $true


New-ADUser `
    -Name "Metayer Julie" `
    -GivenName "Julie" `
    -Surname "Metayer" `
    -SamAccountName "jmetayer" `
    -UserPrincipalName "julie.metayer@ynovNL.com" `
    -Path "OU=Utilisateurs,OU=Lille,OU=Nord,OU=france,OU=ynovGroup,DC=YnovNL,DC=com" `
    -AccountPassword (ConvertTo-SecureString "#root1234" -AsPlainText -Force) `
    -Enabled $true


New-ADUser `
    -Name "Fort Axel" `
    -GivenName "Axel" `
    -Surname "Fort" `
    -SamAccountName "afort" `
    -UserPrincipalName "axel.fort@ynovNL.com" `
    -Path "OU=Utilisateurs,OU=Casablanca,OU=internantional,OU=ynovGroup,DC=YnovNL,DC=com" `
    -AccountPassword (ConvertTo-SecureString "#root1234" -AsPlainText -Force) `
    -Enabled $true


New-ADUser `
    -Name "Leduc Etienne" `
    -GivenName "Etienne" `
    -Surname "Leduc" `
    -SamAccountName "eleduc" `
    -UserPrincipalName "etienne.leduc@ynovNL.com" `
    -Path "OU=Utilisateurs,OU=Casablanca,OU=internantional,OU=ynovGroup,DC=YnovNL,DC=com" `
    -AccountPassword (ConvertTo-SecureString "#root1234" -AsPlainText -Force) `
    -Enabled $true


New-ADUser `
    -Name "Boissier Rose" `
    -GivenName "Rose" `
    -Surname "Boissier" `
    -SamAccountName "rboissier" `
    -UserPrincipalName "rose.boissier@ynovNL.com" `
    -Path "OU=Utilisateurs,OU=Paris-Ouest,OU=Paris,OU=france,OU=ynovGroup,DC=YnovNL,DC=com" `
    -AccountPassword (ConvertTo-SecureString "#root1234" -AsPlainText -Force) `
    -Enabled $true


New-ADUser `
    -Name "Klein Johan" `
    -GivenName "Johan" `
    -Surname "Klein" `
    -SamAccountName "jklein" `
    -UserPrincipalName "johan.klein@ynovNL.com" `
    -Path "OU=Utilisateurs,OU=Nice-Sophia,OU=Sud,OU=france,OU=ynovGroup,DC=YnovNL,DC=com" `
    -AccountPassword (ConvertTo-SecureString "#root1234" -AsPlainText -Force) `
    -Enabled $true


New-ADUser `
    -Name "Bouchet Xavier" `
    -GivenName "Xavier" `
    -Surname "Bouchet" `
    -SamAccountName "xbouchet" `
    -UserPrincipalName "xavier.bouchet@ynovNL.com" `
    -Path "OU=Utilisateurs,OU=Lille,OU=Nord,OU=france,OU=ynovGroup,DC=YnovNL,DC=com" `
    -AccountPassword (ConvertTo-SecureString "#root1234" -AsPlainText -Force) `
    -Enabled $true