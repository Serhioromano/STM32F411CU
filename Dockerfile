FROM debian:bookworm

RUN apt update && apt upgrade -y
RUN apt install -y stlink-tools \
    git wget lbzip2 make cmake \
    lbzip2


#  -y && dnf install -y \
#     git \
#     wget \
#     make \
#     cmake \
#     glibc-locale-source \
#     findutils \
#     clang-tools-extra

# RUN wget -q https://developer.arm.com/-/media/Files/downloads/gnu-rm/10.3-2021.10/gcc-arm-none-eabi-10.3-2021.10-x86_64-linux.tar.bz2 -O /tmp/gcc-arm-none-eabi-10.3.tar.bz2
# RUN mkdir -p /opt/gcc-arm-none-eabi-10.3
# RUN tar -xf /tmp/gcc-arm-none-eabi-10.3.tar.bz2 -C /opt/gcc-arm-none-eabi-10.3 --strip-components=1
# RUN ln -s /opt/gcc-arm-none-eabi-10.3/bin/* /usr/local/bin
# RUN rm -rf /tmp/*

# ARG UID
# ARG GID
# ARG USERNAME
# ARG GROUPNAME
# RUN groupadd --gid $GID $GROUPNAME
# RUN useradd --uid $UID --gid $GID $USERNAME
# RUN usermod --append --groups $GROUPNAME $USERNAME
# RUN usermod --shell /bin/bash $USERNAME

# USER $USERNAME


# RUN apt-get update

# RUN apt-get install \
#     git wget cmake  stlink-tools \
#     # build tools for openocd
#     libhidapi-hidraw0 \
#     libusb-0.1-4 \
#     libusb-1.0-0 \
#     libhidapi-dev \
#     libusb-1.0-0-dev \
#     libusb-dev \
#     libtool \ 
#     make \
#     automake \
#     pkg-config \
#     tclsh \
#     telnet \
#     -y


# # Install arm-none-eabi compiler
# RUN wget https://github.com/xpack-dev-tools/arm-none-eabi-gcc-xpack/releases/download/v9.3.1-1.1/xpack-arm-none-eabi-gcc-9.3.1-1.1-linux-x64.tar.gz
# RUN tar xf xpack-arm-none-eabi-gcc-9.3.1-1.1-linux-x64.tar.gz
# RUN cp -rf xpack-arm-none-eabi-gcc-9.3.1-1.1/* /usr/local/
# RUN rm -rf xpack-arm-none-eabi-gcc-9.3.1-1.1

# # build openocd from source
# RUN git clone https://github.com/openocd-org/openocd.git \
#     && cd openocd \
#     && ./bootstrap \ 
#     && ./configure --enable-stlink \
#     && make -j"$(nproc)" \
#     && make install-strip \
#     && cd .. \
#     && rm -rf openocd


CMD bin/bash