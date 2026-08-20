#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 The OrangeFox Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common config
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from Frogger device
$(call inherit-product, device/nothing/Frogger/device.mk)
$(call inherit-product, device/nothing/Frogger/twrp_config.mk)

PRODUCT_DEVICE := Frogger
PRODUCT_NAME := fox_Frogger
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A069
PRODUCT_MANUFACTURER := nothing

PRODUCT_GMS_CLIENTID_BASE := android-nothing

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Frogger-user 14 UKQ1.250915.001 2606301839 release-keys"

BUILD_FINGERPRINT := Nothing/Frogger/Frogger:14/UKQ1.250915.001/2606301839:user/release-keys
