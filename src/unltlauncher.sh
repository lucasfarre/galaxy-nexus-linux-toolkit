#!/bin/bash

#   Copyright 2012 Lucas Andres Farre
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.


# Universal Nexus Linux Toolkit
# by lucasfarre (tatelucas)
# Apache License 2.0
# Source: http://code.google.com/p/galaxy-nexus-linux-toolkit/
# XDA Official Thread: http://forum.xda-developers.com/showthread.php?t=1810089


# /*** Environment Variables ***/

PATH="$PATH:$PWD/platform-tools"


# /*** Constants ***/

VERSION="240"
TRUE=1
FALSE=0
INVALID_DEVICE=0
INVALID_MODE=0
INVALID_KEY=-1
EXIT_KEY=0
RETURN_KEY="R"
YES_KEY="Y"
NO_KEY="N"

# Devices

HAMMERHEAD_NAME="Nexus 5 [hammerhead]"
HAMMERHEAD_ID=1

DEB_NAME="Nexus 7 2013 (LTE) [deb]"
DEB_ID=4

FLO_NAME="Nexus 7 2013 (WiFI) [flo]"
FLO_ID=3

MAKO_NAME="Nexus 4 [mako]"
MAKO_ID=2

MANTA_NAME="Nexus 10 [manta]"
MANTA_ID=7

GROUPER_NAME="Nexus 7 (WiFi) [grouper]"
GROUPER_ID=5

TILAPIA_NAME="Nexus 7 (GSM) [tilapia]"
TILAPIA_ID=6

MAGURO_NAME="Galaxy Nexus (GSM) [maguro]"
MAGURO_ID=8
TORO_NAME="Galaxy Nexus (Verizon) [toro]"
TORO_ID=9
TOROPLUS_NAME="Galaxy Nexus (Sprint) [toroplus]"
TOROPLUS_ID=10

CRESPO_NAME="Nexus S (worldwide version, i9020t and i9023) [crespo]"
CRESPO_ID=11
CRESPOA_NAME="Nexus S (850MHz version, i9020a) [crespo]"
CRESPOA_ID=12
CRESPOK_NAME="Nexus S (Korea version, m200) [crespo]"
CRESPOK_ID=13
CRESPO4G_NAME="Nexus S 4G (d720) [crespo4g]"
CRESPO4G_ID=14

# Dir Names

DEVICES_DIR="$PWD/devices"

HAMMERHEAD_DIR="$PWD/devices/hammerhead"

DEB_DIR="$PWD/devices/deb"

FLO_DIR="$PWD/devices/flo"

MAKO_DIR="$PWD/devices/mako"

MANTA_DIR="$PWD/devices/manta"

GROUPER_DIR="$PWD/devices/grouper"
TILAPIA_DIR="$PWD/devices/tilapia"

MAGURO_DIR="$PWD/devices/maguro"
TORO_DIR="$PWD/devices/toro"
TOROPLUS_DIR="$PWD/devices/toroplus"

CRESPO_DIR="$PWD/devices/crespo"
CRESPOA_DIR="$PWD/devices/crespoa"
CRESPOK_DIR="$PWD/devices/crespok"
CRESPO4G_DIR="$PWD/devices/crespo4g"

# Platform Tools Download

PLATFORM_TOOLS_32_VERSION="19"
PLATFORM_TOOLS_64_VERSION="1.0.0"
PLATFORM_TOOLS_MAC_VERSION="19"

PLATFORM_TOOLS_DIR="$PWD/platform-tools"

PLATFORM_TOOLS_32_TGZ="$PLATFORM_TOOLS_DIR/PlatformTools32-v$PLATFORM_TOOLS_32_VERSION.tgz"
PLATFORM_TOOLS_32_URL="http://galaxy-nexus-linux-toolkit.googlecode.com/files/PlatformTools32-v$PLATFORM_TOOLS_32_VERSION.tgz"
PLATFORM_TOOLS_32_MD5="38c53299f3f3f74a2d7351c306987c63"

PLATFORM_TOOLS_64_TGZ="$PLATFORM_TOOLS_DIR/PlatformTools32-v$PLATFORM_TOOLS_64_VERSION.tgz"
PLATFORM_TOOLS_64_URL="http://galaxy-nexus-linux-toolkit.googlecode.com/files/PlatformTools32-v$PLATFORM_TOOLS_64_VERSION.tgz"
PLATFORM_TOOLS_64_MD5="38c53299f3f3f74a2d7351c306987c63"

PLATFORM_TOOLS_MAC_TGZ="$PLATFORM_TOOLS_DIR/PlatformToolsMac-v$PLATFORM_TOOLS_MAC_VERSION.tgz"
PLATFORM_TOOLS_MAC_URL="http://galaxy-nexus-linux-toolkit.googlecode.com/files/PlatformToolsMac-v$PLATFORM_TOOLS_MAC_VERSION.tgz"
PLATFORM_TOOLS_MAC_MD5="a742246c0f7644800683e97bc9e04921"

# CWM Recovery Download

CWM_COMMON_URL="http://download2.clockworkmod.com/recoveries/recovery-clockwork"
CWM_TOUCH_COMMON_URL="http://download2.clockworkmod.com/recoveries/recovery-clockwork-touch"

DEB_CWM_VERSION="6.0.4.4-deb"
DEB_TWRP_URL="http://techerrata.com/file/twrp2/deb/openrecovery-twrp-2.6.3.1-deb.img"

FLO_CWM_VERSION="6.0.4.3-flo"
FLO_TWRP_URL="http://techerrata.com/file/twrp2/flo/openrecovery-twrp-2.6.3.1-flo.img"

HAMMERHEAD_CWM_VERSION=0
HAMMERHEAD_TWRP_URL="http://techerrata.com/file/twrp2/hammerhead/openrecovery-twrp-2.6.3.2-hammerhead.img"

MAKO_CWM_VERSION="6.0.4.3-mako"
MAKO_TWRP_URL="http://techerrata.com/file/twrp2/mako/openrecovery-twrp-2.6.3.3-mako.img"

MANTA_CWM_VERSION="6.0.4.3-manta"
MANTA_TWRP_URL="http://techerrata.com/file/twrp2/manta/openrecovery-twrp-2.6.3.1-manta.img"

GROUPER_CWM_VERSION="6.0.4.3-grouper"
GROUPER_TWRP_URL="http://techerrata.com/file/twrp2/grouper/openrecovery-twrp-2.6.3.1-grouper.img"
TILAPIA_CWM_VERSION="6.0.4.3-tilapia"
TILAPIA_TWRP_URL="http://techerrata.com/file/twrp2/tilapia/openrecovery-twrp-2.6.3.1-tilapia.img"

MAGURO_CWM_VERSION="6.0.4.3-maguro"
MAGURO_TWRP_URL="http://techerrata.com/file/twrp2/maguro/openrecovery-twrp-2.6.3.1-maguro.img"
TORO_CWM_VERSION="6.0.4.3-toro"
TORO_TWRP_URL="http://techerrata.com/file/twrp2/toro/openrecovery-twrp-2.6.3.1-toro.img"
TOROPLUS_CWM_VERSION="6.0.4.3-toroplus"
TOROPLUS_TWRP_URL="http://techerrata.com/file/twrp2/toroplus/openrecovery-twrp-2.6.3.1-toroplus.img"

CRESPO_CWM_VERSION="6.0.4.3-crespo"
CRESPOA_CWM_VERSION="6.0.4.3-crespo"
CRESPOK_CWM_VERSION="6.0.4.3-crespo"
CRESPO_TWRP_URL="http://techerrata.com/file/twrp2/crespo/openrecovery-twrp-2.6.3.0-crespo.img"
CRESPO4G_CWM_VERSION="6.0.4.3-crespo4g"
CRESPO4G_TWRP_URL="http://techerrata.com/file/twrp2/crespo4g/openrecovery-twrp-2.6.3.0-crespo4g.img"


# Root Zip Download

SUPERSU_VERSION="1.69"
ROOT_ZIP_URL="http://galaxy-nexus-linux-toolkit.googlecode.com/files/UPDATE-SuperSU-v$SUPERSU_VERSION.zip"

# Factory URL & MD5

FACTORY_HAMMERHEAD="https://dl.google.com/dl/android/aosp/hammerhead-krt16m-factory-bd9c39de.tgz"
MD5_HAMMERHEAD="36aa82ab2d7d05ee144d18546565cd5f"

FACTORY_FLO="https://dl.google.com/dl/android/aosp/razor-krt16o-factory-d9e7d441.tgz"
MD5_FLO="9a083ace40baa8a3f59485b9e0ecd7d2"
FACTORY_DEB="https://dl.google.com/dl/android/aosp/razorg-krt16o-factory-2b749c29.tgz"
MD5_DEB="231f858d27297208344b4c2df72833fb"

FACTORY_MAKO="https://dl.google.com/dl/android/aosp/occam-krt16o-factory-75ccae7a.tgz"
MD5_MAKO="7180251114d877d162a886d13fff1cf8"

FACTORY_MANTA="https://dl.google.com/dl/android/aosp/mantaray-krt16o-factory-85349288.tgz"
MD5_MANTA="7379d137f23e920111c437dd725504e4"

FACTORY_GROUPER="https://dl.google.com/dl/android/aosp/nakasi-krt16o-factory-db4a1a8a.tgz"
MD5_GROUPER="2d657e7c6e3bf690ef9aee07111d19dd"
FACTORY_TILAPIA="https://dl.google.com/dl/android/aosp/nakasig-krt16o-factory-9c987833.tgz"
MD5_TILAPIA="26dbd4e3e93c4521cfb1000b18c4771d"

FACTORY_MAGURO="https://dl.google.com/dl/android/aosp/yakju-jwr66y-factory-09207065.tgz"
MD5_MAGURO="e463e3e0fb251044d9bd0885ae7ac6ce"
FACTORY_TORO="https://dl.google.com/dl/android/aosp/mysid-jdq39-factory-e365033f.tgz"
MD5_TORO="4e3e2a4072e45c8e9c4bae8ce5c5c189"
FACTORY_TOROPLUS="https://dl.google.com/dl/android/aosp/mysidspr-ga02-factory.tgz"
MD5_TOROPLUS="c93156606b39a6b61d371ef935a6a6ba"

FACTORY_CRESPO="https://dl.google.com/dl/android/aosp/soju-jzo54k-factory-36602333.tgz"
MD5_CRESPO="788233dca5954532acda63039f814b4d"
FACTORY_CRESPOA="https://dl.google.com/dl/android/aosp/sojua-jzo54k-factory-1121b619.tgz"
MD5_CRESPOA="9cceb30ac64c914c06df5d16f5af2a52"
FACTORY_CRESPOK="https://dl.google.com/dl/android/aosp/sojuk-jro03e-factory-93a21b70.tgz"
MD5_CRESPOK="3f31acd14b3b464881886d2e8d2d94f4"
FACTORY_CRESPO4G="https://dl.google.com/dl/android/aosp/sojus-jro03r-factory-59a247f5.tgz"
MD5_CRESPO4G="45e55ec74e6b6e69545f3d39e9f8cb64"

# Key Combinations

KEY_COMBINATIONS_NEXUS_S="Press and hold Volume Up, then press and hold Power."
KEY_COMBINATIONS_GALAXY_NEXUS="Press and hold both Volume Up and Volume Down, then press and hold Power."
KEY_COMBINATIONS_NEXUS_7="Press and hold Volume Down, then press and hold Power."
KEY_COMBINATIONS_NEXUS_10="Press and hold both Volume Up and Volume Down, then press and hold Power."
KEY_COMBINATIONS_NEXUS_4="Press and hold Volume Down, then press and hold Power."
KEY_COMBINATIONS_NEXUS_5="Press and hold both Volume Up and Volume Down, then press and hold Power"

# Others

AUTO_MODE_ID="A"
MANUAL_MODE_ID="M"

AUTO_MODE_NAME="Automatic [ADB]"
MANUAL_MODE_NAME="Manual [FASTBOOT]"

STANDARD_CWM_ID="S"
TOUCH_CWM_ID="T"
TWRP_ID="W"

# MD5 Checksum Command

if [ "`uname -s`" == "Darwin" ];	# Mac OS
then
    MD5_COMMAND = "md5 -q"
else
	MD5_COMMAND = "md5sum"
fi

# /*** Functions ***/

printHeader () {
clear
echo "********************************************************************************"
echo "*               Universal Nexus Linux Toolkit v2.4.0 by tatelucas              *"
echo "********************************************************************************"
}

# Device chooser and set variables for selected device

deviceChooser () {
DEVICE=$INVALID_DEVICE
while [ $DEVICE == $INVALID_DEVICE ]
do
printHeader
printDeviceChooser
setDeviceVariables
done
}

printDeviceChooser () {
echo "Nexus Devices"
echo ""
echo "$HAMMERHEAD_ID. $HAMMERHEAD_NAME"
echo "$MAKO_ID. $MAKO_NAME"
echo "$FLO_ID. $FLO_NAME"
echo "$DEB_ID. $DEB_NAME"
echo "$GROUPER_ID. $GROUPER_NAME"
echo "$TILAPIA_ID. $TILAPIA_NAME"
echo "$MANTA_ID. $MANTA_NAME"
echo "$MAGURO_ID. $MAGURO_NAME"
echo "$TORO_ID. $TORO_NAME"
echo "$TOROPLUS_ID. $TOROPLUS_NAME"
echo "$CRESPO_ID. $CRESPO_NAME"
echo "$CRESPOA_ID. $CRESPOA_NAME"
echo "$CRESPOK_ID. $CRESPOK_NAME"
echo "$CRESPO4G_ID. $CRESPO4G_NAME"

echo ""
echo "$EXIT_KEY. Exit"
echo ""
echo -n "Please choose a valid option: "
read DEVICE
echo ""
}

setDeviceVariables () {
case $DEVICE in
$CRESPO_ID) DEVICE_NAME=$CRESPO_NAME
DEVICE_DIR=$CRESPO_DIR
CWM_VERSION=$CRESPO_CWM_VERSION
TWRP_URL=$CRESPO_TWRP_URL
FACTORY_URL=$FACTORY_CRESPO
MD5=$MD5_CRESPO
KEY_COMBINATIONS=$KEY_COMBINATIONS_NEXUS_S;;

$CRESPOA_ID) DEVICE_NAME=$CRESPOA_NAME
DEVICE_DIR=$CRESPOA_DIR
CWM_VERSION=$CRESPOA_CWM_VERSION
TWRP_URL=$CRESPO_TWRP_URL
FACTORY_URL=$FACTORY_CRESPOA
MD5=$MD5_CRESPOA
KEY_COMBINATIONS=$KEY_COMBINATIONS_NEXUS_S;;

$CRESPOK_ID) DEVICE_NAME=$CRESPOK_NAME
DEVICE_DIR=$CRESPOK_DIR
CWM_VERSION=$CRESPOK_CWM_VERSION
TWRP_URL=$CRESPO_TWRP_URL
FACTORY_URL=$FACTORY_CRESPOK
MD5=$MD5_CRESPOK
KEY_COMBINATIONS=$KEY_COMBINATIONS_NEXUS_S;;

$CRESPO4G_ID) DEVICE_NAME=$CRESPO4G_NAME
DEVICE_DIR=$CRESPO4G_DIR
CWM_VERSION=$CRESPO4G_CWM_VERSION
TWRP_URL=$CRESPO4G_TWRP_URL
FACTORY_URL=$FACTORY_CRESPO4G
MD5=$MD5_CRESPO4G
KEY_COMBINATIONS=$KEY_COMBINATIONS_NEXUS_S;;

$MAGURO_ID) DEVICE_NAME=$MAGURO_NAME
DEVICE_DIR=$MAGURO_DIR
CWM_VERSION=$MAGURO_CWM_VERSION
TWRP_URL=$MAGURO_TWRP_URL
FACTORY_URL=$FACTORY_MAGURO
MD5=$MD5_MAGURO
KEY_COMBINATIONS=$KEY_COMBINATIONS_GALAXY_NEXUS;;

$TORO_ID) DEVICE_NAME=$TORO_NAME
DEVICE_DIR=$TORO_DIR
CWM_VERSION=$TORO_CWM_VERSION
TWRP_URL=$TORO_TWRP_URL
FACTORY_URL=$FACTORY_TORO
MD5=$MD5_TORO
KEY_COMBINATIONS=$KEY_COMBINATIONS_GALAXY_NEXUS;;

$TOROPLUS_ID) DEVICE_NAME=$TOROPLUS_NAME
DEVICE_DIR=$TOROPLUS_DIR
CWM_VERSION=$TOROPLUS_CWM_VERSION
TWRP_URL=$TOROPLUS_TWRP_URL
FACTORY_URL=$FACTORY_TOROPLUS
MD5=$MD5_TOROPLUS
KEY_COMBINATIONS=$KEY_COMBINATIONS_GALAXY_NEXUS;;

$GROUPER_ID)  DEVICE_NAME=$GROUPER_NAME
DEVICE_DIR=$GROUPER_DIR
CWM_VERSION=$GROUPER_CWM_VERSION
TWRP_URL=$GROUPER_TWRP_URL
FACTORY_URL=$FACTORY_GROUPER
MD5=$MD5_GROUPER
KEY_COMBINATIONS=$KEY_COMBINATIONS_NEXUS_7;;

$TILAPIA_ID)  DEVICE_NAME=$TILAPIA_NAME
DEVICE_DIR=$TILAPIA_DIR
CWM_VERSION=$TILAPIA_CWM_VERSION
TWRP_URL=$TILAPIA_TWRP_URL
FACTORY_URL=$FACTORY_TILAPIA
MD5=$MD5_TILAPIA
KEY_COMBINATIONS=$KEY_COMBINATIONS_NEXUS_7;;

$MAKO_ID) 	DEVICE_NAME=$MAKO_NAME
DEVICE_DIR=$MAKO_DIR
CWM_VERSION=$MAKO_CWM_VERSION
TWRP_URL=$MAKO_TWRP_URL
FACTORY_URL=$FACTORY_MAKO
MD5=$MD5_MAKO
KEY_COMBINATIONS=$KEY_COMBINATIONS_NEXUS_4;;

$MANTA_ID)	 DEVICE_NAME=$MANTA_NAME
DEVICE_DIR=$MANTA_DIR
CWM_VERSION=$MANTA_CWM_VERSION
TWRP_URL=$MANTA_TWRP_URL
FACTORY_URL=$FACTORY_MANTA
MD5=$MD5_MANTA
KEY_COMBINATIONS=$KEY_COMBINATIONS_NEXUS_10;;

$FLO_ID)      DEVICE_NAME=$FLO_NAME
DEVICE_DIR=$FLO_DIR
CWM_VERSION=$FLO_CWM_VERSION
TWRP_URL=$FLO_TWRP_URL
FACTORY_URL=$FACTORY_FLO
MD5=$MD5_FLO
KEY_COMBINATIONS=$KEY_COMBINATIONS_NEXUS_7;;

$DEB_ID)      DEVICE_NAME=$DEB_NAME
DEVICE_DIR=$DEB_DIR
CWM_VERSION=$DEB_CWM_VERSION
TWRP_URL=$DEB_TWRP_URL
FACTORY_URL=$FACTORY_DEB
MD5=$MD5_DEB
KEY_COMBINATIONS=$KEY_COMBINATIONS_NEXUS_7;;

$HAMMERHEAD_ID)      DEVICE_NAME=$HAMMERHEAD_NAME
DEVICE_DIR=$HAMMERHEAD_DIR
CWM_VERSION=$HAMMERHEAD_CWM_VERSION
TWRP_URL=$HAMMERHEAD_TWRP_URL
FACTORY_URL=$FACTORY_HAMMERHEAD
MD5=$MD5_HAMMERHEAD
KEY_COMBINATIONS=$KEY_COMBINATIONS_NEXUS_5;;


$EXIT_KEY)  clear && exit;;

*) DEVICE=$INVALID_DEVICE;;
esac
}

# Direcories creation for selected device

dirMaker() {
if [ ! -d $DEVICES_DIR ];
then
mkdir $DEVICES_DIR
fi
if [ ! -d $DEVICE_DIR ];
then
mkdir $DEVICE_DIR
fi
if [ ! -d $DEVICE_DIR/recovery ];
then
mkdir $DEVICE_DIR/recovery
fi
if [ ! -d $DEVICE_DIR/recovery/standard ];
then
mkdir $DEVICE_DIR/recovery/standard
fi
if [ ! -d $DEVICE_DIR/recovery/touch ];
then
mkdir $DEVICE_DIR/recovery/touch
fi
if [ ! -d $DEVICE_DIR/root ];
then
mkdir $DEVICE_DIR/root
fi
if [ ! -d $DEVICE_DIR/factory ];
then
mkdir $DEVICE_DIR/factory
fi
}


# Android SDK platform tools download

platformTools () {
ERROR=$TRUE
while [ $ERROR -eq $TRUE ]
do
downloadPlatformTools
ERROR=$FALSE
# checkPlatformTools
if [ $ERROR -eq $FALSE ];
then
extractPlatformTools
fi
done
}

downloadPlatformTools () {
if [ ! -d $PLATFORM_TOOLS_DIR ];
then
echo "Downloading Platform Tools..."
mkdir $PLATFORM_TOOLS_DIR
cd $PLATFORM_TOOLS_DIR
if [ "`uname -s`" == "Darwin" ];	# Mac OS
then
	  PLATFORM_TOOLS_URL=$PLATFORM_TOOLS_MAC_URL
	  PLATFORM_TOOLS_TGZ=$PLATFORM_TOOLS_MAC_TGZ
	  PLATFORM_TOOLS_MD5=$PLATFORM_TOOLS_MAC_MD5
elif [ "`uname -m`" == "x86_64" ];
then
	  PLATFORM_TOOLS_URL=$PLATFORM_TOOLS_32_URL
	  PLATFORM_TOOLS_TGZ=$PLATFORM_TOOLS_32_TGZ
	  PLATFORM_TOOLS_MD5=$PLATFORM_TOOLS_32_MD5
else
	  PLATFORM_TOOLS_URL=$PLATFORM_TOOLS_32_URL
	  PLATFORM_TOOLS_TGZ=$PLATFORM_TOOLS_32_TGZ
	  PLATFORM_TOOLS_MD5=$PLATFORM_TOOLS_32_MD5
fi
wget $PLATFORM_TOOLS_URL
fi
}

checkPlatformTools () {
cd $PLATFORM_TOOLS_DIR
if [ -e $PLATFORM_TOOLS_TGZ ] && [ $PLATFORM_TOOLS_MD5 != "`$MD5_COMMAND $PLATFORM_TOOLS_TGZ | head -c 32`" ];
then
ERROR=$TRUE
echo "ERROR: Platform Tools are corrupted. Erasing..."
cd ..
rm -r $PLATFORM_TOOLS_DIR
echo "Erased. Please try again later."
fi
}

extractPlatformTools () {
cd $PLATFORM_TOOLS_DIR
if [ -e $PLATFORM_TOOLS_TGZ ];
then
tar -xzf $PLATFORM_TOOLS_TGZ
rm $PLATFORM_TOOLS_TGZ
fi
}

# Choose mode and set variables for selected mode
modeChooser () {
MODE=$INVALID_MODE
while [ $MODE == $INVALID_MODE ]
do
printHeader
printModeChooser
setModeVariables
done
}

printModeChooser () {
echo "Modes"
echo ""
echo "$AUTO_MODE_ID. Automatic [Requires USB debugging enabled. Recommended for most devices]"
echo "$MANUAL_MODE_ID. Manual [Requires keys combinations. Recommended for Non-Booting devices]"
echo ""
echo "$EXIT_KEY. Exit"
echo ""
echo -n "Please choose a mode: "
read MODE
echo ""
}

setModeVariables () {
case $MODE in
$AUTO_MODE_ID) SELECTED_MODE=$AUTO_MODE_NAME;;
$MANUAL_MODE_ID) SELECTED_MODE=$MANUAL_MODE_NAME;;
$EXIT_KEY) clear && exit;;
*) MODE=$INVALID_MODE;;
esac
}

# Main Menu User Interface

printDevice () {
echo "Selected Device: $DEVICE_NAME"
}

printMode () {
echo "Selected Mode: $SELECTED_MODE"
echo ""
}

printMenu () {
echo "1. Unlock the Bootloader"
echo "2. Flash ClockworkMod/TWRP Recovery"
echo "3. Root the Device"
echo "4. Lock the Bootloader"
if [ $DEVICE != $DEB_ID ];
then
echo "5. Flash Google Factory Image"
fi
echo "6. Donate"
echo "0. Exit"
echo ""
echo -n "Please choose a valid option: "
}

returnMenu () {
echo ""
echo "Press ENTER to return to the main menu..."
echo ""
read KEY
}

# Unlock Bootloader

bootloader () {
printBootloaderHeader
printModeManual
while [ $KEY != $NO_KEY ] && [ $KEY != $YES_KEY ]
do
printHeader
printBootloaderHeader
printModeManual
done
if [ $KEY == $YES_KEY ];
then
runBootloaderCommands
let UNLOCK_COUNTER+=1
returnMenu
fi
}

printBootloaderHeader () {
echo "Unlock the Bootloader"
echo ""
}

printModeManual () {
if [ $MODE == $MANUAL_MODE_ID ];
then
printBootloaderManual
else
printAndroidDebuggingManual
fi
}

printBootloaderManual () {
echo "Before starting the process your device must be in Bootloader Mode."
echo "In the following instructions you will learn how to do it:"
echo ""
echo "1. Power off the device."
echo "2. $KEY_COMBINATIONS"
echo "3. Your device screen should show an image of an opened android."
echo "   You're now in the Bootloader Mode! If you don't see the image,"
echo "   you must follow the instructions again."
echo "4. Please connect the device to your PC via USB."
echo -n "5. Do you want to start the process? [$YES_KEY/$NO_KEY]: "
read KEY
echo ""
}

printAndroidDebuggingManual () {
echo "Before starting the process your device must be in Android Debugging Mode."
echo "In the following instructions you will learn how to do it:"
echo ""
echo "1. Power on your device and connect the device to your PC via USB."
echo "2. Go to 'Settings' >> 'Developer options', turn ON the switch,"
echo "   and check 'USB debugging'. You're now in Android Debugging Mode!"
echo "   Note: If you're running Android 4.2 or above, first go to"
echo "         'Settings' >> 'About phone' and tap 7 times on 'Build number'."
echo -n "3. Do you want to start the process? [$YES_KEY/$NO_KEY]: "
read KEY
echo ""
}

runBootloaderCommands () {
if [ $MODE == $AUTO_MODE_ID ];
then
rebootBootloader
fi
fastboot oem unlock
if [ $MODE == $AUTO_MODE_ID ];
then
rebootAndroid
fi
}

rebootBootloader () {
adb reboot bootloader
}

rebootAndroid () {
fastboot reboot
}

# Flash CWM Recovery

recovery () {
printRecoveryHeader
printRecoveryMenu
while [ $KEY != $STANDARD_CWM_ID ] && [ $KEY != $TOUCH_CWM_ID ] && [ $KEY != $TWRP_ID ] && [ $KEY != $RETURN_KEY ]
do
printHeader
printRecoveryHeader
printRecoveryMenu
done
if [ $KEY != $RETURN_KEY ];
then
if [ $KEY == $STANDARD_CWM_ID ];
then
RECOVERY_VERSION="standard"
elif [ $KEY == $TOUCH_CWM_ID ];
then
RECOVERY_VERSION="touch"
else
RECOVERY_VERSION="twrp"
fi
printHeader
printRecoveryHeader
printModeManual
if [ $KEY == $YES_KEY ];
then
downloadRecovery
runRecoveryCommands
printRecoveryManual
let RECOVERY_COUNTER+=1
returnMenu
fi
fi
}

printRecoveryHeader () {
echo "Flash ClockworkMod Recovery"
echo ""
}

printRecoveryMenu () {
echo "$STANDARD_CWM_ID. Standard CWM Recovery"
echo "$TOUCH_CWM_ID. Touch CWM Recovery"
echo "$TWRP_ID. Touch TWRP Recovery"
echo ""
echo "$RETURN_KEY. Return to the main menu"
echo ""
echo -n "Please choose a valid option: "
read KEY
}

downloadRecovery () {
cd $DEVICE_DIR/recovery/$RECOVERY_VERSION
if [ ! -e recovery.img ];
then
 echo "Downloading CWM Recovery..."
if [ $DEVICE == $HAMMERHEAD_ID ]; then
wget -O recovery.img $HAMMERHEAD_TWRP_URL;
elif [ $RECOVERY_VERSION == "standard" ]; then
wget -O recovery.img $CWM_COMMON_URL-$CWM_VERSION.img
elif [ $RECOVERY_VERSION == "touch" ]; then
wget -O recovery.img $CWM_TOUCH_COMMON_URL-$CWM_VERSION.img;
else
wget -O recovery.img $TWRP_URL;
fi
fi
}

runRecoveryCommands () {
if [ $MODE == $AUTO_MODE_ID ];
then
rebootBootloader
fi
fastboot flash recovery $DEVICE_DIR/recovery/$RECOVERY_VERSION/recovery.img
}

printRecoveryManual () {
echo ""
echo "a. Select 'Recovery mode' with Volume up and down and then press Power."
echo "b. Choose 'reboot system now' and select 'Yes - Disable recovery flash'"
echo "c. Select 'Yes - Root device'"
}

# Root the device

root () {
printHeader
printRootHeader
printAndroidDebuggingManual
while [ $KEY != $NO_KEY ] && [ $KEY != $YES_KEY ]
do
printHeader
printRootHeader
printAndroidDebuggingManual
done
if [ $KEY == $YES_KEY ];
then
printRootManual
downloadRootZip
runRootCommands
let ROOT_COUNTER+=1
returnMenu
fi
}

printRootHeader () {
echo "Root the device"
echo ""
}

printRootManual () {
echo "4. Wait for automatically reboot in Recovery Mode."
echo "5. Go to 'install zip from sdcard' >> 'choose zip from sdcard' >> 'UNLT'"
echo "   and choose 'su.zip'."
echo "6. Go to 'Go back' >> 'reboot system now'."
}

downloadRootZip () {
cd $DEVICE_DIR/root
if [ ! -e su.zip ]
then
wget -O su.zip $ROOT_ZIP_URL
fi
}

runRootCommands () {
adb shell mkdir /sdcard/UNLT
adb push $DEVICE_DIR/root/su.zip /sdcard/UNLT
adb reboot recovery
}

#  Flash Google Factory Image

factory () {
printHeader
printFactoryHeader
printModeManual
while [ $KEY != $NO_KEY ] && [ $KEY != $YES_KEY ]
do
printHeader
printFactoryHeader
printModeManual
done
if [ $KEY == $YES_KEY ];
then
downloadFactoryImage
ERROR=$FALSE
checkFactoryImage
if [ $ERROR -eq $FALSE ];
then
extractFactoryImage
runFactoryCommands
fi
let FACTORY_COUNTER+=1
returnMenu
fi
}

printFactoryHeader () {
echo "Flash Google Factory Image"
echo ""
}

downloadFactoryImage () {
cd $DEVICE_DIR/factory
if [ ! -e factory.tgz ];
then
echo "Downloading Factory Image..."
wget -O factory.tgz $FACTORY_URL
fi
}

checkFactoryImage () {
if [ $MD5 != "`$MD5_COMMAND factory.tgz | head -c 32`" ];
then
ERROR=$TRUE
echo "ERROR: Google Factory Image is Corrupted. Erasing..."
rm factory.tgz
echo "Erased. Please try again later."
fi
}

extractFactoryImage () {
cd $DEVICE_DIR/factory
if [ -d extract_here ];
then
rm -r extract_here
fi
tar -xzf factory.tgz
mv `ls -d */` extract_here
}

runFactoryCommands () {
if [ $MODE == $AUTO_MODE_ID ];
then
rebootBootloader
fi
cd $DEVICE_DIR/factory/extract_here
bash flash-all.sh
}

# Lock the Bootloader

lockBootloader () {
printLockHeader
printModeManual
while [ $KEY != $NO_KEY ] && [ $KEY != $YES_KEY ]
do
printHeader
printLockHeader
printModeManual
done
if [ $KEY == $YES_KEY ];
then
runLockCommands
let LOCK_COUNTER+=1
returnMenu
fi
}

printLockHeader () {
echo "Lock the Bootloader"
echo ""
}

runLockCommands () {
if [ $MODE == $AUTO_MODE_ID ];
then
rebootBootloader
fi
fastboot oem lock
if [ $MODE == $AUTO_MODE_ID ];
then
rebootAndroid
fi
}

# Donate

donate () {
printDonateHeader
printDonateInfo
returnMenu
}

printDonateHeader () {
echo "Donate"
echo ""
}

printDonateInfo () {
echo "If you found useful this toolkit, please buy me a coffee."
echo "PayPal Donation email: lucasfarre@gmail.com"
echo "I will really appreciate your help! :D"
}

# Exit Toolkit

exitToolkit () {
EXIT=$TRUE
clear
}

# /*** Main ***/

ERROR=$FALSE
deviceChooser
dirMaker
platformTools
modeChooser
EXIT=$FALSE
while [ $EXIT -eq $FALSE ]
do
printHeader
printDevice
printMode
printMenu
read OPTION
printHeader
case $OPTION in
1) bootloader;;
2) recovery;;
3) root;;
4) lockBootloader;;
5) factory;;
6) donate;;
0) exitToolkit;;
*) ;;
esac
done
exit
