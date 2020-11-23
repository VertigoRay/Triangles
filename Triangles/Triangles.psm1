<#
.SYNOPSIS
    This is the main scaffolding that glues all the pieces together.
#>
$private = @(Get-ChildItem -Path "${PSScriptRoot}\Private\*.ps1" -ErrorAction SilentlyContinue)
$public = @(Get-ChildItem -Path "${PSScriptRoot}\Public\*.ps1" -ErrorAction SilentlyContinue)

foreach ($import in @($private + $public)) {
    try {
        . $import.FullName
    } catch {
        Write-Warning "Failed to import function $($import.BaseName): $_"
    }
}

Export-ModuleMember -Function $public.BaseName