Write-Output "Called $PSCommandPath ..."
Write-Output ""

$Env:EDU = "D:\Code_Edu"
$Env:PYWD = "C:\Users\shawn\PycharmProjects"
$Env:CONDA = "C:\Anaconda3"
$Env:PYTHON = "C:\Python39"
$Env:LOCALREPO = "D:\repo"
$Env:PROD = "D:\prod"

. $Env:EDU\Powershell\profile.ps1