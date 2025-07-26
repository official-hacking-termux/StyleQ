#!/bin/bash

echo -e "🔍 Checking and installing dependencies...\n"

pkg update -y && pkg upgrade -y

# Install only if not already installed
for pkg in toilet figlet ruby; do
    if ! command -v $pkg > /dev/null; then
        echo "📦 Installing $pkg..."
        pkg install $pkg -y
    else
        echo "✅ $pkg already installed."
    fi
done

# lolcat via gem
if ! gem list lolcat -i > /dev/null; then
    echo "📦 Installing lolcat..."
    gem install lolcat
else
    echo "✅ lolcat already installed."
fi

echo -e "\n✅ All requirements installed!"
