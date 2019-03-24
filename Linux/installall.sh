mkdir installs
cd installs

sudo apt update
sudo apt dist-upgrade -y

sudo apt install vim steam steam-devices vlc git i3 thunderbird -y


sudo snap install spotify
sudo snap install vscode --classic
sudo snap install discord



#wine-staging
sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/Release.key
sudo apt-key add Release.key
sudo apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/
sudo apt-get update
sudo apt-get install --install-recommends winehq-staging -y

#lutris
ver=$(lsb_release -sr); if [ $ver != "18.04" -a $ver != "16.04" ]; then ver=18.04; fi
echo "deb http://download.opensuse.org/repositories/home:/strycore/xUbuntu_$ver/ ./" | sudo tee /etc/apt/sources.list.d/lutris.list
wget -q https://download.opensuse.org/repositories/home:/strycore/xUbuntu_$ver/Release.key -O- | sudo apt-key add -

sudo apt-get update
sudo apt-get install lutris -y

#lutris dxvk
sudo dpkg --add-architecture i386
sudo apt install mesa-vulkan-drivers mesa-vulkan-drivers:i386 -y


#battlenet/overwatch stuff
sudo apt install libgnutls30:i386 libldap-2.4-2:i386 libgpg-error0:i386 libsqlite3-0:i386 -y

#g13
sudo apt-get install libusb-1.0-0-dev libboost-all-dev -y
git clone https://github.com/ecraven/g13.git


git config --global user.email "jakob.weimar@gmx.de"
git config --global user.name "Jakob Weimar"


