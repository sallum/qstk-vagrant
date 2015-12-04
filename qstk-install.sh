#!/usr/bin/env sh

echo "[QSTK] Installing QSTK and dependencies..."
sudo apt-get update

# Get QSTK
wget http://pypi.python.org/packages/source/Q/QSTK/QSTK-0.2.8.tar.gz

#Extract the tarball
tar -xzvf QSTK-0.2.8.tar.gz
cd QSTK-0.2.8

#Install QSTK and dependencies
sudo sh UbuntuInstallation.sh
sudo python setup.py install


echo "[QSTK] The installation is finished..."

echo "Installing git for code sharing"
sudo apt-get install git -y
sudo apt-get install evince -y

