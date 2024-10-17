# THIS IS A WORK IN PROGRESS.

# REF:
# https://learn.adafruit.com/circuitpython-on-raspberrypi-linux/installing-circuitpython-on-raspberry-pi


# Things I will eventually need:
# pip install board serial adafruit_pm25 busio digitalio


# APT installs for Python.
sudo apt-get update \
    && sudo apt-get -y upgrade \
    && sudo apt-get install python3-pip python3-venv python3-setuptools

# Create venv, install blinka.
cd ~
python3 -m venv env --system-site-packages

pip3 install --upgrade adafruit-python-shell
wget https://raw.githubusercontent.com/adafruit/Raspberry-Pi-Installer-Scripts/master/raspi-blinka.py
sudo -E env PATH=$PATH python3 raspi-blinka.py