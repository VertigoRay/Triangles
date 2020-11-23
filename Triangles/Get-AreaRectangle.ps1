function Get-AreaRectangle {
    [CmdletBinding()]
    [OutputType([double])]
    param (
        [Parameter(Mandatory = $true)]
        [double]
        $Base,
        
        [Parameter(Mandatory = $true)]
        [double]
        $Height
    )

    return ($Base * $Height)
}