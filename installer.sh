# Welcome message with ASCII art
Write-Host "Welcome to the Discord AI Chatbot installation script!"
Write-Host ""
Write-Host "   █ █▄░█ █▀ ▀█▀ ▄▀█ █░░ █░░ █▀▀ █▀█"
Write-Host "   █ █░▀█ ▄█ ░█░ █▀█ █▄▄ █▄▄ ██▄ █▀▄"
Write-Host ""
Write-Host "This script will guide you through the installation process."
Write-Host ""

# Clone the repository
Write-Host "Cloning the Discord AI Chatbot repository..."
git clone https://github.com/mishalhossin/Discord-AI-Chatbot
Write-Host "Cloning complete!"
Write-Host ""

# Change directory to the cloned repository
Write-Host "Changing directory to Discord-AI-Chatbot..."
Set-Location -Path "Discord-AI-Chatbot"
Write-Host "Directory changed!"
Write-Host ""

# Prompt user for Discord bot token
Write-Host "Please provide your Discord bot token."
$discord_token = Read-Host "Discord Bot Token"
Write-Host ""

# Prompt user for Hugging Face access token
Write-Host "Please provide your Hugging Face access token."
$hf_access_token = Read-Host "Hugging Face Access Token"
Write-Host ""

# Create .env file with Discord bot token and Hugging Face access token
Write-Host "Creating .env file..."
"`nHUGGING_FACE_API=$hf_access_token`nDISCORD_TOKEN=$discord_token" | Out-File -FilePath ".env" -Encoding UTF8
Write-Host ".env file created!"
Write-Host ""

# Run the bot
Write-Host "Running the Discord AI Chatbot..."
python main.py
