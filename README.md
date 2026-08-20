# twrp_device_nothing_frogger

Recovery tree for the Nothing Phone (4a), codenamed `frogger`.


## Information

Device                  | Nothing Phone (4a)
:-----------------------|:-------------------------------------------
SoC                     | Qualcomm Snapdragon® 7s Gen 4 (SM7635-AC)
Board                   | `volcano`
CPU                     | Octa-core (1x2.7 GHz Cortex-A720 & 3x2.4 GHz Cortex-A720 & 4x1.8 GHz Cortex-A520)
GPU                     | Adreno 810
Memory                  | 8/12 GB RAM
Shipped Android version | Android 16 (Nothing OS 4.0)
Storage                 | 128/256 GB UFS 3.1
Micro SD                | None
Battery                 | Non-removable 5080 mAh
Dimensions              | 164 x 77.6 x 8.6 mm
Display                 | 6.78" AMOLED, 120Hz (1224 × 2720 pixels)

Recovery        | OrangeFox Recovery Project (R12.1)
:---------------|:---------------------------
Branch          | fox_14.1
Manifest        | https://gitlab.com/OrangeFox/sync.git


> [!NOTE]
> Please don't ask for support until I add it sometime later.

## Checklist

### Functionality

- [x] Installing and flashing images
    - [x] .zip files (experimental)
    - [x] .img files (working)
- [x] Backup and restore
    - [x] To external/removable devices (e.g. OTG device)
- [x] Built-in features work normally
    - [x] ADB
        - [x] Sideload
    - [x] FastbootD
    - [x] Screen and brightnesss
    - [x] Touchscreen
    - [x] MTP
    - [x] Filesystem/Mounts
    - [x] Slot switch
    - [ ] Haptics
- [x] Settings persistence
- [x] Data decryption
    - [x] Without a password
    - [x] With a password

