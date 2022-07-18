#!/usr/bin/bash

echo "[*] Instalando zsh"
sleep 3
sudo apt install zsh

echo "[*] Cambiando shell por defecto a zsh"
sleep 3
sudo chsh -s /usr/bin/zsh

echo "[*] Instalando fuentes"
sleep 3
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
sudo mkdir /usr/share/fonts/MesloLGS
sudo mv *.ttf /usr/share/fonts/MesloLGS
sudo fc-cache -f -v

echo "[*] Instalando PowerLevel10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
zsh
p10k configure

