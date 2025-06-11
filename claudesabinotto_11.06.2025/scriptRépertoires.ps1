# Création des 20 répertoires
for ($i=1; $i -le 20; $i++) {
    New-Item -Path "C:\Shares\ps_Repertoire_$i" -ItemType Directory -Force
}

# Répertoire 1
New-SmbShare -Name "ps_Repertoire_1" -Path "C:\Shares\ps_Repertoire_1" `
    -ReadAccess "YNOVDOMAINE\ps_Direction" `
    -FullAccess "YNOVDOMAINE\ps_Commercial" `
    -ChangeAccess "YNOVDOMAINE\ps_Technique","YNOVDOMAINE\ps_Service salle"

# Répertoire 2
New-SmbShare -Name "ps_Repertoire_2" -Path "C:\Shares\ps_Repertoire_2" `
    -ReadAccess "YNOVDOMAINE\ps_Direction","YNOVDOMAINE\ps_Technique","YNOVDOMAINE\ps_Communication","YNOVDOMAINE\ps_Service sociale","YNOVDOMAINE\ps_Service Enseignant","YNOVDOMAINE\ps_Service sport" `
    -ChangeAccess "YNOVDOMAINE\ps_Réfectoire","YNOVDOMAINE\ps_Service salle"

# Répertoire 3
New-SmbShare -Name "ps_Repertoire_3" -Path "C:\Shares\ps_Repertoire_3" `
    -ReadAccess "YNOVDOMAINE\ps_Comptabilité","YNOVDOMAINE\ps_Commercial","YNOVDOMAINE\ps_Service sport","YNOVDOMAINE\ps_Service Enseignant","YNOVDOMAINE\ps_Technique" `
    -ChangeAccess "YNOVDOMAINE\ps_Technique","YNOVDOMAINE\ps_Communication","YNOVDOMAINE\ps_Service Enseignant","YNOVDOMAINE\ps_Réfectoire","YNOVDOMAINE\ps_Service salle" `
    -FullAccess "YNOVDOMAINE\ps_Direction","YNOVDOMAINE\ps_Service sociale"

# Répertoire 4
New-SmbShare -Name "ps_Repertoire_4" -Path "C:\Shares\ps_Repertoire_4" `
    -ReadAccess "YNOVDOMAINE\ps_Comptabilité","YNOVDOMAINE\ps_Service Enseignant","YNOVDOMAINE\ps_Réfectoire" `
    -ChangeAccess "YNOVDOMAINE\ps_Service salle","YNOVDOMAINE\ps_Service sport","YNOVDOMAINE\ps_Commercial" `
    -FullAccess "YNOVDOMAINE\ps_Direction"

# Répertoire 5
New-SmbShare -Name "ps_Repertoire_5" -Path "C:\Shares\ps_Repertoire_5" `
    -ReadAccess "YNOVDOMAINE\ps_Direction","YNOVDOMAINE\ps_Commercial","YNOVDOMAINE\ps_Communication","YNOVDOMAINE\ps_Service Enseignant","YNOVDOMAINE\ps_Service sport" `
    -ChangeAccess "YNOVDOMAINE\ps_Service sociale","YNOVDOMAINE\ps_Réfectoire","YNOVDOMAINE\ps_Service salle" `
    -FullAccess "YNOVDOMAINE\ps_Comptabilité"

# Répertoire 6
New-SmbShare -Name "ps_Repertoire_6" -Path "C:\Shares\ps_Repertoire_6" `
    -ReadAccess "YNOVDOMAINE\ps_Service Enseignant","YNOVDOMAINE\ps_Réfectoire" `
    -ChangeAccess "YNOVDOMAINE\ps_Communication","YNOVDOMAINE\ps_Service salle","YNOVDOMAINE\ps_Service sport" `
    -FullAccess "YNOVDOMAINE\ps_Comptabilité"

# Répertoire 7
New-SmbShare -Name "ps_Repertoire_7" -Path "C:\Shares\ps_Repertoire_7" `
    -ReadAccess "YNOVDOMAINE\ps_Direction" `
    -ChangeAccess "YNOVDOMAINE\ps_Technique","YNOVDOMAINE\ps_Communication","YNOVDOMAINE\ps_Service Enseignant" `
    -FullAccess ""

# Répertoire 8
New-SmbShare -Name "ps_Repertoire_8" -Path "C:\Shares\ps_Repertoire_8" `
    -ReadAccess "YNOVDOMAINE\ps_Comptabilité","YNOVDOMAINE\ps_Commercial","YNOVDOMAINE\ps_Réfectoire","YNOVDOMAINE\ps_Service salle","YNOVDOMAINE\ps_Service sport" `
    -FullAccess "YNOVDOMAINE\ps_Direction","YNOVDOMAINE\ps_Communication","YNOVDOMAINE\ps_Service sociale","YNOVDOMAINE\ps_Service Enseignant"

# Répertoire 9
New-SmbShare -Name "ps_Repertoire_9" -Path "C:\Shares\ps_Repertoire_9" `
    -ReadAccess "YNOVDOMAINE\ps_Technique","YNOVDOMAINE\ps_Communication","YNOVDOMAINE\ps_Service sport" `
    -ChangeAccess "YNOVDOMAINE\ps_Commercial","YNOVDOMAINE\ps_Service sociale","YNOVDOMAINE\ps_Réfectoire","YNOVDOMAINE\ps_Service salle" `
    -FullAccess "YNOVDOMAINE\ps_Service Enseignant","YNOVDOMAINE\ps_Comptabilité"

# Répertoire 10
New-SmbShare -Name "ps_Repertoire_10" -Path "C:\Shares\ps_Repertoire_10" `
    -ReadAccess "YNOVDOMAINE\ps_Direction","YNOVDOMAINE\ps_Service salle","YNOVDOMAINE\ps_Service sport" `
    -ChangeAccess "YNOVDOMAINE\ps_Technique","YNOVDOMAINE\ps_Service sociale","YNOVDOMAINE\ps_Service Enseignant","YNOVDOMAINE\ps_Réfectoire" `
    -FullAccess "YNOVDOMAINE\ps_Comptabilité","YNOVDOMAINE\ps_Commercial","YNOVDOMAINE\ps_Communication"

# Répertoire 11
New-SmbShare -Name "ps_Repertoire_11" -Path "C:\Shares\ps_Repertoire_11" `
    -ReadAccess "YNOVDOMAINE\ps_Direction","YNOVDOMAINE\ps_Service sociale","YNOVDOMAINE\ps_Service sport" `
    -ChangeAccess "YNOVDOMAINE\ps_Comptabilité","YNOVDOMAINE\ps_Technique","YNOVDOMAINE\ps_Service Enseignant","YNOVDOMAINE\ps_Service salle" `
    -FullAccess "YNOVDOMAINE\ps_Réfectoire"

# Répertoire 12
New-SmbShare -Name "ps_Repertoire_12" -Path "C:\Shares\ps_Repertoire_12" `
    -ReadAccess "YNOVDOMAINE\ps_Comptabilité","YNOVDOMAINE\ps_Réfectoire" `
    -ChangeAccess "YNOVDOMAINE\ps_Communication","YNOVDOMAINE\ps_Service sport" `
    -FullAccess "YNOVDOMAINE\ps_Direction"

# Répertoire 13
New-SmbShare -Name "ps_Repertoire_13" -Path "C:\Shares\ps_Repertoire_13" `
    -ReadAccess "YNOVDOMAINE\ps_Commercial","YNOVDOMAINE\ps_Technique","YNOVDOMAINE\ps_Service salle" `
    -ChangeAccess "YNOVDOMAINE\ps_Communication","YNOVDOMAINE\ps_Service sociale","YNOVDOMAINE\ps_Service sport" `
    -FullAccess ""

# Répertoire 14
New-SmbShare -Name "ps_Repertoire_14" -Path "C:\Shares\ps_Repertoire_14" `
    -ReadAccess "YNOVDOMAINE\ps_Comptabilité","YNOVDOMAINE\ps_Service sociale","YNOVDOMAINE\ps_Service salle" `
    -ChangeAccess "YNOVDOMAINE\ps_Direction","YNOVDOMAINE\ps_Technique","YNOVDOMAINE\ps_Service Enseignant","YNOVDOMAINE\ps_Service salle" `
    -FullAccess "YNOVDOMAINE\ps_Réfectoire"

# Répertoire 15
New-SmbShare -Name "ps_Repertoire_15" -Path "C:\Shares\ps_Repertoire_15" `
    -ReadAccess "YNOVDOMAINE\ps_Comptabilité","YNOVDOMAINE\ps_Technique","YNOVDOMAINE\ps_Communication","YNOVDOMAINE\ps_Service sociale","YNOVDOMAINE\ps_Service salle" `
    -ChangeAccess "YNOVDOMAINE\ps_Commercial","YNOVDOMAINE\ps_Service Enseignant","YNOVDOMAINE\ps_Réfectoire" `
    -FullAccess ""

# Répertoire 16
New-SmbShare -Name "ps_Repertoire_16" -Path "C:\Shares\ps_Repertoire_16" `
    -ReadAccess "YNOVDOMAINE\ps_Comptabilité","YNOVDOMAINE\ps_Service sociale","YNOVDOMAINE\ps_Service Salle" `
    -ChangeAccess "YNOVDOMAINE\ps_Technique","YNOVDOMAINE\ps_Service Enseignant" `
    -FullAccess "YNOVDOMAINE\ps_Réfectoire","YNOVDOMAINE\ps_Service sport"

# Répertoire 17
New-SmbShare -Name "ps_Repertoire_17" -Path "C:\Shares\ps_Repertoire_17" `
    -ReadAccess "YNOVDOMAINE\ps_Direction","YNOVDOMAINE\ps_Commercial","YNOVDOMAINE\ps_Technique" `
    -ChangeAccess "YNOVDOMAINE\ps_Communication","YNOVDOMAINE\ps_Service Enseignant","YNOVDOMAINE\ps_Service Sport" `
    -FullAccess "YNOVDOMAINE\ps_Réfectoire"

# Répertoire 18
New-SmbShare -Name "ps_Repertoire_18" -Path "C:\Shares\ps_Repertoire_18" `
    -ReadAccess "YNOVDOMAINE\ps_Commercial","YNOVDOMAINE\ps_Communication","YNOVDOMAINE\ps_Service sociale" `
    -ChangeAccess "YNOVDOMAINE\ps_Technique","YNOVDOMAINE\ps_Service Enseignant","YNOVDOMAINE\ps_Service sport","YNOVDOMAINE\ps_Réfectoire" `
    -FullAccess "YNOVDOMAINE\ps_Direction","YNOVDOMAINE\ps_Comptabilité","YNOVDOMAINE\ps_Service salle"

# Répertoire 19
New-SmbShare -Name "ps_Repertoire_19" -Path "C:\Shares\ps_Repertoire_19" `
    -ReadAccess "YNOVDOMAINE\ps_Service sociale","YNOVDOMAINE\ps_Service Enseignant" `
    -ChangeAccess "YNOVDOMAINE\ps_Direction","YNOVDOMAINE\ps_Comptabilité","YNOVDOMAINE\ps_Service sport","YNOVDOMAINE\ps_Réfectoire" `
    -FullAccess "YNOVDOMAINE\ps_Commercial","YNOVDOMAINE\ps_Technique","YNOVDOMAINE\ps_Communication","YNOVDOMAINE\ps_Service salle"

# Répertoire 20
New-SmbShare -Name "ps_Repertoire_20" -Path "C:\Shares\ps_Repertoire_20" `
    -ReadAccess "YNOVDOMAINE\ps_Commercial","YNOVDOMAINE\ps_Service sociale" `
    -ChangeAccess "YNOVDOMAINE\ps_Direction","YNOVDOMAINE\ps_Technique","YNOVDOMAINE\ps_Service Enseignant","YNOVDOMAINE\ps_Service Sport" `
    -FullAccess "YNOVDOMAINE\ps_Comptabilité","YNOVDOMAINE\ps_Communication","YNOVDOMAINE\ps_Réfectoire","YNOVDOMAINE\ps_Service Salle"
