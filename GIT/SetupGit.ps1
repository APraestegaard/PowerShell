Set-Location -Path 'C:\Git\apraestegaard@GitHub'

$gitIgnore = New-Item -Name .gitignore

@'
*.psproj
*.psbuild
*.psprojs
*.RestorePoint.ps1
*.TempPoint.ps1
*.trash
/Staging
*.pss
'@ | Out-File $gitIgnore