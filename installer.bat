@echo off

REM Welcome message with ASCII art
echo Welcome to the Discord AI Chatbot installation script!
echo.
echo   █ █▄░█ █▀ ▀█▀ ▄▀█ █░░ █░░ █▀▀ █▀█
echo   █ █░▀█ ▄█ ░█░ █▀█ █▄▄ █▄▄ ██▄ █▀▄
echo.
echo This script will guide you through the installation process.
echo.

REM Check if Git is installed
echo Checking Git installation...
git --version > nul 2>&1
if %errorlevel% neq 0 (
    echo Git is not installed. Installing...
    winget install -e --id Git.Git
    echo Git installed!
) else (
    echo Git is already installed.
)
echo.

REM Check if Python is installed
echo Checking Python installation...
python --version > nul 2>&1
if %errorlevel% neq 0 (
    echo Python is not installed. Installing...
    winget install -e --id Python.Python.3.11
    echo Python installed!
) else (
    echo Python is already installed.
)
echo.

REM Clone the repository
echo Cloning the Discord AI Chatbot repository...
git clone https://github.com/mishalhossin/Discord-AI-Chatbot
echo Cloning complete!
echo.

REM Change directory to the cloned repository
echo Changing directory to Discord-AI-Chatbot...
cd Discord-AI-Chatbot
echo Directory changed!
echo.

REM Prompt user for Discord bot token
echo Please provide your Discord bot token.
set /p discord_token=Discord Bot Token: 
echo.

REM Prompt user for Hugging Face access token
echo Please provide your Hugging Face access token.
set /p hf_access_token=Hugging Face Access Token: 
echo.

REM Create .env file with Discord bot token and Hugging Face access token
echo Creating .env file...
echo HUGGING_FACE_API=%hf_access_token% > .env
echo DISCORD_TOKEN=%discord_token% >> .env
echo .env file created!
echo.

REM Run the bot
echo Running the Discord AI Chatbot...
python main.py
