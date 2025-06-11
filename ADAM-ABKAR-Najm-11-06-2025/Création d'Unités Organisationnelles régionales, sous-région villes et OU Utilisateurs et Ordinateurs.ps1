New-ADOrganizationalUnit -Name "ynovGroup" -Path "DC=ynov,DC=local" -ProtectedFromAccidentalDeletion $false

New-ADOrganizationalUnit -Name "France" -Path "OU=ynovGroup,DC=ynov,DC=local"
New-ADOrganizationalUnit -Name "Internationale" -Path "OU=ynovGroup,DC=ynov,DC=local"  

$frenchRegions = @("Est", "Nord", "Ouest", "Sud", "Paris")
foreach ($region in $frenchRegions) {
    New-ADOrganizationalUnit -Name $region -Path "OU=France,OU=ynovGroup,DC=ynov,DC=local"
}

New-ADOrganizationalUnit -Name "Paris-Est" -Path "OU=Paris,OU=France,OU=ynovGroup,DC=ynov,DC=local"
New-ADOrganizationalUnit -Name "Paris-Ouest" -Path "OU=Paris,OU=France,OU=ynovGroup,DC=ynov,DC=local"

$cities = @(
    @{Name="Lyon"; Region="Est"},
    @{Name="Strasbourg"; Region="Est"},
    @{Name="Lille"; Region="Nord"},
    @{Name="Rouen"; Region="Nord"},
    @{Name="Bordeaux"; Region="Ouest"},
    @{Name="Nantes"; Region="Ouest"},
    @{Name="Rennes"; Region="Ouest"},
    @{Name="Aix-en-Provence"; Region="Sud"},
    @{Name="Montpellier"; Region="Sud"},
    @{Name="Nice-Sophia"; Region="Sud"},
    @{Name="Toulouse"; Region="Sud"},
    @{Name="Casablanca"; Region="Internationale"}
)

foreach ($city in $cities) {
    $cityPath = "OU=$($city.Region),OU=France,OU=ynovGroup,DC=ynov,DC=local"
    if ($city.Region -eq "Internationale") {
        $cityPath = "OU=Internationale,OU=ynovGroup,DC=ynov,DC=local"
    }
    
    New-ADOrganizationalUnit -Name $city.Name -Path $cityPath
    
    New-ADOrganizationalUnit -Name "Utilisateurs" -Path "OU=$($city.Name),$cityPath"
    New-ADOrganizationalUnit -Name "Ordinateurs" -Path "OU=$($city.Name),$cityPath"
}

New-ADOrganizationalUnit -Name "Utilisateurs" -Path "OU=Paris-Est,OU=Paris,OU=France,OU=ynovGroup,DC=ynov,DC=local"
New-ADOrganizationalUnit -Name "Ordinateurs" -Path "OU=Paris-Est,OU=Paris,OU=France,OU=ynovGroup,DC=ynov,DC=local"
New-ADOrganizationalUnit -Name "Utilisateurs" -Path "OU=Paris-Ouest,OU=Paris,OU=France,OU=ynovGroup,DC=ynov,DC=local"
New-ADOrganizationalUnit -Name "Ordinateurs" -Path "OU=Paris-Ouest,OU=Paris,OU=France,OU=ynovGroup,DC=ynov,DC=local"
