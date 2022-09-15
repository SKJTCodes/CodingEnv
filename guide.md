# Python Guide
A python tutorial/Notes file
## Create virtual Env (PIP)
```powershell
# install virtualenv cmd
python -m pip install --upgrade pip
pip install virtualenv
# create virtual env
virtualenv <env_name> -p <path_to_python.exe>
# activate venv
.\<env_path>\Scripts\activate
```
## Create requirements.txt
```powershell
# Sometimes you come across pip freeze, but this saves all packages in the environment including those that you don't use in your current project.
pip install pipreqs
pipreqs --encoding=utf8 C:\Users\root\Desktop\resumes
```
## Install library using requirements.txt
```powershell
pip install -r requirements.txt
```