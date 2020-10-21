#!/bin/bash
cat winemesa.tgz* > winemesa.tgz
tar -xvzf winemesa.tgz
sudo cp -r winemesa/wine /home/$USER/wine
sudo cp -r winemesa/gl4es /home/$USER/gl4es
sudo cp -r winemesa/mesa /home/$USER/mesa
sudo cp /home/$USER/wine/bin/wine /usr/local/bin
sudo ln -s /home/$USER/wine/bin/wineserver wineserver
sudo chmod a+x /usr/local/bin/wine
sudo chmod a+x /home/$USER/wine/bin/wine
sudo chmod a+x /home/$USER/wine/bin/wine-preloader
sudo chmod a+x /home/$USER/wine/bin/wineboot
sudo chmod a+x /home/$USER/wine/bin/winepath
sudo rm -rf winemesa
sudo rm -f winemesa.tgz
sudo apt -y update
sudo apt -y install cmake gtk2-engines-murrine libncurses5 libncursesw5 libssl1.0.2 libglu1-mesa zenity mesa-utils
cd /home/$USER
git clone https://github.com/ptitSeb/box86.git
cd box86
mkdir backup
mkdir build; cd build; cmake .. -DARM_DYNAREC=1 -DRPI4=1; make -j4
sudo make install
exit
