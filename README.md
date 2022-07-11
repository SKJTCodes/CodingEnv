# Code Edu
A repository to keep notes and general code that can be used for each coding framework.
## Languages
- [X] Python
- [X] Powershell
- [ ] Git
## Pycharm
in Powershell, we can add the bin folder to allow opening pycharm from the terminals
```powershell
$Env:PATH = $Env:PATH+";C:\Program Files\JetBrains\PyCharm Community Edition 2022.1.1\bin"
```
You can also add this path to the env file for persistence.
## Windows
enable open powershell here in right click
```
1. go regedit
2. locate folder 'HKEY_CLASSES_ROOT\Directory\shell'
3. Create folder 'powershellmenu' here.
4. add following value to default:
    - set the value in the 'Value data' box to 'Open PowerShell Here'
5. Click 'OK'
6. in 'powershellmenu' create a new folder called 'command'
7. type the following value into the 'Value data' box.
    - C:\\Windows\\system32\\WindowsPowerShell\\v1.0\\powershell.exe -NoExit -Command Set-Location -LiteralPath '%L'
```