# Android-debloat-scripts

Are you tired of buying a brand new Android smartphone, only to find that it packed with pre-installed bloatware?
Me too.


These scripts are made to debloat your smartphone using the Android Debug Bridge(ADB for short) to remove unwanted packages or privacy invasive bloatware. For now only 2 scripts are available, I will and more in the future. Still, many packages have the same name even of different devices or Android version.

##DISCLAIMER: I am not resposible for anything happening to your device, these scripts are given "as is" without any warranty. Still you can contact me if you have something to ask.
=====================

## Preparation
For the script to work USB debugging needs to be enabled on the device.
Here's how to enable it:

1. Go to the settings app and scroll down to "About Phone".
2. Enter the "Software information" page.
3. Tap on the option "Build number until it asks you to confirm enabling Developer Options".
4. Go into the "Developer Options", find and enable USB Debugging.

## Installation
Choose your specific distro script (for example, choose the ARCH one if you are on a Arch based system).
========

If you are on a Debian-based system, there is no need to install anything: the script will do everything for you. 

If you are on a Fedora or Arch based systems you will need to install these:

- lolcat

- android-tools-adb

- android-tools-fastboot

and then run the script.

## Usage
To use the desired script, run:

chmod a+x NAME-OF-THE-SCRIPT.sh

./NAME-OF-THE-SCRIPT.sh



