param ($src, $dest)

if (-not(Test-Path -Path $src))
{
    throw "File not Found. $src"
}

$prjName = (get-item $src).name


if (-not(Test-Path -Path $dest))
{
    mkdir $dest
}
git clone $Env:LOCALREPO\$prjName.git $dest

# go to local repository and push repo to github
Push-Location $Env:LOCALREPO\$prjName.git

gh repo create $prjName --public
git remote add github https://github.com/SKJTCodes/$prjName.git
git push github master

Pop-Location

# go to production code and create prod branch
Push-Location $dest
git checkout master
Pop-Location



