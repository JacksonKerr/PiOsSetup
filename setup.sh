sudo apt update
sudo apt --assume-yes full-upgrade
sudo apt --assume-yes install sway firefox blueman pulseaudio pulseaudio-module-bluetooth
systemctl --user enable pulseaudio.socket
curl https://download.argon40.com/argon-eeprom.sh | bash
curl https://download.argon40.com/argon1.sh | bash
sudo reboot
