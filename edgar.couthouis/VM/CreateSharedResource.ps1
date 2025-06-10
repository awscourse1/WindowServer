New-ADOrganizationalUnit -Name:"FINANCE" -Path:"DC=YnovDomain,DC=Com" -ProtectedFromAccidentalDeletion:$false -Server:"Demo-windows-server.YnovDomain.com"


## command use to create shared resources

New-Item -Path "C:\Projects" -ItemType Directory -Force
$acl = Get-Acl "C:\Projects"
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule("Computers", "Modify", "ContainerInherit,ObjectInherit", "None", "Allow")
$acl.AddAccessRule($rule)
Set-Acl "C:\Shares\Projects" $acl
New-SmbShare -Name "ComputeProjects" -Path "C:\Projects" -ChangeAccess "Computers"