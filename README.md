# How to setup

```bash
sudo add-apt-repository ppa:team-gcc-arm-embedded/ppa
sudo apt-get update
sudo apt-get install gcc-arm-none-eabi
sudo apt-get install git build-essential libusb-1.0.0-dev cmake
sudo apt install linux-tools-virtual hwdata
sudo update-alternatives --install /usr/local/bin/usbip usbip `ls /usr/lib/linux-tools/*/usbip | tail -n1` 20
sudo apt install stlink-tools
sudo systemctl restart udev
sudo /etc/init.d/udev restart
sudo apt -y install openocd
```

To attach ST Link connector to WSL

```cmd
winget install usbipd
usbipd wsl list
usbipd wsl attach -b 3-1?
```

Update toolchain Ubuntu

```bash
sudo apt-get remove --auto-remove gcc-arm-none-eabi
ARM_TOOLCHAIN_VERSION=$(curl -s https://developer.arm.com/downloads/-/arm-gnu-toolchain-downloads | grep -Po '<h4>Version \K.+(?=</h4>)')
curl -Lo gcc-arm-none-eabi.tar.xz "https://developer.arm.com/-/media/Files/downloads/gnu/${ARM_TOOLCHAIN_VERSION}/binrel/arm-gnu-toolchain-${ARM_TOOLCHAIN_VERSION}-x86_64-arm-none-eabi.tar.xz"
sudo mkdir /opt/gcc-arm-none-eabi
sudo tar xf gcc-arm-none-eabi.tar.xz --strip-components=1 -C /opt/gcc-arm-none-eabi
echo 'export PATH=$PATH:/opt/gcc-arm-none-eabi/bin' >> ~/.bashrc
sudo tee -a /etc/profile.d/gcc-arm-none-eabi.sh
source  ~/.bashrc
arm-none-eabi-gcc --version
arm-none-eabi-g++ --version
rm -rf gcc-arm-none-eabi.tar.xz
```

https://www.youtube.com/watch?v=FNDp1G0bYoU&t=1157s

GDB debug

```bash
sudo apt install -y libncursesw5 gdb-multiarch
arm-none-eabi-gdb --version
```


Docker way

docker build -t stm32 .
docker run --rm  --privileged -it -v $(pwd):/home/dev stm32