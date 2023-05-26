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

# Clone the repository
echo -e "${BLUE}Cloning the Discord AI Chatbot repository..."
git clone https://github.com/mishalhossin/Discord-AI-Chatbot
echo "Cloning complete!"
echo ""

# Change directory to the cloned repository
echo -e "${BLUE}Changing directory to Discord-AI-Chatbot..."
cd Discord-AI-Chatbot
echo "Directory changed!"
echo ""

# Prompt user for Discord bot token
echo -e "${BLUE}Please provide your Discord bot token."
read -p "Discord Bot Token: " discord_token
echo ""

# Prompt user for Hugging Face access token
echo -e "${BLUE}Please provide your Hugging Face access token."
read -p "Hugging Face Access Token: " hf_access_token
echo ""

# Create .env file with Discord bot token and Hugging Face access token
echo -e "${BLUE}Creating .env file..."
echo "HUGGING_FACE_API=$hf_access_token" > .env
echo "DISCORD_TOKEN=$discord_token" >> .env
echo ".env file created!"
echo ""

# Run the bot
echo -e "${BLUE}Running the Discord AI Chatbot..."
python main.py
