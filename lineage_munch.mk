#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from device makefile
$(call inherit-product, device/xiaomi/munch/device.mk)

# Include GMS by default, but rely on environment variable just in case we don't want to build with GMS conditionally
WITH_GAPPS = true
TARGET_CORE_GAPPS = true

PRODUCT_NAME := lineage_munch
PRODUCT_DEVICE := munch
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := Poco F4

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Redmi/munch/munch:13/RKQ1.211001.001/V14.0.1.0.TLMMIXM:user/release-keys
