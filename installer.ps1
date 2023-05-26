# Welcome message with ASCII art
Write-Host "Welcome to the Discord AI Chatbot installation script!"
Write-Host ""
Write-Host "  █ █▄░█ █▀ ▀█▀ ▄▀█ █░░ █░░ █▀▀ █▀█"
Write-Host "  █ █░▀█ ▄█ ░█░ █▀█ █▄▄ █▄▄ ██▄ █▀▄"
Write-Host ""
Write-Host "This script will guide you through the installation process."
Write-Host ""

# Check if Git is installed
Write-Host "Checking Git installation..."
if (!(Test-Path (Get-Command git -ErrorAction SilentlyContinue).Source)) {
    Write-Host "Git is not installed. Installing..."
    winget install -e --id Git.Git
    Write-Host "Git installed!"
} else {
    Write-Host "Git is already installed."
}
Write-Host ""

# Check if Python is installed
Write-Host "Checking Python installation..."
if (!(Test-Path (Get-Command python -ErrorAction SilentlyContinue).Source)) {
    Write-Host "Python is not installed. Installing..."
    winget install -e --id Python.Python.3.11
    Write-Host "Python installed!"
} else {
    Write-Host "Python is already installed."
}
Write-Host ""

# Clone the repository
Write-Host "Cloning the Discord AI Chatbot repository..."
git clone https://github.com/mishalhossin/Discord-AI-Chatbot
Write-Host "Cloning complete!"
Write-Host ""

# Change directory to the cloned repository
Write-Host "Changing directory to Discord-AI-Chatbot..."
Set-Location -Path ".\Discord-AI-Chatbot"
Write-Host "Directory changed!"
Write-Host ""

# Prompt user for Discord bot token
Write-Host "Please provide your Discord bot token."
$discordToken = Read-Host "Discord Bot Token"
Write-Host ""

# Prompt user for Hugging Face access token
Write-Host "Please provide your Hugging Face access token."
$hfAccessToken = Read-Host "Hugging Face Access Token"
Write-Host ""

# Create .env file with Discord bot token and Hugging Face access token
Write-Host "Creating .env file..."
@"
HUGGING_FACE_API=$hfAccessToken
DISCORD_TOKEN=$discordToken
"@ | Set-Content -Path ".env"
Write-Host ".env file created!"
Write-Host ""

# Run the bot
Write-Host "Running the Discord AI Chatbot..."
python main.py
