[IO.DirectoryInfo] $dir = $PSScriptRoot
[IO.DirectoryInfo] $projectRoot = $dir.Parent
Import-Module "$($projectRoot.FullName)\Triangles\Triangles.psm1"

Describe 'Get-AreaTriangle' {
    Context 'Calculate Area of:' {
        It 'Base: 4, Height: 4' {
            Get-AreaTriangle -Base 4 -Height 4 | Should Be 8
        }
        It 'Base: 4.6, Height: 1.25' {
            Get-AreaTriangle -Base 4.6 -Height 1.25 | Should Be 2.875
        }
        It 'Base: 2, Height: 100.1' {
            Get-AreaTriangle -Base 2 -Height 100.1 | Should Be 100.1
        }
    }
}