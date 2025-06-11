function Get-ADSummaryReport {
    param (
        [string]$ExportPath = "C:\Projects"
    )

    Import-Module ActiveDirectory

    Write-Host "Retrieving Active Directory information..." -ForegroundColor Cyan

    # Get all domains in the forest
    $domains = (Get-ADForest).Domains
    $allGroups = @()
    $allUsers = @()
    $allOUs = @()

    foreach ($domain in $domains) {
        Write-Host "Processing domain: $domain" -ForegroundColor Yellow

        # Get all users in the domain
        $users = Get-ADUser -Server $domain -Filter * -Properties DisplayName, EmailAddress |
            Select-Object @{Name="Domain";Expression={$domain}}, Name, DisplayName, EmailAddress
        $allUsers += $users

        # Get all groups in the domain
        $groups = Get-ADGroup -Server $domain -Filter * |
            Select-Object @{Name="Domain";Expression={$domain}}, Name, GroupScope, DistinguishedName
        $allGroups += $groups

        # Get all OUs in the domain
        $ous = Get-ADOrganizationalUnit -Server $domain -Filter * |
            Select-Object @{Name="Domain";Expression={$domain}}, Name, DistinguishedName
        $allOUs += $ous
    }

    Write-Host "Summary:" -ForegroundColor Green
    Write-Host "Domains:" $domains
    Write-Host "Total Users:" $allUsers.Count
    Write-Host "Total Groups:" $allGroups.Count
    Write-Host "Total OUs:" $allOUs.Count

    if ($ExportPath -ne "") {
        Write-Host "Exporting to CSV in $ExportPath ..." -ForegroundColor Cyan
        $timestamp = Get-Date -Format "yyyyMMdd_HHmmss"
        $allUsers | Export-Csv "$ExportPath\AD_Users_$timestamp.csv" -NoTypeInformation
        $allGroups | Export-Csv "$ExportPath\AD_Groups_$timestamp.csv" -NoTypeInformation
        $allOUs | Export-Csv "$ExportPath\AD_OUs_$timestamp.csv" -NoTypeInformation
        Write-Host "Export complete." -ForegroundColor Green
    }
}

Get-ADSummaryReport