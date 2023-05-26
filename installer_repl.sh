#!/usr/bin/env bash

# Welcome message with ASCII art
echo "Welcome to the Discord AI Chatbot installation script!"
echo ""
echo "   █ █▄░█ █ ▀█▀ ▄▀█ █░░ █░░ █▀▀ █▀█"
echo "   █ █░▀█ █ ░█░ █▀█ █▄▄ █▄▄ ██▄ █▀▄"
echo ""
echo "This script will guide you through the installation process."
echo ""

# Create a temporary directory
tmp_dir=$(mktemp -d)

# Clone the repository into the temporary directory
echo "Cloning the Discord AI Chatbot repository..."
git clone --single-branch --no-checkout https://github.com/mishalhossin/Discord-AI-Chatbot "$tmp_dir"
git -C "$tmp_dir" sparse-checkout init --cone
git -C "$tmp_dir" sparse-checkout set /*
echo "Cloning complete!"
echo ""

# Move the contents from the temporary directory to the current directory
echo "Moving the contents to the current directory..."
mv "$tmp_dir"/* .
rm -rf "$tmp_dir"
echo "Contents moved!"
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

# Create and activate a virtual environment
echo "Creating and activating the virtual environment..."
python3 -m venv env
source env/bin/activate
echo "Virtual environment created and activated!"
echo ""

# Install dependencies
echo "Installing required dependencies..."
pip install -r requirements.txt
echo "Dependencies installed!"
echo ""

# Run the bot
echo "Running the Discord AI Chatbot..."
python main.py
