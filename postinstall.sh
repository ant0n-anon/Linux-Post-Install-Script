# For running after fresh install of KDE Neon 5.22.2
# Remove any software that you don't want after forking
# This is literally my first project ever, so user beware

# General Update

sudo apt-get update && pkcon update
sudo apt install curl

# Install Software

sudo apt install preload kubuntu-restricted-extras build-essential ktorrent bpytop youtube-dl ffmpeg

# Install VPN - expressvpn
curl https://www.expressvpn.works/clients/linux/expressvpn_3.9.0.75-1_amd64.deb -o expressvpn_3.9.0.75-1_amd64.deb && dpkg -i expressvpn_3.9.0.75-1_amd64.deb

# Remove Firefox
sudo apt remove firefox

# Install Brave
sudo apt install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser

# Install Spotify
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client

# Install Snap installer
sudo apt-get install snapd
sudo snap install core

# Install VLC
sudo snap install vlc

# Install Telegram
sudo snap install telegram-desktop

# Install Bitwarden (password manager)
sudo snap install bitwarden

# Install Exodus
curl https://downloads.exodus.com/releases/exodus-linux-x64-21.7.2.deb -o exodus-linux-x64-21.7.2.deb && dpkg -i exodus-linux-x64-21.7.2.deb

# Change DNS to Cloudflare
sudo echo 'nameserver 1.1.1.1' > /etc/resolv.conf
sudo echo 'nameserver 1.0.0.1' > /etc/resolv.conf
sudo echo 'nameserver 2606:4700:4700::1111' > /etc/resolv.conf
sudo echo 'nameserver 2606:4700:4700::1001' > /etc/resolv.conf

# Configure VPN
expressvpn activate
expressvpn protocol lightway_udp
expressvpn autoconnect enable

# Enable Firewall
sudo ufw enable