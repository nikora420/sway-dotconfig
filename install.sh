#!/bin/sh

# Download Fonts
echo -e "${GREEN}Downloading Cascadia Code ${ENDCOLOR}"
sudo pacman -S ttf-cascadia-code-nerd -y | clear
echo -e "${GREEN}Downloading Patched font Roboto Mono from nerd fonts library ${ENDCOLOR}"
sudo pacman -S ttf-roboto-mono-nerd ttf-roboto-mono -y | clear
echo -e "${GREEN}Downloading Font Awesome ${ENDCOLOR}"
sudo pacman -S ttf-font-awesome -y | clear
echo -e "${GREEN}Update Fonts ${ENDCOLOR}"
sudo fc-cache -v | clear
echo -e "${RED} Done with setting up fonts${ENDCOLOR}"

# Themeing
echo -e "${GREEN} Downloading tela-circle-icon-theme-dracula ${ENDCOLOR}"
sudo pacman -S tela-circle-icon-theme-dracula -y | clear
echo -e "${GREEN} Downloading AtomOneDarkTheme from Github ${ENDCOLOR}"
git clone https://github.com/UnnatShaneshwar/AtomOneDarkTheme.git | clear
echo -e "${GREEN} Adding to themes folder ${ENDCOLOR}"
sudo cp -r AtomOneDarkTheme /usr/share/themes

echo -e "${RED} Done :3${ENDCOLOR}"

done
