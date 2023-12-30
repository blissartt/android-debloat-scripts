#!/bin/bash
sudo apt install lolcat
echo "For this to work you need ADB debugging enabled on your device, your phone has to be connected via USB and it will be needed on-device confirmation. THIS DOES NOT NEED SUDO TO RUN.
Do you wish to continue?"
read continue
if [[ $continue == y* ]]; then
    echo "Thanks, proceding...
    
    "
else
    echo "Aborting...
    
    "
fi


#echo "Setting up Android SKDs..."
#sudo apt install android-tools-adb android-tools-fastboot
#sleep 2
#echo "ADB was set up!

#" | lolcat


echo "Starting ADB... This will ask you for on-device confirmation.
Do you wish to continue?"
read continue
if [[ $continue == y* ]]; then
    echo "Thanks, proceding..."
else
    echo "Aborting...
    
    "
fi
sleep 1
adb start-server
sleep 1
echo "Server Started!

" | lolcat


echo "Uninstalling Duo... "
adb shell pm uninstall --user 0 com.google.android.apps.tachyon
sleep .5
echo "Done!

"| lolcat


echo Uninstalling Google Files... 
adb shell pm uninstall --user 0 com.google.android.apps.nbu.files
sleep .5
echo "Done!

"| lolcat


echo Uninstalling Google Gallery Go...
adb shell pm uninstall --user 0 com.google.android.apps.photosgo
sleep .5
echo "Done!

"| lolcat


echo "Uninstalling Gmail..."
adb shell pm uninstall --user 0 com.google.android.gm.lite
sleep .5
echo "Done!

"| lolcat


echo "Uninstalling Google Assistant..."
adb shell pm uninstall --user 0 com.google.android.apps.assistant
sleep .5
echo "Done!

"| lolcat


echo "Uninstalling MapsGo packages..."
adb shell pm uninstall --user 0 com.google.android.apps.mapslite
adb shell pm uninstall --user 0 com.google.android.apps.navlite
sleep .5
echo "Done!

"| lolcat


echo "Uninstalling Youtube Apps..."
adb shell pm uninstall --user 0 com.google.android.youtube
adb shell pm uninstall --user 0 com.google.android.youtube
sleep .5
echo "Done!

"| lolcat


echo "Uninstalling Galaxy Store...
Do you wish to continue?"
read continue
if [[ $continue == y* ]]; then
    echo "Thanks, proceding...
    
    "
else
    echo "Aborting...
    
    "
fi
sleep .7
adb shell pm uninstall --user 0 com.sec.android.app.samsungapp
sleep .5s
echo "Done!

" | lolcat


echo "Uninstalling Samsung Internet-web browser... 
Do you wish to continue?"
read continue
if [[ $continue == y* ]]; then
    echo "Thanks, proceding...
    
    "
else
    echo "Aborting...
    
    "
fi
sleep .7
adb shell pm uninstall --user 0 com.sec.android.app.sbrowser.lite
sleep .5
echo "Done!

"| lolcat


echo "Uninstalling Game Tools..."
adb shell pm uninstall --user 0 com.samsung.android.game.gametools
adb shell pm uninstall --user 0 com.samsung.android.game.gamehome
sleep .5
echo "Done!

"| lolcat


echo "Uninstalling Gboard..."
adb shell pm uninstall --user 0 com.sec.android.inputmethod
sleep .5
echo "Done!

"| lolcat


echo "Uninstalling Google Go..."
adb shell pm uninstall --user 0 com.google.android.apps.searchlite
sleep .5
echo "Done!

"| lolcat


echo "Uninstalling Google Text-to-Speech..."
adb shell pm uninstall --user 0 com.google.android.tts
sleep .5
echo "Done!

"| lolcat

echo "Uninstalling Google Chrome..."
adb shell pm uninstall --user 0 com.android.chrome
sleep .5
echo "Done!

"| lolcat


sleep 3


echo "Phone succesfully debloated! Exiting... "| lolcat
