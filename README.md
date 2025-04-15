# C++ Raylib GUI Development in GitHub Codespaces

This repository provides a fully automated development environment for building C++ applications using Raylib in GitHub Codespaces. It includes a lightweight XFCE desktop environment accessible through your browser via noVNC.

## Features

- Raylib built from source automatically
- Lightweight XFCE4 desktop environment
- noVNC for browser-based GUI access
- VNC session running inside Codespaces
- All necessary Raylib development dependencies pre-installed

## Quick Start

### 1. Open in Codespaces

After cloning this repo, ensure that your file heirachy matches the one at the bottom of this readme. Ensure that the .devcontainer folder is at the root of your directory or you may run into issues.

Click on "Code" → "Codespaces" → "Create Codespace on main"

This will launch a cloud-based development container and begin provisioning the environment.

> Initial setup may take a few minutes as packages are installed and Raylib is built from source.

If this does not occur automatically then ``` Ctrl + Shift + P ``` to bring up the command terminal at the top of the codespace, and search Codespaces: Rebuild Container.
You will select Full Rebuild then wait for everything to configure.

### 2. Open the Desktop GUI

Once the container is ready, open the "Ports" tab in the Codespaces panel and click on port 6080, then "Open in Browser".

If prompted for a password, enter: ```password```


You will be presented with a lightweight XFCE desktop inside your browser window.

## Running Your Raylib Application

1. Add your Raylib-based `.cpp` file to the workspace.
2. Open a terminal in the Codespaces GUI or in the web-based XFCE desktop (`xterm` is included).
3. Compile your project using:

```bash
g++ main.cpp -o app -lraylib -lGL -lm -lpthread -ldl -lrt -lX11 
```

more documentation on raylib can be found here ```https://github.com/raysan5/raylib```
The reason I opted for raylib over other GUI libraries is its support for 2d and 3d graphics, and since CS 259 is about instancing objects it seems like a good fit.
# Run the file

```bash
 ./app
```
# File Overview
```
.devcontainer/
├── devcontainer.json    # Sets up the container image, features, ports, and postCreate command
├── setup.sh             # Installs Raylib, XFCE, VNC, and dependencies, starts the XFCE desktop via VNC and launches noVNC
```
