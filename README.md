# Rhythm Tengoku

This is a decompilation of Rhythm Tengoku for the Gameboy Advance. It can build either a fully byte-for-byte matching ROM from scratch, or rebuild a different functionally equivalent ROM with a different memory layout to be easier to mod with. This can be controlled with the `NONMATCHING` parameter when building.

This repository requires an unmodified ROM of Rhythm Tengoku (rev. 0) to build. This ROM will not be provided for you.

When built in matching mode, it builds the following ROMs:

* **rhythmtengoku.gba** `sha1: 67f8adacff79c15d028fffd90de3a77d9ad0602d`
* **rhythmtengoku_rev1.gba** `sha1: e0aaca45045e408e7e1072bde5b39278111e1952`


## Installation

To install the decomp, you need access to a Linux terminal. If you are on Windows 10 or 11, you can access a Linux terminal easily by installing **WSL (Windows Subsystem for Linux)**. If you are already on Linux, you can skip to the **Installing Dependencies** section, or you could [build this project with docker](docker/INSTALL.md). Otherwise, follow this guide to install WSL:

#### Installing WSL

To install WSL, first open up either a Command Prompt or Windows PowerShell window as an administrator. Run the command `wsl --install` to automatically install WSL defaulting to the Ubuntu distribution. Once the process finishes, restart your computer to finish the installation.

*Note: you will need to have virtualization enabled in your BIOS settings to use WSL, so if you encounter issues, check how to boot into BIOS and enable virtualization for your computer. For any other issues with installation, you can refer to the [official installation guide](https://docs.microsoft.com/en-us/windows/wsl/install).*
<br>
Once WSL is installed, upon opening it you will be prompted for a username and password. Note that when typing in the password, the characters will not show up, not even as asterisks, so type carefully as you will need to remember your password.

Once you've created a user, you should run two more commands to finish setting up your terminal. First, run `sudo apt update`, and then after this command has finished, run `sudo apt upgrade`. These commands will require you to enter your password. When prompted with `Do you want to continue? [Y/n]`, simply enter `y`. After doing this, WSL should be fully set up and ready to use.
<br>
It is also recommended to mount WSL to a drive letter to access your WSL filesystem from Windows more easily. To do this, follow [this guide](https://github.com/HackerN64/HackerSM64/wiki/Mounting-WSL-to-Drive).

If you are not familiar with the Linux terminal, a helpful command to know is `cd` which will change the current working directory. `cd ~/` will take you to your home directory, where it is recommended to store the repository. Additionally, copy and pasting in the WSL terminal is done through right-clicking instead of Ctrl+C / Ctrl+V, so to paste commands from this guide into your terminal, simply copy them with Ctrl+C, and then right click in your terminal to paste.


#### Installing Dependencies

To install the required dependencies for the decomp, first run this command:

`sudo apt install build-essential binutils-arm-none-eabi git libpng-dev ffmpeg`

After this, you should also run this command:

`sudo ln -s /proc/self/mounts /etc/mtab`

This command can help with issues with WSL when installing devkitPro. It is not always necessary to run, and may throw an error. If it does error, don't worry and just move on to the next step.

After this, you will need to install devkitPro. This process is very involved, so just run all these listed commands in this order, entering your password when prompted:

`wget https://apt.devkitpro.org/install-devkitpro-pacman`
`chmod +x ./install-devkitpro-pacman`
`sudo ./install-devkitpro-pacman`
`export DEVKITPRO=/opt/devkitpro`
`export DEVKITARM=/opt/devkitpro/devkitARM`
`export DEVKITPPC=/opt/devkitpro/devkitPPC`
`sudo dkp-pacman -Sy`
`sudo dkp-pacman -S gba-dev`

After running the final command, press enter and then type `y` to finish installing.


#### Cloning the Repository

Now you are ready to clone the repository. First, navigate to your home directory with `cd ~/` and then run this command:

`git clone https://github.com/arthurtilly/rhythmtengoku rt`

This will clone the repository into a folder named `rt` in your home directory. You can change `rt` to some other name if you wish to name the repository folder something else.

Before building the ROM, you will also need to install agbcc, the compiler used for Rhythm Tengoku. Make sure you are still in your home directory, and run

`git clone https://github.com/pret/agbcc`

After this, navigate to the agbcc directory with `cd ~/agbcc` and build the compiler by running `./build.sh`. Finally, install the compiler into the Rhythm Tengoku decomp repository by running `./install.sh ~/rt`.

Lastly, you will need to acquire an unmodified rev0 Rhythm Tengoku ROM in order to build the decomp. This ROM is not provided, and you must source it yourself. Once you obtain this ROM, rename it to `baserom.gba` and place it in the `rt` directory.


#### Building the ROM

You are finally ready to build the repository! Navigate to the repository folder with `cd ~/rt`, and build the ROM by running `make -j`. (The `-j` parameter makes the build process able to run on multiple cores of your CPU, heavily speeding up the process.) Once the ROM has finished building, it will output a file at `build/rhythmtengoku.gba`! This is your compiled ROM.

## Using the decomp to mod Rhythm Tengoku

If you wish to create mods for Rhythm Tengoku, you should install a code editor in order to be able to easily edit code files. The recommended editor is **VSCode**. Once you install VSCode, you should also install the WSL and C/C++ extensions from the sidebar. Open a WSL window by clicking on the very bottom-left of the VSCode window, and open your `rt` repository.

When modding, it is recommended to compile the ROM in nonmatching mode in order to make adding new files easier. To do this, open the `Makefile` file in the root of the repository. Find the line near the top that reads `NONMATCHING ?= 0` and change this to `NONMATCHING ?= 1`. This will set up your repository to focus on being easy to use for modding rather than building a matching ROM byte-for-byte.

Now you are free to make any changes! After you make a change, run `make -j` to rebuild the ROM and see your changes in action. By default the `make` command will only rebuild changed files in order to save time when building. This can occasionally lead to dependency issues, so you can run `make clean` to force the repository to build from scratch to occasionally help with strange issues when building.

If you have any other questions or concerns, join the [RHModding discord server](https://discord.com/invite/ps4rq53)!