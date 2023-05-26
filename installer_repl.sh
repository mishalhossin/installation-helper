#!/bin/bash

# Define colors
BLUE='\033[0;34m'
NC='\033[0m'

# Welcome message with ASCII art
echo -e "${BLUE}Welcome to the Discord AI Chatbot installation script!"
echo ""
echo -e "${BLUE}   █ █▄░█ █ ▀█▀ ▄▀█ █░░ █░░ █▀▀ █▀█"
echo -e "${BLUE}   █ █░▀█ █ ░█░ █▀█ █▄▄ █▄▄ ██▄ █▀▄${NC}"
echo ""
echo -e "${BLUE}This script will guide you through the installation process."
echo ""

# Specify the target directory
target_dir="Discord-AI-Chatbot"

# Prompt user for Discord bot token
echo -e "${BLUE}Please provide your Discord bot token."
read -p "Discord Bot Token: " discord_token
echo ""

# Delete the main.py file if it exists
if [ -f "main.py" ]; then
    echo -e "${BLUE}Deleting main.py file..."
    rm main.py
    echo "main.py deleted!"
    echo ""
fi

# Prompt user for Hugging Face access token
echo -e "${BLUE}Please provide your Hugging Face access token."
read -p "Hugging Face Access Token: " hf_access_token
echo ""

# Clone the Discord AI Chatbot repository into the target directory
echo -e "${BLUE}Cloning the Discord AI Chatbot repository..."
git clone https://github.com/mishalhossin/Discord-AI-Chatbot "$target_dir"
echo "Cloning complete!"
echo ""

# Move into the target directory
cd "$target_dir"

# Set Discord bot token and Hugging Face access token as environment variables
export DISCORD_TOKEN="$discord_token"
export HUGGING_FACE_API="$hf_access_token"

# Install required dependencies
echo -e "${BLUE}Installing required dependencies..."
pip install -r requirements.txt
echo "Dependencies installed!"
echo ""

# Run the bot
echo -e "${BLUE}Running the Discord AI Chatbot..."
python main.py
