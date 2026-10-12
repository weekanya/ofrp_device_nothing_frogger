#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
DEVICE_PATH := device/nothing/Frogger

# A/B
$(call inherit-product, \
    $(SRC_TARGET_DIR)/product/virtual_ab_ota/vabc_features.mk)

PRODUCT_PACKAGES += \
    snapuserd \
    snapuserd.recovery \
    snapuserd.vendor_ramdisk

PRODUCT_VIRTUAL_AB_COMPRESSION_METHOD := lz4
PRODUCT_VIRTUAL_AB_COMPRESSION := true

# GSI
$(call inherit-product, $(SRC_TARGET_DIR)/product/developer_gsi_keys.mk)

# Emulated storage
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

PRODUCT_PACKAGES_DEBUG += \
    update_engine_client

# F2FS
PRODUCT_PACKAGES += \
    sg_write_buffer \
    f2fs_io \
    check_f2fs

# FastbootD support
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

PRODUCT_EXTRA_RECOVERY_KEYS += \
    $(DEVICE_PATH)/security/otacert

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := nosdcard

# Rootdir
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(DEVICE_PATH)/recovery/root/,$(TARGET_COPY_OUT_RECOVERY)/root/)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH) \
    vendor/qcom/opensource/commonsys-intf/display

PRODUCT_PROPERTY_OVERRIDES += persist.sys.fuse.passthrough.enable=true

# API levels
PRODUCT_SHIPPING_API_LEVEL := 34
PRODUCT_TARGET_VNDK_VERSION := 34
BOARD_SHIPPING_API_LEVEL := 34
SHIPPING_API_LEVEL := 34
