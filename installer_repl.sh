#!/bin/bash

# Define colors
BLUE='\033[0;34m'
NC='\033[0m'

# Welcome message with ASCII art
echo -e "${BLUE}Welcome to the Discord AI Chatbot installation script!"
echo ""
echo -e "${BLUE}   █ █▄░█ █▀ ▀█▀ ▄▀█ █░░ █░░ █▀▀ █▀█"
echo -e "${BLUE}   █ █░▀█ ▄█ ░█░ █▀█ █▄▄ █▄▄ ██▄ █▀▄${NC}"
echo ""
echo -e "${BLUE}This script will guide you through the installation process."
echo ""

# Prompt user for Discord bot token
echo -e "${BLUE}Please provide your Discord bot token."
read -p "Discord Bot Token: " discord_token
echo ""

# Prompt user for Hugging Face access token
echo -e "${BLUE}Please provide your Hugging Face access token."
read -p "Hugging Face Access Token: " hf_access_token
echo ""

# Create temporary directory
temp_dir=$(mktemp -d)

# Clone the Discord AI Chatbot repository into the temporary directory
echo -e "${BLUE}Cloning the Discord AI Chatbot repository..."
git clone https://github.com/mishalhossin/Discord-AI-Chatbot "$temp_dir"
echo "Cloning complete!"
echo ""

# Move the contents of the temporary directory back to the current directory
echo -e "${BLUE}Moving files..."
mv "$temp_dir"/* .
echo "Files moved!"
echo ""

# Delete the main.py file if it exists
if [ -f "main.py" ]; then
    echo -e "${BLUE}Deleting main.py file..."
    rm main.py
    echo "main.py deleted!"
    echo ""
fi

# Create .env file with Discord bot token and Hugging Face access token
echo -e "${BLUE}Creating .env file..."
echo "HUGGING_FACE_API=$hf_access_token" > .env
echo "DISCORD_TOKEN=$discord_token" >> .env
echo ".env file created!"
echo ""

# Install required dependencies
echo -e "${BLUE}Installing required dependencies..."
pip install -r requirements.txt
echo "Dependencies installed!"
echo ""

# Run the bot
echo -e "${BLUE}Running the Discord AI Chatbot..."
python main.py
