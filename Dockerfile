# Use Ubuntu as the base image
FROM ubuntu:20.04

# Set environment variable to avoid interactive package configuration prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install required dependencies
RUN apt-get update && apt-get install -y \
    qemu qemu-system qemu-user-static \
    binfmt-support debootstrap curl \
    sudo git

# Download and install Raspberry Pi OS using debootstrap
RUN mkdir -p /rpi \
    && debootstrap --arch=arm64 focal /rpi http://ports.ubuntu.com/ubuntu-ports/ \
    && apt-get install -y qemu-system-arm
