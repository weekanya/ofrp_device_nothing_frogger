#!/system/bin/sh

# Load touch drivers if they didn't load
# Adapted from chickendrop89

DRIVERS="focaltech_fts qts goodix_ts"
MODULES_DIR="/lib/modules"

for d in $DRIVERS; do
  lsmod | grep -q "^$d" && continue
  path=$(find "$MODULES_DIR" -name "$d.ko" | head -n 1)
  if [ -f "$path" ]; then
    insmod "$path"
    echo "Force inserted module: $d" >>/tmp/recovery.log
  fi
done

# Restore true OS release from system build.prop (foxstart.sh erroneously prioritizes vendor's Android 14 BSP)
sys_prop="/FFiles/temp/system_build_prop"
os_rel=""
if [ -f "$sys_prop" ]; then
  os_rel=$(grep "^ro.system.build.version.release=" "$sys_prop" | head -n 1 | cut -d= -f2)
  [ -z "$os_rel" ] && os_rel=$(grep "^ro.build.version.release=" "$sys_prop" | head -n 1 | cut -d= -f2)
fi
[ -z "$os_rel" ] && os_rel="16"

resetprop ro.build.version.release "$os_rel"
resetprop ro.build.version.release_or_codename "$os_rel"
resetprop ro.build.version.release_or_preview_display "$os_rel"

# Wait for qseecomd listeners if needed (up to 3 seconds)
for i in $(seq 1 30); do
  [ "$(getprop vendor.sys.listeners.registered)" = "true" ] && break
  sleep 0.1
done

# Dynamic KeyMint & Keystore2 reload:
# TWRP mounts /system and /vendor to dynamically override ro.build.version.security_patch,
# ro.vendor.build.security_patch, and ro.build.version.release from the installed ROM.
# Restart KeyMint HAL and Keystore2 so KeyMint re-reads these updated properties into its
# internal state and Keystore2 binds to the active KeyMint instance before decryption starts.
sec_patch=$(getprop ro.build.version.security_patch)
ven_patch=$(getprop ro.vendor.build.security_patch)
echo "OrangeFox dynamic crypto props: OS $os_rel, patch $sec_patch, vendor patch $ven_patch" >>/tmp/recovery.log

if [ "$(getprop init.svc.vendor.keymint-qti)" = "running" ] || [ "$(getprop vendor.sys.listeners.registered)" = "true" ]; then
  echo "Restarting vendor.keymint-qti and keystore2 with dynamic ROM security patch..." >>/tmp/recovery.log
  stop keystore2
  stop vendor.keymint-qti
  start vendor.keymint-qti
  start keystore2
fi


