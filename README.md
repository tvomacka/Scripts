# Scripts

## Quick Tips

The scripts (at least development.ps1 for Windows machines) need to be run as Administrator, otherwise some components such as Sublime Text will not be installed.

# Setup

## Windows

### Create Win11 VM (createWin11VM.ps1)

- Creates a Hyper-V VM that is capable of installing Windows 11 from a provided .iso file
- Credit: https://techcommunity.microsoft.com/t5/itops-talk-blog/how-to-run-a-windows-11-vm-on-hyper-v/ba-p/3713948

### Development Machine (development.ps1)

The following software is installed:
 - Visual Studio Code
 - Visual Studio 2022 Community Edition
 - Google Chrome
 - GitHub Desktop
 - Sublime Text 4
 - Python3
 - Paint.NET
 - Inkscape

## TODO

 - Add C/C++ compiler to MSVS
  - Package installation to Sublime Text (JSON re-indent)
 - Make sure the C/C++ development is possible in MSVC and VSC (compilation, etc.)
 - Remove the unnecessary extensions from VSC

# Tricks

Various tips and tricks to be used with different scripting tools.

- wildcards.ps1 idea taken from [How Hackers Hide](https://www.youtube.com/watch?v=WJlqQYyzGi8&ab_channel=JohnHammond)
