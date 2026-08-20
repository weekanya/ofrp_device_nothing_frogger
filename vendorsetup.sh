#!/usr/bin/env bash
#
# Copyright (C) 2026 The OrangeFox Recovery Project
# SPDX-License-Identifier: Apache-2.0
#

# Device Identification
export FOX_BUILD_DEVICE="Frogger"
export FOX_TARGET_DEVICES="Frogger,frogger,A069"
export FOX_BUILD_TYPE="Unofficial"
export OF_MAINTAINER="wee"

# Architecture and Partitions (A/B and Virtual A/B)
export FOX_AB_DEVICE=1
export FOX_VIRTUAL_AB_DEVICE=1
export OF_DYNAMIC_FULL_SIZE=9126805504

# Display / Notch / Status Bar (1224 x 2720 AMOLED)
export OF_SCREEN_H=2720
export OF_STATUS_H=100
export OF_STATUS_INDENT_LEFT=48
export OF_STATUS_INDENT_RIGHT=48
export OF_ALLOW_DISABLE_NAVBAR=0
export OF_CLOCK_POS=1

# Binaries & Utilities (OrangeFox Built-in Tools)
export FOX_USE_BASH_SHELL=1
export FOX_ASH_IS_BASH=1
export FOX_USE_TAR_BINARY=1
export FOX_USE_SED_BINARY=1
export FOX_USE_XZ_UTILS=1
export FOX_USE_NANO_EDITOR=1
export OF_ENABLE_LPTOOLS=1
export OF_USE_HEXDUMP=1

# Magisk, Encryption & Patching
export OF_USE_MAGISKBOOT=1
export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
export OF_DONT_PATCH_ON_FRESH_INSTALLATION=1
export OF_KEEP_FORCED_ENCRYPTION=1
export OF_PATCH_AVB20=1
export FOX_DELETE_AROMAFM=1
export FOX_BUGGED_AOSP_ARB_WORKAROUND="1610582400"
export OF_DEVICE_WITHOUT_MIGT=1

# Quick Backup Defaults
export OF_QUICK_BACKUP_LIST="/boot;/init_boot;/data;/super;"
