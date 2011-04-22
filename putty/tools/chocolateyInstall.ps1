try {
  Get-ChildItem 'C:\NuGet\chocolateyInstall\helpers' -Filter *.psm1 | ForEach-Object { import-module -name  $_.FullName }
  Install-ChocolateyPackage 'putty' 'exe' '/silent' 'http://the.earth.li/~sgtatham/putty/latest/x86/putty-0.60-installer.exe' 'http://the.earth.li/~sgtatham/putty/latest/x86/putty-0.60-installer.exe' 
  #"/s /S /q /Q /quiet /silent /SILENT /VERYSILENT" # try any of these to get the silent installer
  #msi is always /quiet

#------- ADDITIONAL SETUP -------#

} catch {
  Start-Sleep 10
}