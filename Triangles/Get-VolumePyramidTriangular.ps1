. "$PSScriptRoot\Get-AreaTriangle.ps1"
. "$PSScriptRoot\Get-AreaRectangle.ps1"

<#
.SYNOPSIS
    Calculate the volume of a pyramid.
.DESCRIPTION
    Calculate the volume of a pyramid given base and height of the base, and height of the pyramid.
.NOTES
    V=1/3Ah
#>
function Get-VolumePyramid {
    [CmdletBinding(DefaultParameterSetName = 'RectangularBase')]
    [OutputType([double])]
    param (
        [Parameter(Mandatory = $true, ParameterSetName = 'RectangularBase')]
        [Parameter(Mandatory = $true, ParameterSetName = 'TriangularBase')]
        [double]
        $BaseWidth,
        
        [Parameter(Mandatory = $true, ParameterSetName = 'RectangularBase')]
        [Parameter(Mandatory = $true, ParameterSetName = 'TriangularBase')]
        [double]
        $BaseHeight,
        
        [Parameter(Mandatory = $true, ParameterSetName = 'RectangularBase')]
        [Parameter(Mandatory = $true, ParameterSetName = 'TriangularBase')]
        [double]
        $Height,
        
        [Parameter(ParameterSetName = 'RectangularBase')]
        [switch]
        $RectangularBase,
        
        [Parameter(Mandatory = $true, ParameterSetName = 'TriangularBase')]
        [switch]
        $TriangularBase
    )

    if ($PSCmdlet.ParameterSetName -eq 'TriangularBase') {
        $area = Get-AreaTriangle -Base $BaseWidth -Height $BaseHeight
    } else {
        $area = Get-AreaRectangle -Base $BaseWidth -Height $BaseHeight
    }


    return ((1/3) * $area * $Height)
}