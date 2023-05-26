# Installation-helper
This repo has batch, powershell and shell code that installs https://github.com/mishalhossin/Discord-AI-Chatbot

### Windows
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
