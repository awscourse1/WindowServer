$acl = Get-Acl "D:\Partages\Repertoire_1"
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Direction","ReadAndExecute","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Commercial","FullControl","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Technique","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Communication","ReadAndExecute","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service sociale","ReadAndExecute","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service Salle","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service Sport","FullControl","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
Set-Acl -Path "D:\Partages\Repertoire_1" -AclObject $acl

$acl = Get-Acl "D:\Partages\Repertoire_2"
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Direction","ReadAndExecute","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Communication","ReadAndExecute","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service Salle","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service Sport","ReadAndExecute","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
Set-Acl -Path "D:\Partages\Repertoire_2" -AclObject $acl

$acl = Get-Acl "D:\Partages\Repertoire_3"
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Direction","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Comptabilité","ReadAndExecute","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Technique","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Communication","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service sociale","FullControl","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service enseignant","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
Set-Acl -Path "D:\Partages\Repertoire_3" -AclObject $ac

$acl = Get-Acl "D:\Partages\Repertoire_4"
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Direction","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Commercial","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Réfectoire","ReadAndExecute","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service Sport","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
Set-Acl -Path "D:\Partages\Repertoire_4" -AclObject $acl

$acl = Get-Acl "D:\Partages\Repertoire_5"
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Direction","ReadAndExecute","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Comptabilité","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Communication","ReadAndExecute","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service sociale","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service enseignant","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service Salle","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
Set-Acl -Path "D:\Partages\Repertoire_5" -AclObject $acl

$acl = Get-Acl "D:\Partages\Repertoire_6"
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Comptabilité","FullControl","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Communication","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Réfectoire","ReadAndExecute","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service Salle","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service Sport","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
Set-Acl -Path "D:\Partages\Repertoire_6" -AclObject $acl

$acl = Get-Acl "D:\Partages\Repertoire_7"
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Direction","ReadAndExecute","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Comptabilité","ReadAndExecute","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Technique","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Communication","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Réfectoire","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service Salle","ReadAndExecute","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
Set-Acl -Path "D:\Partages\Repertoire_7" -AclObject $acl

$acl = Get-Acl "D:\Partages\Repertoire_8"
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Direction","FullControl","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Communication","FullControl","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service enseignant","FullControl","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service Sport","ReadAndExecute","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
Set-Acl -Path "D:\Partages\Repertoire_8" -AclObject $acl

$acl = Get-Acl "D:\Partages\Repertoire_9"
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Comptabilité","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Commercial","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Communication","ReadAndExecute","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service sociale","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service enseignant","FullControl","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service Sport","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
Set-Acl -Path "D:\Partages\Repertoire_9" -AclObject $acl

$acl = Get-Acl "D:\Partages\Repertoire_10"
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Comptabilité","FullControl","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Commercial","FullControl","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Communication","FullControl","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service sociale","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service enseignant","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service Salle","ReadAndExecute","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service Sport","ReadAndExecute","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
Set-Acl -Path "D:\Partages\Repertoire_10" -AclObject $acl

$acl = Get-Acl "D:\Partages\Repertoire_11"
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Comptabilité","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Commercial","ReadAndExecute","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service sociale","ReadAndExecute","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service Salle","ReadAndExecute","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
Set-Acl -Path "D:\Partages\Repertoire_11" -AclObject $acl

$acl = Get-Acl "D:\Partages\Repertoire_12"
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Direction","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Communication","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
Set-Acl -Path "D:\Partages\Repertoire_12" -AclObject $acl

$acl = Get-Acl "D:\Partages\Repertoire_13"
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Commercial","ReadAndExecute","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Communication","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service sociale","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service Sport","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
Set-Acl -Path "D:\Partages\Repertoire_13" -AclObject $acl

$acl = Get-Acl "D:\Partages\Repertoire_14"
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Direction","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Technique","ReadAndExecute","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service enseignant","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Réfectoire","FullControl","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service Salle","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
Set-Acl -Path "D:\Partages\Repertoire_14" -AclObject $acl

$acl = Get-Acl "D:\Partages\Repertoire_15"
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service sociale","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service Sport","ReadAndExecute","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
Set-Acl -Path "D:\Partages\Repertoire_15" -AclObject $acl

$acl = Get-Acl "D:\Partages\Repertoire_16"
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Comptabilité","ReadAndExecute","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service Salle","ReadAndExecute","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service Sport","FullControl","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
Set-Acl -Path "D:\Partages\Repertoire_16" -AclObject $acl

$acl = Get-Acl "D:\Partages\Repertoire_17"
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service Salle","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service Sport","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
Set-Acl -Path "D:\Partages\Repertoire_17" -AclObject $acl

$acl = Get-Acl "D:\Partages\Repertoire_18"
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Communication","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
Set-Acl -Path "D:\Partages\Repertoire_18" -AclObject $acl

$acl = Get-Acl "D:\Partages\Repertoire_19"
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Comptabilité","ReadAndExecute","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Communication","ReadAndExecute","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service sociale","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service Salle","Modify","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service Sport","ReadAndExecute","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
Set-Acl -Path "D:\Partages\Repertoire_19" -AclObject $acl

$acl = Get-Acl "D:\Partages\Repertoire_20"
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Communication","ReadAndExecute","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Service Sport","FullControl","ContainerInherit,ObjectInherit","None","Allow")
$acl.AddAccessRule($rule)
Set-Acl -Path "D:\Partages\Repertoire_20" -AclObject $acl
