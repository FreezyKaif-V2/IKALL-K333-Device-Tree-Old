#!/system/bin/sh

um
if [ $? != "0" ]; then
	echo "Unable to unmount!"
	exit 1
fi


if [ -e /dev/block/mmcblk1p1 ];
then
	mount /sdcard > /dev/null 2>&1;
	cp -f /tmp/recovery.log /sdcard/

else
	echo "No sdcard found!";
	exit 1;
fi;

exit 0;