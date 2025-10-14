# Login on the pi and connect it to the internet then run:
# git clone https://github.com/JacksonKerr/PiOsSetup.git
# bash PiOsSetup/setup.sh

sudo apt update
sudo apt --assume-yes full-upgrade
sudo apt --assume-yes install git sway firefox nautilus
sudo apt --assume-yes blueman pulseaudio pulseaudio-module-bluetooth
systemctl --user enable pulseaudio.socket
curl https://download.argon40.com/argon-eeprom.sh | bash
curl https://download.argon40.com/argon1.sh | bash

cp -r PiOsSetup/.config ~
cp PiOsSetup/.profile ~/.profile

git clone https://github.com/Botspot/pi-apps && ~/pi-apps/install
pi-apps/manage install Signal
pi-apps/manage install VSCodium

sudo apt autoremove

sudo reboot
