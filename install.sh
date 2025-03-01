#!/bin/sh

# Define color variables
GREEN="\033[0;32m"
RED="\033[0;31m"
ENDCOLOR="\033[0m"

# Function to install a package and print a message
install_package() {
    echo -e "${GREEN}Downloading $1 ${ENDCOLOR}"
    sudo pacman -S --noconfirm $2
}

# Download Fonts
install_package "Cascadia Code" "ttf-cascadia-code-nerd"
install_package "Patched font Roboto Mono from nerd fonts library" "ttf-roboto-mono-nerd ttf-roboto-mono"
install_package "Font Awesome" "ttf-font-awesome"

echo -e "${GREEN}Updating Fonts ${ENDCOLOR}"
sudo fc-cache -v
echo -e "${RED}Done with setting up fonts${ENDCOLOR}"

# Download Themes
install_package "tela-circle-icon-theme-dracula" "tela-circle-icon-theme-dracula"

echo -e "${GREEN}Downloading AtomOneDarkTheme from Github ${ENDCOLOR}"
git clone https://github.com/UnnatShaneshwar/AtomOneDarkTheme.git

echo -e "${GREEN}Adding to themes folder ${ENDCOLOR}"
sudo cp -r AtomOneDarkTheme /usr/share/themes

echo -e "${RED}Done. Please Reboot! :3${ENDCOLOR}"
