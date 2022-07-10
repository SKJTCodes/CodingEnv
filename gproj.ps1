param ($projType, $toDir)

# set path for project type
$pType = ""
if ($projType -eq "python")
{
    $pType = "Python"
}
else
{
    throw "invalid projType"
}

# copy file from fromDir to toDir
copy-item -force -recurse -verbose "$Env:EDU\$pType\framework" -destination $toDir

$projName = (get-item $toDir).name

# create local repository
Push-Location $Env:LOCALREPO
git init --bare "$projName.git"
Pop-Location

# go into new project folder and create a git repo for it
Push-Location $toDir
# Create a git repo
git init
git remote add local $Env:LOCALREPO\$projName.git
git add .
git commit -m "Initial Commit"
git push local

git checkout -b dev
git push local
Pop-Location


