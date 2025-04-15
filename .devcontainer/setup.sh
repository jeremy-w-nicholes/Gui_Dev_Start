#!/bin/bash
set -e

echo "[+] Installing Raylib dependencies..."
sudo apt-get update
sudo apt-get install -y --no-install-recommends \
    build-essential cmake git \
    libgl1-mesa-dev libglu1-mesa-dev \
    libx11-dev libxcursor-dev libxrandr-dev libxi-dev \
    libxinerama-dev libxext-dev libxrender-dev libxft-dev \
    libasound2-dev libpulse-dev

echo "[+] Cloning and building Raylib..."
if [ ! -f "/usr/local/include/raylib.h" ]; then
    git clone https://github.com/raysan5/raylib.git --depth=1
    cd raylib
    mkdir build && cd build
    cmake .. -DCMAKE_BUILD_TYPE=Release
    make -j$(nproc)
    sudo make install
    cd ../..
    rm -rf raylib
else
    echo "[=] Raylib already installed."
fi

echo "[✓] Setup complete! You can now code with Raylib + C++ inside your desktop-lite Codespace."

