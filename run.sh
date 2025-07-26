#!/bin/bash

clear

BG="\e[34m"
RESET="\e[0m"

# Banner with violet background
echo -e "${BG}╔════════════════════════════════════════════════════════╗"
echo -e "${BG}║ ██╗  ██╗ █████╗  ██████╗██╗  ██╗██╗███╗   ██╗ ██████╗  ║"
echo -e "${BG}║ ██║  ██║██╔══██╗██╔════╝██║ ██╔╝██║████╗  ██║██╔════╝  ║"
echo -e "${BG}║ ███████║███████║██║     █████╔╝ ██║██╔██╗ ██║██║  ███╗ ║"
echo -e "${BG}║ ██╔══██║██╔══██║██║     ██╔═██╗ ██║██║╚██╗██║██║   ██║ ║"
echo -e "${BG}║ ██║  ██║██║  ██║╚██████╗██║  ██╗██║██║ ╚████║╚██████╔╝ ║"
echo -e "${BG}║ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝  ║"
echo -e "${BG}║                                                        ║"
echo -e "${BG}║ ████████╗███████╗██████╗ ███╗   ███╗██╗   ██╗██╗  ██╗  ║"
echo -e "${BG}║ ╚══██╔══╝██╔════╝██╔══██╗████╗ ████║██║   ██║╚██╗██╔╝  ║"
echo -e "${BG}║    ██║   █████╗  ██████╔╝██╔████╔██║██║   ██║ ╚███╔╝   ║"
echo -e "${BG}║    ██║   ██╔══╝  ██╔══██╗██║╚██╔╝██║██║   ██║ ██╔██╗   ║"
echo -e "${BG}║    ██║   ███████╗██║  ██║██║ ╚═╝ ██║╚██████╔╝██╔╝ ██╗  ║"
echo -e "${BG}║    ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═╝  ║"
echo -e "${BG}║                                                        ║"
echo -e "${BG}╚════════════════════════════════════════════════════════╝${RESET}"

sleep 2

# Message
echo
echo -e "\e[31m 🔗 Join & Subscribe\e[0m"

echo -e  "\e[32m 📢 Telegram channel : https://t.me/Official_Hacking_Termux"
echo -e  "▶️ YouTube channel  : https://www.youtube.com/@Official_Hacking_Termux"
echo -e  "⏳ Tool processing...\e[0m"

sleep 5

echo -e "\e[33m ✅ Tool starting now...\e[0m"
sleep 2
# Run external file
./style.sh
