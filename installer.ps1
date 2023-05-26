Write-Host "Welcome to the Discord AI Chatbot installation script!" -ForegroundColor Cyan
Write-Host ""
Write-Host "   █ █▄░█ █▀ ▀█▀ ▄▀█ █░░ █░░ █▀▀ █▀█" -ForegroundColor Cyan
Write-Host "   █ █░▀█ ▄█ ░█░ █▀█ █▄▄ █▄▄ ██▄ █▀▄" -ForegroundColor Cyan
Write-Host ""
Write-Host "This script will guide you through the installation process." -ForegroundColor Cyan
Write-Host ""

# Clone the repository
Write-Host "Cloning the Discord AI Chatbot repository..." -ForegroundColor Cyan
git clone https://github.com/mishalhossin/Discord-AI-Chatbot
Write-Host "Cloning complete!"
Write-Host ""

# Change directory to the cloned repository
Write-Host "Changing directory to Discord-AI-Chatbot..." -ForegroundColor Cyan
cd Discord-AI-Chatbot
Write-Host "Directory changed!"
Write-Host ""

# Prompt user for Discord bot token
Write-Host "Please provide your Discord bot token." -ForegroundColor Cyan
$discord_token = Read-Host "Discord Bot Token"
Write-Host ""

# Prompt user for Hugging Face access token
Write-Host "Please provide your Hugging Face access token." -ForegroundColor Cyan
$hf_access_token = Read-Host "Hugging Face Access Token"
Write-Host ""

# Create .env file with Discord bot token and Hugging Face access token
Write-Host "Creating .env file..." -ForegroundColor Cyan
"`nHUGGING_FACE_API=$hf_access_token`nDISCORD_TOKEN=$discord_token" | Out-File -FilePath ".env"
Write-Host ".env file created!"
Write-Host ""

# Run the bot
Write-Host "Running the Discord AI Chatbot..." -ForegroundColor Cyan
python main.py
