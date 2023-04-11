#!/bin/bash

sudo apt-get update && sudo apt-get upgrade -y

### Basic tools

sudo apt-get install -y wget htop net-tools telnet vim screen software-properties-common apt-transport-https wget ca-certificates gnupg2 ubuntu-keyring curl lsb-release tilix git virt-manager neofetch dmidecode lshw hardinfo terminator guake filezilla p7zip-full p7zip-rar rar

### Install Aditional Drivers
# Software & Updates -> Select Additional Drivers tab -> here

### Disable Problem Reporting
# Settings -> Privacy -> Problem Reporting

### Set Default Aplications
# Settings -> Details -> Default Applications

### Customize the Dock
# Settings -> Dock

# Install GS Connect: For Android Phone Users
# Many of us use Android phones, and GS Connect is an application for Ubuntu that will help you integrate your phone with #Ubuntu. You can send SMS from the Ubuntu desktop, share and transfer files, sync notifications and do much more with this #useful app.

# GS Connect is directly available in Ubuntu Software Center for download and installation.



### GNOME Tweak Tool

sudo add-apt-repository -y universe
sudo apt-get install -y gnome-tweaks

### Enable Firewall

sudo ufw enable
sudo apt-get install -y gufw ### GUI para la gestión

### Install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

### Install Microsoft Edge
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository -y "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main"
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/
sudo apt-get update
sudo apt-get install microsoft-edge-stable -y

### Install Chromium
sudo apt-get install -y chromium-browser

### Install Opera
wget -qO- https://deb.opera.com/archive.key | sudo apt-key add -
curl https://deb.opera.com/archive.key | gpg --dearmor > opera.gpg
sudo install -o root -g root -m 644 opera.gpg /etc/apt/trusted.gpg.d/
sudo add-apt-repository -y "deb [arch=i386,amd64] https://deb.opera.com/opera-stable/ stable non-free"
sudo apt-get install -y opera-stable

### Install Brave Browser
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt-get install -y brave-browser

### Install Multimedia Codecs
sudo apt-get install -y ubuntu-restricted-extras

### Improve Battery Performance
sudo apt-get install -y tlp tlp-rdw
sudo systemctl enable tlp

### Install Microsoft Fonts
sudo apt install -y ttf-mscorefonts-installer
sudo fc-cache -vr

### Install FlatPak
sudo apt-get install -y flatpak
sudo apt-get install -y gnome-software-plugin-flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak update

### Install VLC
sudo snap install vlc

### Install TimeShift
sudo apt-get install -y timeshift

### Ubuntu Cleaner
sudo add-apt-repository -y ppa:gerardpuig/ppa
sudo apt update -y
sudo apt-get install -y ubuntu-cleaner

### Minimize on Click
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'

### Install Atom Editor
sudo snap install atom --classic

### Install Simple Screen Recorder
sudo apt-get install -y simplescreenrecorder

### Install GIMP
sudo apt-get install -y gimp

### Install OpenShot
sudo flatpak install flathub org.openshot.OpenShot -y

### Install GNome Sushi
sudo apt-get install -y gnome-sushi

### Instalar Flameshot
sudo apt-get install -y flameshot

### Install BitWarden Client
sudo snap install bitwarden

### Install KeepassXC
sudo snap install keepassxc

### Install ClamAV
wget https://www.clamav.net/downloads/production/clamav-1.0.1.linux.x86_64.deb
sudo dpkg -i clamav-1.0.1.linux.x86_64.deb

### Install SublimeText
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install -y sublime-text

### Install OnlyOffice
sudo snap install onlyoffice-desktopeditors

### Install WPS Office
wget https://wdl1.pcfg.cache.wpscdn.com/wpsdl/wpsoffice/download/linux/11691/wps-office_11.1.0.11691.XA_amd64.deb
sudo apt install -y $(pwd)/wps-office_11.1.0.11691.XA_amd64.deb

### Install GanttProject
wget https://dl.ganttproject.biz/ganttproject-3.2.3240/ganttproject_3.2.3240-1_all.deb
sudo apt install -y $(pwd)/ganttproject_3.2.3240-1_all.deb

### Install Dia (Similar a Microsoft Visio)
sudo apt-get install -y dia

### Install Blender
sudo apt install -y blender

### Install Spotify
sudo snap install spotify

### Install Audacity
sudo apt-get install -y audacity

### Install Zoom
wget https://zoom.us/client/5.14.0.1720/zoom_amd64.deb
sudo apt install -y $(pwd)/zoom_amd64.deb

### Install Telegram
sudo snap install telegram-desktop

### Install InkScape (Como corel draw)
sudo apt-get install -y inkscape

### Install Notepadqq
sudo apt-get install -y notepadqq

### Install Linphone
sudo add-apt-repository -y ppa:linphone/release
sudo apt-get update
sudo apt-get install -y linphone


##################
###	DESARROLLO ###
##################

### Install Wine
sudo apt-get install -y wine64

### Install Postman
sudo snap install postman

### Install Wordpress Desktop Client
sudo snap install wordpress-desktop

### Install VSCode
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
sudo apt update && sudo apt install -y code

### Install Docker
sudo apt-get remove -y docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg
sudo mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-compose

### Install MysqlWorkbench
sudo snap install mysql-workbench-community
sudo snap connect mysql-workbench-community:password-manager-service :password-manager-service

### Mattermost
wget https://releases.mattermost.com/desktop/5.2.2/mattermost-desktop_5.2.2-1_amd64.deb
sudo apt install -y $(pwd)/mattermost-desktop_5.2.2-1_amd64.deb

### Lenguajes de Desarrollo
sudo apt-get install -y python3
sudo add-apt-repository -y ppa:ondrej/php
sudo apt-get update
sudo apt-get install -y php8.0
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
source ~/.bashrc
nvm install node
sudo apt-get install -y ruby-full
sudo apt-get install -y curl g++ gcc autoconf automake bison libc6-dev libffi-dev libgdbm-dev libncurses5-dev libsqlite3-dev libtool libyaml-dev make pkg-config sqlite3 zlib1g-dev libgmp-dev libreadline-dev libssl-dev
gpg --keyserver hkp://pgp.mit.edu --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install ruby --latest

################
### SISTEMAS ###
################

wget https://download.virtualbox.org/virtualbox/7.0.6/virtualbox-7.0_7.0.6-155176~Ubuntu~jammy_amd64.deb
sudo apt install -y $(pwd)/virtualbox-7.0_7.0.6-155176~Ubuntu~jammy_amd64.deb
