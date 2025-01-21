#!/bin/bash

echo "For this to work you need ADB debugging enabled on your device, your phone has to be connected via USB and it will be needed on-device confirmation.
Do you wish to continue? [y/n]"
read continue
if [[ $continue == y* ]]; then
    echo "Thanks, proceding..."
else
    echo "Aborting..."
    exit
fi

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "For this to work you need the ADB and FASTBOOT package installed on your device.
Which distro are you on?
1. Arch Linux or derivatives
2. Debian or derivatives
3. Fedora or derivatives
4. Exit
5. Skip
[1/2/3/4/5]"
read continue
if [[ $continue == "1" ]]; then
    echo "Installing Arch Linux package..."
	sudo pacman -Syy --noconfirm >/dev/null 2>&1
	sudo pacman -S android-tools --noconfirm >/dev/null 2>&1
elif [[ $continue == "2" ]]; then
	echo "Installing Debian package..."
    sudo apt update -y >/dev/null 2>&1
    sudo apt install adb fastboot -y >/dev/null 2>&1	
elif [[ $continue == "3" ]]; then
	echo "Installing Fedora package..."
	sudo dnf check-update --assumeyes >/dev/null 2>&1
	sudo dnf install --assumeyes android-tools >/dev/null 2>&1
elif [[ $continue == "4" ]]; then
	echo "Exiting..."
	exit
elif [[ $continue == "5" ]]; then
	echo "Skipping..."
fi
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "This will ask for on-device confirmation..."
adb kill-server
adb start-server

echo "Uninstalling Android Default Apps..."
adb shell pm uninstall --user 0 com.samsung.android.calendar
adb shell pm uninstall --user 0 com.sec.android.app.clockpackage 
adb shell pm uninstall --user 0 com.samsung.android.contacts
adb shell pm uninstall --user 0 com.diotek.sec.lookup.dictionary
adb shell pm uninstall --user 0 com.samsung.android.email.provider
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

"


echo "Uninstalling Google's Bloat..."
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
adb shell pm uninstall --user 0 com.google.android.apps.photos
sleep .5
echo "Done!

"


echo "Uninstalling Samsung's Bloat..."
adb shell pm uninstall --user 0 com.samsung.android.samsungapassautofill
adb shell pm uninstall --user 0 com.samsung.android.app.galaxyfinder
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
adb shell pm uninstall --user 0 com.samsung.android.allshare.service.mediashare
adb shell pm uninstall --user 0 com.samsung.android.app.mirrorlink
adb shell pm uninstall --user 0 com.samsung.android.app.watchmanagerstub
adb shell pm uninstall --user 0 com.samsung.android.app.simplesharing
adb shell pm uninstall --user 0 com.samsung.android.app.aasaservice
adb shell pm uninstall --user 0 com.samsung.android.app.camera.sticker.facear.preload
adb shell pm uninstall --user 0 com.samsung.android.app.camera.sticker.stamp.preload
adb shell pm uninstall --user 0 com.samsung.android.app.withtv
adb shell pm uninstall --user 0 com.samsung.android.app.authfw
adb shell pm uninstall --user 0 com.samsung.android.drivelink.stub
adb shell pm uninstall --user 0 com.samsung.android.fmm
adb shell pm uninstall --user 0 com.samsung.android.game.gametools
adb shell pm uninstall --user 0 com.samsung.android.samsungpassautofill
adb shell pm uninstall --user 0 com.samsung.android.spayfw
adb shell pm uninstall --user 0 com.samsung.android.stickercenter
sleep .5
echo "Done!

"


echo "Uninstalling Pre-Installed Apps..."
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
adb shell pm uninstall --user 0 com.samsung.android.themecenter
adb shell pm uninstall --user 0 de.axelspringer.yana.zeropage
sleep .5
echo "Done"

echo "Do you want to install basic free and open source apps? [y/n]"
read continue
if [[ $continue == y* ]]; then
    echo "Thanks, proceding..."
    wget https://github.com/FossifyOrg/Contacts/releases/latest/download/contacts-3-foss-release.apk >/dev/null 2>&1
    adb install -g contacts-3-foss-release.apk
    rm -rf contacts-3-foss-release.apk
    wget https://github.com/FossifyOrg/Gallery/releases/latest/download/gallery-9-foss-release.apk >/dev/null 2>&1
    adb install -g gallery-9-foss-release.apk
    rm -rf gallery-9-foss-release.apk
    wget https://github.com/FossifyOrg/Phone/releases/latest/download/phone-5-foss-release.apk >/dev/null 2>&1
    adb install -g phone-5-foss-release.apk
    rm -rf phone-5-foss-release.apk
    wget https://github.com/FossifyOrg/Messages/releases/latest/download/messages-6-foss-release.apk >/dev/null 2>&1
    adb install -g messages-6-foss-release.apk
    rm -rf messages-6-foss-release.apk
    wget https://github.com/FossifyOrg/Clock/releases/latest/download/clock-1-foss-release.apk >/dev/null 2>&1
    adb install -g clock-1-foss-release.apk
    rm -rf clock-1-foss-release.apk
    wget https://github.com/Droid-ify/client/releases/latest/download/app-release.apk >/dev/null 2>&1
    adb install -g app-release.apk
    rm -rf app-release.apk
else
    echo "Aborting..."
fi


echo "Phone succesfully debloated! Exiting... "
