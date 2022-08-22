Param
(    
    $repoListFile = "apps-repolist-mapper.json", `
    $label = "ManifestUpdates" `
)

try{
    Write-Host "START : Reading repo list"
    $repoList = $(Get-Content $repoListFile | ConvertFrom-JSON).PSObject.Properties
    Write-Host "Current repo list with harness folder : " $repoList
    Write-Host "END : Retrived repo list"
}
catch {
    $errormsg = "Failure: Failed to retrieve repo list at: $repoListFile"
    Write-Host  $errormsg -ForegroundColor red
    exit 1
}
