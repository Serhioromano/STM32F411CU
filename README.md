# How to setup

```bash
sudo add-apt-repository ppa:team-gcc-arm-embedded/ppa
sudo apt-get update
sudo apt-get install gcc-arm-none-eabi
sudo apt-get install git build-essential libusb-1.0.0-dev cmake
sudo apt install linux-tools-virtual hwdata
sudo update-alternatives --install /usr/local/bin/usbip usbip `ls /usr/lib/linux-tools/*/usbip | tail -n1` 20
sudo apt install stlink-tools
```

In Win terminal command line
winget install usbipd
usbipd wsl list
wsl attach -b 3-1?

