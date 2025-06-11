$domainBase = "DC=ynovDomaine,DC=com"


New-ADUser -Name "ps_Clark Kent" `
    -GivenName "Clark" `
    -Surname "Kent" `
    -SamAccountName "c.kent" `
    -UserPrincipalName "c.kent@ynovDomaine.com" `
    -Path "OU=ps_Utilisateurs,OU=ps_Paris-Ouest,OU=ps_Paris,OU=ps_France,OU=ps_ynovGroup,$domainBase" `
    -AccountPassword (ConvertTo-SecureString 'P@ssw0rd123' -AsPlainText -Force) `
    -Enabled $true `


New-ADUser -Name "ps_Bruce Wayne" `
    -GivenName "Bruce" `
    -Surname "Wayne" `
    -SamAccountName "b.wayne" `
    -UserPrincipalName "b.wayne@ynovDomaine.com" `
    -Path "OU=ps_Utilisateurs,OU=ps_Lyon,OU=ps_Est,OU=ps_France,OU=ps_ynovGroup,$domainBase" `
    -AccountPassword (ConvertTo-SecureString 'P@ssw0rd123' -AsPlainText -Force) `
    -Enabled $true `


New-ADUser -Name "ps_Diana Prince" `
    -GivenName "Diana" `
    -Surname "Prince" `
    -SamAccountName "d.prince" `
    -UserPrincipalName "d.prince@ynovDomaine.com" `
    -Path "OU=ps_Utilisateurs,OU=ps_Toulouse,OU=ps_Sud,OU=ps_France,OU=ps_ynovGroup,$domainBase" `
    -AccountPassword (ConvertTo-SecureString 'P@ssw0rd123' -AsPlainText -Force) `
    -Enabled $true `


New-ADUser -Name "ps_Barry Allen" `
    -GivenName "Barry" `
    -Surname "Allen" `
    -SamAccountName "b.allen" `
    -UserPrincipalName "b.allen@ynovDomaine.com" `
    -Path "OU=ps_Utilisateurs,OU=ps_Nantes,OU=ps_Ouest,OU=ps_France,OU=ps_ynovGroup,$domainBase" `
    -AccountPassword (ConvertTo-SecureString 'P@ssw0rd123' -AsPlainText -Force) `
    -Enabled $true `


New-ADUser -Name "ps_Arthur Curry" `
    -GivenName "Arthur" `
    -Surname "Curry" `
    -SamAccountName "a.curry" `
    -UserPrincipalName "a.curry@ynovDomaine.com" `
    -Path "OU=ps_Utilisateurs,OU=ps_Aix-en-Provence,OU=ps_Sud,OU=ps_France,OU=ps_ynovGroup,$domainBase" `
    -AccountPassword (ConvertTo-SecureString 'P@ssw0rd123' -AsPlainText -Force) `
    -Enabled $true `


New-ADUser -Name "ps_Hal Jordan" `
    -GivenName "Hal" `
    -Surname "Jordan" `
    -SamAccountName "h.jordan" `
    -UserPrincipalName "h.jordan@ynovDomaine.com" `
    -Path "OU=ps_Utilisateurs,OU=ps_Lille,OU=ps_Nord,OU=ps_France,OU=ps_ynovGroup,$domainBase" `
    -AccountPassword (ConvertTo-SecureString 'P@ssw0rd123' -AsPlainText -Force) `
    -Enabled $true `


New-ADUser -Name "ps_Victor Stone" `
    -GivenName "Victor" `
    -Surname "Stone" `
    -SamAccountName "v.stone" `
    -UserPrincipalName "v.stone@ynovDomaine.com" `
    -Path "OU=ps_Utilisateurs,OU=ps_Casablanca,OU=ps_Internationale,OU=ps_ynovGroup,$domainBase" `
    -AccountPassword (ConvertTo-SecureString 'P@ssw0rd123' -AsPlainText -Force) `
    -Enabled $true `


New-ADUser -Name "ps_Billy Baston" `
    -GivenName "Billy" `
    -Surname "Batson" `
    -SamAccountName "b.batson" `
    -UserPrincipalName "b.batson@ynovDomaine.com" `
    -Path "OU=ps_Utilisateurs,OU=ps_Nice-Sophia,OU=ps_Sud,OU=ps_France,OU=ps_ynovGroup,$domainBase" `
    -AccountPassword (ConvertTo-SecureString 'P@ssw0rd123' -AsPlainText -Force) `
    -Enabled $true `


New-ADUser -Name "ps_J'onn J'onzz" `
    -GivenName "J'onn" `
    -Surname "J'onzz" `
    -SamAccountName "j.jonzz" `
    -UserPrincipalName "j.jonzz@ynovDomaine.com" `
    -Path "OU=ps_Utilisateurs,OU=ps_Paris-Ouest,OU=ps_Paris,OU=ps_France,OU=ps_ynovGroup,$domainBase" `
    -AccountPassword (ConvertTo-SecureString 'P@ssw0rd123' -AsPlainText -Force) `
    -Enabled $true `


New-ADUser -Name "ps_Oliver Queen" `
    -GivenName "Oliver" `
    -Surname "Queen" `
    -SamAccountName "o.queen" `
    -UserPrincipalName "o.queen@ynovDomaine.com" `
    -Path "OU=ps_Utilisateurs,OU=ps_Montpellier,OU=ps_Sud,OU=ps_France,OU=ps_ynovGroup,$domainBase" `
    -AccountPassword (ConvertTo-SecureString 'P@ssw0rd123' -AsPlainText -Force) `
    -Enabled $true `


New-ADUser -Name "ps_Dinah Lance" `
    -GivenName "Dinah" `
    -Surname "Lance" `
    -SamAccountName "d.lance" `
    -UserPrincipalName "d.lance@ynovDomaine.com" `
    -Path "OU=ps_Utilisateurs,OU=ps_Strasbourg,OU=ps_Est,OU=ps_France,OU=ps_ynovGroup,$domainBase" `
    -AccountPassword (ConvertTo-SecureString 'P@ssw0rd123' -AsPlainText -Force) `
    -Enabled $true `
 