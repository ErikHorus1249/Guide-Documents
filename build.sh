sudo apt install -y git zsh vim curl gnome-tweaks gnome-session \
gnome-shell-extensions python3-venv variety docker.io net-tools

gsettings set org.gnome.mutter center-new-windows true
gsettings set org.gnome.desktop.interface clock-show-seconds true

# AnyDesk 
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add -
echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list
# Spotify 
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
# Bamboo unikey 
sudo add-apt-repository -y ppa:bamboo-engine/ibus-bamboo

sudo apt-get update -y 
sudo apt -y install ibus-bamboo spotify-client anydesk
ibus restart
env DCONF_PROFILE=ibus dconf write /desktop/ibus/general/preload-engines "['BambooUs', 'Bamboo']" && gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'Bamboo')]"
# VS code 
wget -O~/Downloads/app.vscode.deb https://code.visualstudio.com/sha/download\?build\=stable\&os\=linux-deb-x64
wget -O ~/Downloads/app.edge.deb  https://go.microsoft.com/fwlink/\?linkid\=2124602
sudo dpkg -i ~/Downloads/app.vscode.deb
sudo dpkg -i ~/Downloads/app.edge.deb
rm ~/Downloads/app.*



# Zoom 
wget -O ~/Downloads/app.zoom.deb https://zoom.us/client/latest/zoom_amd64.deb
sudo dpkg -i ~/Downloads/app.zoom.deb 
rm ~/Downloads/app.zoom.deb
sudo apt -y  --fix-broken install

# Telegram 
# wget -O ~/Downloads/tsetup.tar.xz https://telegram.org/dl/desktop/linux

#Wallpaper
wget -O ~/Pictures/wallpapers.zip https://www.dropbox.com/s/ozqe8unw2en8yeh/Wallpapers.zip?dl=1
# unzip ~/Pictures/wallpapers.zip 
# rm ~/Pictures/wallpapers.zip

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/themes/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/
mkdir ~/.themes
mkdir ~/.icons

# wget -O ~/.themes/Kripton.tar.xz  https://dl2.pling.com/api/files/download/j/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjE2MjcyNDcwNDgiLCJ1IjpudWxsLCJsdCI6ImRvd25sb2FkIiwicyI6ImUyZDA0ZDJmYTVhZmU3MjEyNjU3ZWYyMDEzZGM4Mzk0NzlhM2FhZTZhZjVkZjgwODVmMmVjYTMxYzU0NzY1ZTc1OTdkY2I3MWUzNDcyOWRkZWUzZTM5N2I3OGM3ZTI3Njk4ZTI4MGE5NGQxOWQ2ZDdkMjgwOTI2Njc3NzcwMzQwIiwidCI6MTYyODk1MjUwMCwic3RmcCI6IjY5MWZiNTY5MGNkNjBmMjI3OGIzNzU1YjMyZTVmMDc0Iiwic3RpcCI6IjI3LjcxLjg1LjIwNyJ9.RmowQJrYe6UYk2o8tPauMptLYcuiJhqNxKCbDZA6Qkk/Kripton.tar.xz
# tar -xf ~/.themes/Kripton.tar.xz  -C ~/.themes
# rm ~/.themes/Kripton.tar.xz
# gsettings set org.gnome.desktop.interface gtk-theme Kripton
# gsettings set org.gnome.desktop.wm.preferences theme Kripton

sudo usermod -aG docker $USER
reboot
