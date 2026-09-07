# OrangeFox Recovery Project for Nothing Phone (4a)

Recovery device tree for the Nothing Phone (4a) (`frogger` / `A069`).

## Device Specifications

| Specification | Value |
| :--- | :--- |
| Device | Nothing Phone (4a) |
| Codename | `frogger`, `Frogger`, `A069` |
| SoC | Qualcomm Snapdragon® 7s Gen 4 (SM7635-AC) |
| Board | `volcano` |
| CPU | Octa-core (1x2.7 GHz Cortex-A720 & 3x2.4 GHz Cortex-A720 & 4x1.8 GHz Cortex-A520) |
| GPU | Adreno 810 |
| Memory | 8 / 12 GB LPDDR4X |
| Storage | 128 / 256 GB UFS 3.1 |
| Battery | Non-removable 5080 mAh |
| Display | 6.78" AMOLED, 120Hz (1224 × 2720 pixels) |

## Build Information

| Item | Value |
| :--- | :--- |
| Recovery | OrangeFox Recovery Project (R12.0 / R12.1) |
| Branch | `fox_14.1` |
| Manifest | https://gitlab.com/OrangeFox/sync.git |
| Maintainer | **wee** ([@weeqz](https://t.me/weeqz)) |

## Credits

- **[wee](https://t.me/weeqz) or [github wee](https://github.com/weekanya)** — OFRP maintainer, bugfixes, battery/ADSP charging fix, thermal config, metadata encryption and FBE decryption fixes.
- **[imqiyton](https://github.com/newqiyton)** — Initial device tree and bringup.
- **OrangeFox Recovery Project** team.
- **TeamWin Recovery Project** (TWRP).

---

## Status & Features Checklist

### Core Features
- [x] **Data Decryption**:
  - [x] Hardware Metadata Encryption (TrustZone KeyMint v16 / 2026-08-05 patchlevel)
  - [x] File-Based Encryption (FBE) with PIN / pattern / password
  - [x] Decryption without password / default key
- [x] **Flashing & Partitions**:
  - [x] Flashing ZIP installers (Magisk, custom zips) with `/dev/block/by-name` support
  - [x] Flashing partition images (.img)
  - [x] Dynamic Partitions (erofs / f2fs / ext4)
  - [x] Virtual A/B and slot switching (`bootctl`)
- [x] **Hardware & Sensors**:
  - [x] Touchscreen & multi-touch
  - [x] Display refresh rate (120 Hz / 60 Hz toggle)
  - [x] Brightness slider control
  - [x] Real-time CPU temperature monitor
  - [x] Battery percentage and charging indicator (ADSP GLINK firmware boot)
  - [x] AAC RichTap Haptics (vibration feedback)
- [x] **Connectivity & Storage**:
  - [x] ADB (shell, push, pull, sideload)
  - [x] FastbootD
  - [x] MTP file transfer
  - [x] Backup & Restore to internal storage and USB-OTG
  - [x] Persistent settings

