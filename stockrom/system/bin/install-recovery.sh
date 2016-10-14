#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 12699664 ca5b46e5fc50f274887ba89983d6a7a08bd178a5 9889808 0d9c985d4676e38bd42b5318c18bd3910c2990b4
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:12699664:ca5b46e5fc50f274887ba89983d6a7a08bd178a5; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:9889808:0d9c985d4676e38bd42b5318c18bd3910c2990b4 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery ca5b46e5fc50f274887ba89983d6a7a08bd178a5 12699664 0d9c985d4676e38bd42b5318c18bd3910c2990b4:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
