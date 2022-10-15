#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from pioneer device
$(call inherit-product, device/sony/pioneer/device.mk)

PRODUCT_DEVICE := pioneer
PRODUCT_NAME := omni_pioneer
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia XA2
PRODUCT_MANUFACTURER := sony

PRODUCT_GMS_CLIENTID_BASE := android-sony

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="H3113-user 8.0.0 50.1.A.4.76 2209478692 release-keys"

BUILD_FINGERPRINT := Sony/H3113/H3113:8.0.0/50.1.A.4.76/2209478692:user/release-keys
