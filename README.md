# Installation Helper

This repository contains batch, PowerShell, and shell code that installs the [Discord-AI-Chatbot](https://github.com/mishalhossin/Discord-AI-Chatbot) project.

## Windows
If you are using Windows, the installation script assumes that you have `git` and `python` installed. If they are not present, the script will use the `winget` package manager to install them. If you don't have `winget` installed, you can refer to this [article](https://pureinfotech.com/install-winget-windows-11/) for instructions on how to install it.

#### Batch (CMD) :
```batch
powershell -command "Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/mishalhossin/installation-helper/main/installer.bat'))"
```
#### Powershell :
```powershell
iex ((Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/mishalhossin/installation-helper/main/installer.ps1').Content)
```
## Linux
#### bash :
```bash
curl -sSfL https://raw.githubusercontent.com/mishalhossin/installation-helper/main/installer.sh | bash
```
## Replit
Replit dosent work with auto installer :(
