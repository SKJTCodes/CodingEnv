# Recursively remove files
function rem
{
    param ($folder)
    Remove-Item -Recurse -Force $folder
}
# Generate Coding Projects baseline folders
function gproj
{
    param ($projType, $toDir)
    . "$env:EDU\Powershell\gproj.ps1" $projType $toDir
}
# Put project into production and add to github
function pproj
{
    param ($src, $dest)
    . "$env:EDU\Powershell\pproj.ps1" $src $dest
}
# run python script for Password Vault
function pwdman
{
    . "$env:PROD\pwdman\pwdman.ps1" $args
}
function pushall
{
    param ($src)
    . "$env:EDU\Powershell\pushall.ps1" $src
}
# Check folder size
function getsize
{
    param ($getSizeDir)
    Get-ChildItem -force $getSizeDir -ErrorAction SilentlyContinue | Where-Object { $_ -is [io.directoryinfo] } | ForEach-Object {
        $len = 0
        Get-ChildItem -recurse -force $_.fullname -ErrorAction SilentlyContinue | ForEach-Object { $len += $_.length }
        $_.fullname, '{0:N2} GB' -f ($len / 1Gb)
    }
}
# get current date
function getdate
{
    return get-date -format "yyyymmdd-HH-mm-ss"
}
# open pycharm
function charm
{
    param ($folder)
    Push-Location $folder
    $work_dir = Get-Location
    write-host "Pycharm: $work_dir"
    invoke-expression "cmd /c start powershell -Command { pycharm . }"
    Pop-Location
}
# Open powershell folder
function pspf
{
    charm $Env:EDU
}
# open command line in anaconda env
function cenv
{
    & "$Env:CONDA\shell\condabin\conda-hook.ps1"
    conda activate $Env:CONDA
}
# check python env and return python.exe
function pythonPath
{
    $pythonBase = "$Env:PYTHON\python.exe"
    if (-not( $null -eq $Env:VIRTUAL_ENV ))
    {
        $pythonBase = "$Env:VIRTUAL_ENV\Scripts\python.exe"
    }
    if (-not($null -eq $Env:CONDA_PREFIX)) {
        $pythonBase = "$Env:CONDA_PREFIX\python.exe"
    }

    $logPython = $( & $pythonBase -c "import sys; print(sys.prefix)" )
    write-host "Using Python Env: $logPython `n"
    return $pythonBase
}
# open command line in python env (USE PIP)
function pip
{
    $pypath = pythonPath
    & $pypath -m pip $args
}
# run python command
function python
{
    param(
        $pythonFile,
        $fileArgs
    )
    $pypath = pythonPath
    & $pypath $pythonFile @fileArgs
}
# activate conda env in powershell
function actconda
{
    # region conda initialize
    # !! Contents within this block are managed by 'conda init' !!
    (& "C:\Anaconda3\Scripts\conda.exe" "shell.powershell" "hook") | Out-String | Invoke-Expression
    #endregion
}