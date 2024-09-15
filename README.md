# Raspberry Pi 4 Emulator Setup

## Steps

1. Install Docker and Git.
2. Build the Docker environment with QEMU to emulate Raspberry Pi 4.
3. Run the container using Docker Compose.
4. Start and interact with the emulated environment.

Docker build command : docker-compose build
Run Emulator Command : docker-compose up
Interact with emulator : docker exec -it rpi4-emulator /bin/bash

