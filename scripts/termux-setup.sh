#!/bin/bash

echo -e "\n\e[1;32m[*] Actualizando repositorios\e[0m\n" 
sleep 3
cd
apt update && apt upgrade -y

echo -e "\n\e[1;32m[*] Instalando utilidades\e[0m\n" 
sleep 3 
apt install git curl wget vim build-essential man ranger lsd bat fontconfig-utils net-tools neofetch apache2 openssh zip p7zip busybox nmap termux-services tree -y

echo -e "\n\e[1;32m[*] Instalando entornos de programación\e[0m\n"
sleep 3
apt install python python3 php perl ruby nodejs clang -y

echo -e "\n\e[1;32m[*] Configurando directorios\e[0m\n"
sleep 3
ln -s /data/data/com.termux/files/usr/share/apache2/default-site/htdocs ~/htdocs
ln -s /sdcard/Documents ~/Documents
ln -s /sdcard/Download ~/Downloads

echo -e "\n\e[1;32m[*] Configurando dotfiles\e[0m\n"
sleep 3
ln -s ~/dev-lab/termux-dotfiles/zshrc ~/.zshrc
ln -s ~/dev-lab/termux-dotfiles/zprofile ~/.zprofile

echo -e "\n\e[1;32m[*] Configurando shell zsh y p10k\e[0m\n"
sleep 3
apt install zsh -y
chsh -s zsh

echo -e "\n\e[1;32m[*] Instalando powerlevel10k\e[0m\n"
sleep 3
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
zsh
p10k configure
