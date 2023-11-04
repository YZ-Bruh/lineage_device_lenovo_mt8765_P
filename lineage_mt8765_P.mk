#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from mt8765_P device
$(call inherit-product, device/lenovo/mt8765_P/device.mk)

PRODUCT_DEVICE := mt8765_P
PRODUCT_NAME := lineage_mt8765_P
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-7305X
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo-rev2

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_mt8765_P-user 9 PPR1.180610.011 90 release-keys"

BUILD_FINGERPRINT := Lenovo/LenovoTB-7305X_S/7305X:9/PPR1.180610.011/S000061_200429_ROW:user/release-keys
