#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from venus device
$(call inherit-product, device/xiaomi/venus/device.mk)

# Inherit some common DerpFest stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_AOSP_RECOVERY := true

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := venus
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := M2011K2G
PRODUCT_NAME := derp_venus

# DerpFest Stuffs
TARGET_BOOT_ANIMATION_RES := 1440

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
PRODUCT_SYSTEM_NAME := venus_global
PRODUCT_SYSTEM_DEVICE := venus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="venus_global-user 13 RKQ1.211001.001 V14.0.4.0.TKBMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Xiaomi/venus_global/venus:13/RKQ1.211001.001/V14.0.4.0.TKBMIXM:user/release-keys