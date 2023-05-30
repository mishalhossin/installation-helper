#!/bin/bash

# Define colors
BLUE='\033[0;34m'
NC='\033[0m'

# Welcome message with ASCII art
echo "${BLUE}Welcome to the Discord AI Chatbot installation script!"
echo ""
echo "${BLUE}   █ █▄░█ █▀ ▀█▀ ▄▀█ █░░ █░░ █▀▀ █▀█"
echo "${BLUE}   █ █░▀█ ▄█ ░█░ █▀█ █▄▄ █▄▄ ██▄ █▀▄${NC}"
echo ""
echo "${BLUE}This script will guide you through the installation process."
echo ""

# Clone the repository
echo "${BLUE}Cloning the Discord AI Chatbot repository..."
git clone https://github.com/mishalhossin/Discord-AI-Chatbot
echo "Cloning complete!"
echo ""

# Change directory to the cloned repository
echo "${BLUE}Changing directory to Discord-AI-Chatbot..."
cd Discord-AI-Chatbot
echo "Directory changed!"
echo ""

# Prompt user for Discord bot token
echo "${BLUE}Please provide your Discord bot token."
read -p "Discord Bot Token: " discord_token
echo ""

# Create .env file with Discord bot token and Hugging Face access token
echo "${BLUE}Creating .env file..."
echo "DISCORD_TOKEN=$discord_token" >> .env
echo ".env file created!"
echo ""

# Run the bot
echo "${BLUE}Running the Discord AI Chatbot..."
python main.py
