#!/usr/bin/env bash

# Welcome message with ASCII art
echo "Welcome to the Discord AI Chatbot installation script!"
echo ""
echo "   █ █▄░█ █ ▀█▀ ▄▀█ █░░ █░░ █▀▀ █▀█"
echo "   █ █░▀█ █ ░█░ █▀█ █▄▄ █▄▄ ██▄ █▀▄"
echo ""
echo "This script will guide you through the installation process."
echo ""

# Clone the repository
echo "Cloning the Discord AI Chatbot repository..."
git clone https://github.com/mishalhossin/Discord-AI-Chatbot .
echo "Cloning complete!"
echo ""

# Prompt user for Discord bot token
echo "Please provide your Discord bot token."
read -p "Discord Bot Token: " discord_token
echo ""

# Prompt user for Hugging Face access token
echo "Please provide your Hugging Face access token."
read -p "Hugging Face Access Token: " hf_access_token
echo ""

# Set environment variables for Discord bot token and Hugging Face access token
echo "Setting environment variables..."
export HUGGING_FACE_API=$hf_access_token
export DISCORD_TOKEN=$discord_token
echo "Environment variables set!"
echo ""

# Run the bot
echo "Running the Discord AI Chatbot..."
replit-nix run --exec "python main.py"
