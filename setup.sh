# Login on the pi and connect it to the internet then run:
# git clone https://github.com/JacksonKerr/PiOsSetup.git
# bash PiOsSetup/setup.sh

sudo apt update
sudo apt --assume-yes full-upgrade

sudo apt --assume-yes install git sway firefox nautilus pulseaudio btop

wget https://download.argon40.com/scripts/argon-shutdown.sh
sudo chmod 755 argon-shutdown.sh
sudo mkdir /lib/systemd/system-shutdown/
sudo mv argon-shutdown.sh /lib/systemd/system-shutdown/
curl https://download.argon40.com/argon-eeprom.sh | bash
curl https://download.argon40.com/argon1.sh | bash

cp -r PiOsSetup/.config ~
cp PiOsSetup/.profile ~/.profile
#cp PiOsSetup/shutdown shutdown
#sudo chmod +x shutdown

#git clone https://github.com/Botspot/pi-apps && ~/pi-apps/install
#pi-apps/manage install Signal
#pi-apps/manage install VSCodium

# TODO: None of this works!
sudo apt --assume-yes install pulseaudio pavucontrol #pulseaudio-module-bluetooth blueman
systemctl --user enable pulseaudio.socket
systemctl --user enable pulseaudio
pulseaudio --start

sudo apt --assume-yes remove cloud-init

sudo apt --assume-yes autoremove

echo reboot
