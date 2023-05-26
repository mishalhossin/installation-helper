#!/bin/bash

# Define colors
BLUE='\033[0;34m'
NC='\033[0m'

# Welcome message with ASCII art
echo "${BLUE}Welcome to the Discord AI Chatbot installation script!"
echo ""
echo "${BLUE}   █ █▄░█ █ ▀█▀ ▄▀█ █░░ █░░ █▀▀ █▀█"
echo "${BLUE}   █ █░▀█ █ ░█░ █▀█ █▄▄ █▄▄ ██▄ █▀▄${NC}"
echo ""
echo "${BLUE}This script will guide you through the installation process."
echo ""

# Check if main.py already exists and delete it if necessary
if [ -f main.py ]; then
    echo "${BLUE}Deleting existing main.py..."
    rm main.py
    echo "Existing main.py deleted!"
    echo ""
fi

# Clone the repository
echo "${BLUE}Cloning the Discord AI Chatbot repository..."
git clone https://github.com/mishalhossin/Discord-AI-Chatbot .
echo "Cloning complete!"
echo ""

# Prompt user for Discord bot token
echo "${BLUE}Please provide your Discord bot token."
read -p "Discord Bot Token: " discord_token
echo ""

# Prompt user for Hugging Face access token
echo "${BLUE}Please provide your Hugging Face access token."
read -p "Hugging Face Access Token: " hf_access_token
echo ""

# Set environment variables for Discord bot token and Hugging Face access token
echo "${BLUE}Setting environment variables..."
export HUGGING_FACE_API=$hf_access_token
export DISCORD_TOKEN=$discord_token
echo "Environment variables set!"
echo ""

# Run the bot
echo "${BLUE}Running the Discord AI Chatbot..."
python main.py
