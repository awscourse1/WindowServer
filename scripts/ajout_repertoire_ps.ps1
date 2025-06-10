New-Item -Path "C:\Shares\ps_Repertoire_1" -ItemType Directory
New-Item -Path "C:\Shares\ps_Repertoire_2" -ItemType Directory
New-Item -Path "C:\Shares\ps_Repertoire_3" -ItemType Directory
New-Item -Path "C:\Shares\ps_Repertoire_4" -ItemType Directory
New-Item -Path "C:\Shares\ps_Repertoire_5" -ItemType Directory
New-Item -Path "C:\Shares\ps_Repertoire_6" -ItemType Directory
New-Item -Path "C:\Shares\ps_Repertoire_7" -ItemType Directory
New-Item -Path "C:\Shares\ps_Repertoire_8" -ItemType Directory
New-Item -Path "C:\Shares\ps_Repertoire_9" -ItemType Directory
New-Item -Path "C:\Shares\ps_Repertoire_10" -ItemType Directory
New-Item -Path "C:\Shares\ps_Repertoire_11" -ItemType Directory
New-Item -Path "C:\Shares\ps_Repertoire_12" -ItemType Directory
New-Item -Path "C:\Shares\ps_Repertoire_13" -ItemType Directory
New-Item -Path "C:\Shares\ps_Repertoire_14" -ItemType Directory
New-Item -Path "C:\Shares\ps_Repertoire_15" -ItemType Directory
New-Item -Path "C:\Shares\ps_Repertoire_16" -ItemType Directory
New-Item -Path "C:\Shares\ps_Repertoire_17" -ItemType Directory
New-Item -Path "C:\Shares\ps_Repertoire_18" -ItemType Directory
New-Item -Path "C:\Shares\ps_Repertoire_19" -ItemType Directory
New-Item -Path "C:\Shares\ps_Repertoire_20" -ItemType Directory

New-SmbShare -Name "ps_Repertoire_1" -Path "C:\Shares\ps_Repertoire_1" -ReadAccess "YnovNL\Direction,YnovNL\Communication,YnovNL\Service_sociale,YnovNL\Service_enseignant" -ChangeAccess "YnovNL\Technique,YnovNL\Service_Salle" -FullAccess "YnovNL\Commercial,YnovNL\Service_Sport"

