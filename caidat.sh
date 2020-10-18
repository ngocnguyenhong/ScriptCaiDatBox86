#!/bin/bash
cat winemesa.tgz* > winemesa.tgz
tar -xvzf winemesa.tgz
sudo cp -r winemesa/wine /home/$USER/wine
sudo cp -r winemesa/gl4es /home/$USER/gl4es
sudo cp -r winemesa/mesa /home/$USER/mesa
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
