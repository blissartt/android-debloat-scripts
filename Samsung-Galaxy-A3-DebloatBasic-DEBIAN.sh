#!/bin/bash
apt install lolcat
echo "For this to work you need ADB debugging enabled on your device, your phone has to be connected via USB and it will be needed on-device confirmation. THIS DOES NOT NEED SUDO TO RUN.
Do you wish to continue?" | lolcat
read continue
if [[ $continue == y* ]]; then
    echo "Thanks, proceding...
    
    "
else
    echo "Aborting... 
    
    " | lolcat
fi


echo "Setting up Android SKDs..."
sudo apt install android-tools-adb android-tools-fastboot
sudo apt install lolcat
sleep 2
echo "ADB was set up! 

" | lolcat


echo "Starting ADB... This will ask you for on-device confirmation.
Do you wish to continue?" | lolcat
read continue
if [[ $continue == y* ]]; then
    echo "Thanks, proceding..." | lolcat
else
    echo "Aborting...
    
    " | lolcat
fi
sleep 1
adb start-server
sleep 1
echo "Server Started!

" | lolcat


echo "Uninstalling Briefing... " | lolcat
adb shell pm uninstall --user 0 flipboard.boxer.app
sleep .5
echo "Done!

"| lolcat


echo "Uninstalling Android Default Apps..." | lolcat
adb shell pm uninstall --user 0 com.samsung.android.calendar
adb shell pm uninstall --user 0 com.sec.android.camera
adb shell pm uninstall --user 0 com.sec.android.app.clockpackage 
adb shell pm uninstall --user 0 com.samsung.android.contacts
adb shell pm uninstall --user 0 com.diotek.sec.lookup.dictionary
adb shell pm uninstall --user 0 com.samsung.android.email.provider
adb shell pm uninstall --user 0 com.android.documentsui
adb shell pm uninstall --user 0 com.sec.android.gallery3d
adb shell pm uninstall --user 0 com.samsung.android.messaging
adb shell pm uninstall --user 0 com.sec.android.app.myfiles
adb shell pm uninstall --user 0 com.sec.android.mimage.photoretouching
adb shell pm uninstall --user 0 com.sec.android.app.fm
adb shell pm uninstall --user 0 com.samsung.voiceserviceplatform
adb shell pm uninstall --user 0 com.samsung.knox.securefolder
adb shell pm uninstall --user 0 com.sec.android.easyMover.Agent
adb shell pm uninstall --user 0 com.samsung.android.video
adb shell pm uninstall --user 0 com.samsung.app.newtrim
adb shell pm uninstall --user 0 com.sec.android.app.voicenote
adb shell pm uninstall --user 0 com.sec.android.wallpapercropper2
adb shell pm uninstall --user 0 com.sec.android.daemonapp
adb shell pm uninstall --user 0 com.sec.android.app.popupcalculator
sleep .5
echo "Done!

"| lolcat


echo "Uninstalling Google's Bloat..." | lolcat
adb shell pm uninstall --user 0 com.google.android.youtube
adb shell pm uninstall --user 0 com.android.chrome
adb shell pm uninstall --user 0 com.google.android.app.docs
adb shell pm uninstall --user 0 com.dropbox.android
adb shell pm uninstall --user 0 com.samsung.android.game.gamehome
adb shell pm uninstall --user 0 com.enhance.gameservice
adb shell pm uninstall --user 0 com.google.android.pm
adb shell pm uninstall --user 0 com.google.android.quicksearchbox
adb shell pm uninstall --user 0 com.google.android.videos
adb shell pm uninstall --user 0 com.google.android.music
adb shell pm uninstall --user 0 com.android.vending
adb shell pm uninstall --user 0 com.google.android.tts
adb shell pm uninstall --user 0 com.google.android.talk
adb shell pm uninstall --user 0 com.google.android.apps.maps
adb shell pm uninstall --user 0 com.google.android.apps.photos
adb shell pm uninstall --user 0 com.google
sleep .5
echo "Done!

"| lolcat


echo "Uninstalling Samsung's Bloat..." | lolcat
adb shell pm uninstall --user 0 com.samsung.android.samsungapassautofill
adb shell pm uninstall --user 0 com.samsung.android.app.galaxyfinder
adb shell pm uninstall --user 0 com.sec.android.widgetapp.samsungapps
adb shell pm uninstall --user 0 com.sec.android.app.samsungapps
adb shell pm uninstall --user 0 com.samsung.android.keyguardwallpaperupdator
adb shell pm uninstall --user 0 com.samsung.android.sdk.professional.audio.utility
adb shell pm uninstall --user 0 com.osp.app.signin
adb shell pm uninstall --user 0 com.sec.android.app.billing
adb shell pm uninstall --user 0 com.samsung.android.scloud
adb shell pm uninstall --user 0 com.samsung.android.mateagent
adb shell pm uninstall --user 0 com.sec.android.app.shealth
adb shell pm uninstall --user 0 com.sec.android.app.sbrowser
adb shell pm uninstall --user 0 com.samsung.android.voc
adb shell pm uninstall --user 0 com.samsung.android.app.notes
adb shell pm uninstall --user 0 com.samsung.android.samsungpass
adb shell pm uninstall --user 0 com.samsung.android.spay
adb shell pm uninstall --user 0 com.samsung.android.themestore
adb shell pm uninstall --user 0 com.samsung.android.oneconnect
adb shell pm uninstall --user 0 com.samsung.android.beaconmanager
adb shell pm uninstall --user 0 com.samsung.android.easysetup
adb shell pm uninstall --user 0 com.samsung.android.app.talkback
adb shell pm uninstall --user 0 com.sec.android.service.health
sleep .5
echo "Done!

"| lolcat


echo "Uninstalling Pre-Installed Apps..." | lolcat
adb shell pm uninstall --user 0 com.facebook.katana
adb shell pm uninstall --user 0 com.facebook.system
adb shell pm uninstall --user 0 com.facebook.appmanager
adb shell pm uninstall --user 0 com.facebook.services
adb shell pm uninstall --user 0 com.instagram.android
adb shell pm uninstall --user 0 com.sem.factoryapp
adb shell pm uninstall --user 0 com.android.carrierdefaultapp
adb shell pm uninstall --user 0 com.android.carrierconfig
adb shell pm uninstall --user 0 com.microsoft.office.excel
adb shell pm uninstall --user 0 com.microsoft.skydrive
adb shell pm uninstall --user 0 com.microsoft.office.powerpoint
adb shell pm uninstall --user 0 com.microsoft.office.word
adb shell pm uninstall --user 0 com.linkedin.android
adb shell pm uninstall --user 0 com.sec.android.app.magnifier
adb shell pm uninstall --user 0 com.skype.raider
adb shell pm uninstall --user 0 com.sec.android.app.soundalive
adb shell pm uninstall --user 0 com.samsung.android.themecenter
adb shell pm uninstall --user 0 de.axelspringer.yana.zeropage

sleep 3


echo "Phone succesfully debloated! Exiting... "| lolcat
