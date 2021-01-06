#!/bin/bash
# if not root, run as root

apt install github -y

apt install curl -y

apt-get update
apt-get -y upgrade
apt-get -y dist-upgrade
apt-get clean
apt-get -y autoremove

#install ZSH : https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH
apt install zsh -y

#change shell
chsh -s /bin/zsh

#log out and log back

#installing Oh-My-Zsh (https://github.com/ohmyzsh/ohmyzsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#check OMZsh isntallation
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh

#enabling plugins 
vi ~/.zshrc

#install powerline fonts (https://github.com/powerline/fonts)
sudo apt-get install fonts-powerline

#install fonts for powerlevel10k(https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k)
$ curl -L -O https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
$ curl -L -O https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
$ curl -L -O https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
$ curl -L -O https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf

mkdir ~/.fonts

mv MesloLGS* ~/.fonts

#install powerlevel10k (https://github.com/romkatv/powerlevel10k#oh-my-zsh)
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

#Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc.


#vscode configuration
#put the following lines in settings.json
#"terminal.integrated.shell.linux": "/bin/zsh",
#"terminal.external.linuxExec": "terminator",    
#"terminal.integrated.fontFamily": "monospace, PowerlineSymbols",
