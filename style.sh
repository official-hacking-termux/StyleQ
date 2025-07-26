#!/bin/bash

clear

# 🎨 Ask for banner style
echo -e "\n🎨 Choose your banner style:"
echo "1️⃣  Toilet (mono12)"
echo "2️⃣  Figlet (block)"
echo "3️⃣  Toilet (standard)"
echo "4️⃣  Figlet (slant)"
read -p "🔢 Enter style number (1–4): " STYLE_CHOICE

# 🖊️ Ask for custom name/text
read -p "🖊️ Enter the banner text (e.g., your name): " BANNER_TEXT

# 📁 Create banner directory
mkdir -p $HOME/.hackingtermux

# 🔨 Create banner script
cat <<EOF > $HOME/.hackingtermux/banner.sh
#!/bin/bash
clear

# 🔷 Background Fill
printf "\033[44m"
for i in {1..20}; do
  printf '                                                                                      \n'
done
printf "\033[0m"
clear

# 🔷 YouTube Box
echo -e "\033[1;41m┌────────────────────────────────────────────────────────────┐\033[0m"
echo -e "\033[1;41m│ YOUTUBE 👉 https://www.youtube.com/@Official_Hacking_Termux│\033[0m"
echo -e "\033[1;41m└────────────────────────────────────────────────────────────┘\033[0m"

echo ""
echo -e "\033[1;37m╔═════════════════════════════════════════════════════════════════════════════╗\033[0m" | lolcat
EOF

# 🖼️ Add banner style
case "$STYLE_CHOICE" in
  1) echo "toilet -f mono12 -F border \"$BANNER_TEXT\" | lolcat" >> $HOME/.hackingtermux/banner.sh ;;
  2) echo "figlet -f block \"$BANNER_TEXT\" | lolcat" >> $HOME/.hackingtermux/banner.sh ;;
  3) echo "toilet -f standard \"$BANNER_TEXT\" | lolcat" >> $HOME/.hackingtermux/banner.sh ;;
  4) echo "figlet -f slant \"$BANNER_TEXT\" | lolcat" >> $HOME/.hackingtermux/banner.sh ;;
  *) echo "figlet \"$BANNER_TEXT\" | lolcat" >> $HOME/.hackingtermux/banner.sh ;;
esac

cat <<EOF >> $HOME/.hackingtermux/banner.sh
echo -e "\033[1;37m╚═════════════════════════════════════════════════════════════════════════════╝\033[0m" | lolcat
echo ""
EOF

chmod +x $HOME/.hackingtermux/banner.sh

# 🧠 Setup in .bashrc (clean version)
if ! grep -q "CUSTOM HACKING TERMUX" "$HOME/.bashrc"; then
cat <<'EOF' >> $HOME/.bashrc

# CUSTOM HACKING TERMUX
if [ -f "$HOME/.hackingtermux/banner.sh" ]; then
  bash $HOME/.hackingtermux/banner.sh
fi
PS1='\e[1;32mHackingTermux > \e[1;34m\w\e[0m \$ '
EOF
fi

# 🗑️ Create uninstall script
cat <<'EOF' > $PREFIX/bin/uninstall-style
#!/bin/bash
sed -i '/# CUSTOM HACKING TERMUX/,/PS1=/d' $HOME/.bashrc
rm -rf $HOME/.hackingtermux
echo -e "\n✅ Style uninstalled. Restart Termux."
EOF

chmod +x $PREFIX/bin/uninstall-style

# ✅ Done
echo -e "\n✅ Banner installed!"
echo -e "🔁 Now restart Termux to see your banner!"
