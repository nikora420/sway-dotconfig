#!/bin/sh

# Download Fonts
echo -e "${GREEN}Downloading Cascadia Code ${ENDCOLOR}"
sudo pacman -S --noconfirm ttf-cascadia-code-nerd
echo -e "${GREEN}Downloading Patched font Roboto Mono from nerd fonts library ${ENDCOLOR}"
sudo pacman -S --noconfirm ttf-roboto-mono-nerd ttf-roboto-mono
echo -e "${GREEN}Downloading Font Awesome ${ENDCOLOR}"
sudo pacman -S --noconfirm ttf-font-awesome
echo -e "${GREEN}Update Fonts ${ENDCOLOR}"
sudo fc-cache -v
echo -e "${RED} Done with setting up fonts${ENDCOLOR}"

# Download Themes
echo -e "${GREEN} Downloading tela-circle-icon-theme-dracula ${ENDCOLOR}"
sudo pacman -S --noconfirm tela-circle-icon-theme-dracula
echo -e "${GREEN} Downloading AtomOneDarkTheme from Github ${ENDCOLOR}"
git clone https://github.com/UnnatShaneshwar/AtomOneDarkTheme.git
echo -e "${GREEN} Adding to themes folder ${ENDCOLOR}"
sudo cp -r AtomOneDarkTheme /usr/share/themes

echo -e "${RED} Done Pls Reboot!!!:3${ENDCOLOR}"
