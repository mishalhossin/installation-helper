# Installation-helper
This repo has batch, powershell and shell code that installs https://github.com/mishalhossin/Discord-AI-Chatbot

### Windows
If use Windows this script assumes that you have `git` and `python`and If you dont then it will use `winget` package manager to install `git` and `python`
if you dont have `winget` look at this [article](https://pureinfotech.com/install-winget-windows-11/)
#### Powershell :
```
iex ((Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/mishalhossin/installation-helper/main/installer.ps1').Content)
```
#### Batch (CMD):
```
powershell -command "Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/mishalhossin/installation-helper/main/installer.bat'))"
```

### Linux
#### Bash :
```
curl -sSfL https://raw.githubusercontent.com/mishalhossin/installation-helper/main/installer.sh | bash
```
