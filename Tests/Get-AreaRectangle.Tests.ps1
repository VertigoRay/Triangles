[IO.DirectoryInfo] $dir = $PSScriptRoot
[IO.DirectoryInfo] $projectRoot = $dir.Parent
Import-Module "$($projectRoot.FullName)\Triangles\Triangles.psm1"

Describe 'Get-AreaRectangle' {
    Context 'Calculate Area of:' {
        It 'Base: 4, Height: 4' {
            Get-AreaRectangle -Base 4 -Height 4 | Should Be 16
        }
        It 'Base: 4.6, Height: 1.25' {
            Get-AreaRectangle -Base 4.6 -Height 1.25 | Should Be 5.75
        }
        It 'Base: 2, Height: 100.1' {
            Get-AreaRectangle -Base 2 -Height 100.1 | Should Be 200.2
        }
    }
}