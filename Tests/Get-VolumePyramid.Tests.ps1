[IO.DirectoryInfo] $dir = $PSScriptRoot
[IO.DirectoryInfo] $projectRoot = $dir.Parent
. "${projectRoot}\Triangles\Public\Get-AreaRectangle.ps1"
. "${projectRoot}\Triangles\Public\Get-AreaTriangle.ps1"
. "${projectRoot}\Triangles\Public\Get-VolumePyramid.ps1"

Describe 'Get-VolumePyramid' {
    Context 'Calculate Volume of Rectangular Pyramid:' {
        It 'BaseWidth: 4, BaseHeight: 4, Height: 4' {
            [math]::Round((Get-VolumePyramid -BaseWidth 4 -BaseHeight 4 -Height 4), 10) | Should Be 21.3333333333
        }
        It 'BaseWidth: 4.6, BaseHeight: 1.25, Height: 7.8' {
            [math]::Round((Get-VolumePyramid -BaseWidth 4.6 -BaseHeight 1.25 -Height 7.8), 10) | Should Be 14.95
        }
        It 'BaseWidth: 2, BaseHeight: 100.1, Height: 5' {
            [math]::Round((Get-VolumePyramid -BaseWidth 2 -BaseHeight 100.1 -Height 5), 10) | Should Be 333.6666666667
        }
    }
    Context 'Calculate Volume of Rectangular Pyramid (w Switch):' {
        It 'BaseWidth: 4, BaseHeight: 4, Height: 4' {
            [math]::Round((Get-VolumePyramid -BaseWidth 4 -BaseHeight 4 -Height 4 -RectangularBase), 10) | Should Be 21.3333333333
        }
        It 'BaseWidth: 4.6, BaseHeight: 1.25, Height: 7.8' {
            [math]::Round((Get-VolumePyramid -BaseWidth 4.6 -BaseHeight 1.25 -Height 7.8 -RectangularBase), 10) | Should Be 14.95
        }
        It 'BaseWidth: 2, BaseHeight: 100.1, Height: 5' {
            [math]::Round((Get-VolumePyramid -BaseWidth 2 -BaseHeight 100.1 -Height 5 -RectangularBase), 10) | Should Be 333.6666666667
        }
    }
    Context 'Calculate Volume of Triangular Pyramid:' {
        It 'BaseWidth: 4, BaseHeight: 4, Height: 4' {
            [math]::Round((Get-VolumePyramid -BaseWidth 4 -BaseHeight 4 -Height 4 -TriangularBase), 10) | Should Be 10.6666666667
        }
        It 'BaseWidth: 4.6, BaseHeight: 1.25, Height: 7.8' {
            [math]::Round((Get-VolumePyramid -BaseWidth 4.6 -BaseHeight 1.25 -Height 7.8 -TriangularBase), 10) | Should Be 7.475
        }
        It 'BaseWidth: 2, BaseHeight: 100.1, Height: 5' {
            [math]::Round((Get-VolumePyramid -BaseWidth 2 -BaseHeight 100.1 -Height 5 -TriangularBase), 10) | Should Be 166.8333333333
        }
    }
}