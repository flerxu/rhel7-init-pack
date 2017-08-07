# Disable some filesystems 
echo "install cramfs /bin/true"  >> /etc/modprobe.d/n-filesystem.conf
echo "install freevxfs /bin/true"  >> /etc/modprobe.d/n-filesystem.conf
echo "install jffs2 /bin/true"  >> /etc/modprobe.d/n-filesystem.conf
echo "install hfs /bin/true"  >> /etc/modprobe.d/n-filesystem.conf
echo "install hfsplus /bin/true"  >> /etc/modprobe.d/n-filesystem.conf
echo "install squashfs /bin/true"  >> /etc/modprobe.d/n-filesystem.conf
echo "install udf /bin/true"  >> /etc/modprobe.d/n-filesystem.conf

# Disable dccp and sctp protocols
echo "install dccp /bin/true"  >> /etc/modprobe.d/n-protocol.conf
echo "install sctp /bin/true"  >> /etc/modprobe.d/n-protocol.conf

# Disable bluetooth module
echo "install bluetooth /bin/true" > /etc/modprobe.d/bluetooth.conf

# Disable USB device.
echo "install usb-storage /bin/true" > /etc/modprobe.d/usb-storage.conf

# Disable iphone and Android device
#mv /usr/lib/udev/rules.d/69-libmtp.rules /usr/lib/udev/rules.d/69-libmtp.rules.bk
#mv /usr/lib/udev/rules.d/40-libgphoto2.rules /usr/lib/udev/rules.d/40-libgphoto2.rules.bk
#mv /lib/udev/rules.d/85-usbmuxd.rules /lib/udev/rules.d/85-usbmuxd.rules.bk
#mv usr/lib/udev/rules.d/40-libgphoto2.rules /usr/lib/udev/rules.d/40-libgphoto2.rules.bk
