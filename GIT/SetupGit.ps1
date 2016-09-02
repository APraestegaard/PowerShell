Function Select-FileDirectory
{
  param(
    [string]$Description ='Select Folder',
    [string]$RootFolder = 'Desktop'
  )

  $null = [System.Reflection.Assembly]::LoadWithPartialName('System.windows.forms')

  $objForm = New-Object System.Windows.Forms.FolderBrowserDialog
  $objForm.Rootfolder = $RootFolder
  $objForm.Description = $Description

  if ($objForm.ShowDialog() -eq [System.Windows.Forms.DialogResult]::OK)  {
    $objForm.SelectedPath
  }
}

Set-Location -Path (Select-FileDirectory)

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