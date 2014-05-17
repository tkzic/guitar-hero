#!/bin/bash
if [[ $EUID -ne 0 ]]; then
	echo -e "This script must be run as root!" 1>&2
	exit 1
fi
echo -e "Tattiebogle Xbox 360 Controller Driver Uninstall Script"
echo -e "Unplug all controllers and close the driver preference pane!\n\n"


echo -e "*Unloading kernel extensions..."
kexts=`kextstat | grep 'com.mice' | awk '{ print $6 }'`

for kext in $kexts
do
 kextunload -v 2 -b $kext
done

echo -e "*Uninstall using pkgutil (graceful)..."

#This generates a lot of "unable to unlink" errors. Why? We're running as root, so it should just delete the files.
#For now, let's make it quieter...
pkgutil --force --unlink com.mice.pkg.Xbox360controller > /dev/null 2>&1

echo -e "*Uninstall (bruteforce)..."

echo -e "*Removing driver kernel extensions..."
rm -rfv "/System/Library/Extensions/360Controller.kext"
rm -rfv "/System/Library/Extensions/Wireless360Controller.kext"
rm -rfv "/System/Library/Extensions/WirelessGamingReceiver.kext"

echo -e "*Removing preference pane..."
rm -rfv "/Library/PreferencePanes/Pref360Control.prefPane"

echo -e "*Removing daemon..."
rm -rfv "/Library/StartupItems/360ControlDaemon"

echo -e "*Removing receipts (graceful)..."
pkgutil --force --forget com.mice.pkg.Xbox360controller

echo -e "*Removing receipts (bruteforce)..."
rm -fv /var/db/receipts/com.mice.pkg.Xbox360controller*

echo -e "*Deleting misc receipts..."
rm -fv /var/db/receipts/us.ontech.360controllerModInstaller*

echo -e "Done"