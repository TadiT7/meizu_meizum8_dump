#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:20736928:254c1613a2ee9b850608b0f5e2312ec86deaa3ea; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/bootdevice/by-name/boot:10564512:4d6cae29299dfe9b05bf15125eda8342eb88554f EMMC:/dev/block/platform/bootdevice/by-name/recovery 254c1613a2ee9b850608b0f5e2312ec86deaa3ea 20736928 4d6cae29299dfe9b05bf15125eda8342eb88554f:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
