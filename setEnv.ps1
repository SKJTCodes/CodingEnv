Write-Output "Called $PSCommandPath ..."
Write-Output ""
Write-Output "gproj - Create projects. param: [projType, dst]"
Write-Output "pproj - Put project into production. param: [src, dst]"
Write-Output "pwdman - Check Creds. param: [--mode {view, add}]"
Write-Output "actconda - activate conda env in powershell"
Write-Output "guide - Open guide with Chrome. param: [guideType]"
Write-Output ""


$Env:EDU = "D:\Env"
$Env:PYWD = "C:\Users\shawn\PycharmProjects"
$Env:CONDA = "C:\Anaconda3"
$Env:PYTHON = "C:\Python39"
$Env:LOCALREPO = "D:\repo"
$Env:PROD = "D:\prod"

. $Env:EDU\Powershell\profile.ps1