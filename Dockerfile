FROM debian:bullseye

# Install dependencies
RUN apt-get update && apt-get install -y \
    qemu qemu-system qemu-user-static \
    binfmt-support debootstrap curl

# Download and install Raspberry Pi OS using debootstrap
RUN mkdir -p /rpi \
    && debootstrap --arch=arm64 bullseye /rpi http://raspbian.raspberrypi.org/raspbian/ \
    && curl https://archive.raspbian.org/raspbian.public.key | apt-key add - \
    && echo "deb http://raspbian.raspberrypi.org/raspbian/ bullseye main contrib non-free rpi" > /rpi/etc/apt/sources.list

# Set up QEMU
RUN apt-get install -y qemu-system-arm
