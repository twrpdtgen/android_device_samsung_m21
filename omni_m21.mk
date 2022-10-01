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

# Inherit from m21 device
$(call inherit-product, device/samsung/m21/device.mk)

PRODUCT_DEVICE := m21
PRODUCT_NAME := omni_m21
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M215F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="m21nsxx-user 12 SP1A.210812.016 M215FXXU3CVH1 release-keys"

BUILD_FINGERPRINT := samsung/m21nsxx/m21:12/SP1A.210812.016/M215FXXU3CVH1:user/release-keys
