#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/raphael/lineage_raphael.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/maruos/device-maru.mk)
$(call inherit-product, vendor/maruos/BoardConfigVendor.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := raphael
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi K20 Pro
PRODUCT_NAME := maru_raphael

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="raphael" \
    TARGET_DEVICE="raphael"

#BUILD_FINGERPRINT := "google/walleye/walleye:9/PQ2A.190405.003/5310204:user/release-keys"

MARU_VERSION := 0.8-test
MARU_BUILD_VERSION := $(MARU_VERSION)-$(shell date -u +%Y%m%d)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Lineage stuff
TARGET_BOOT_ANIMATION_RES := 1080x2340
EXTRA_FOD_ANIMATIONS := true

DEVICE_PACKAGE_OVERLAYS += \
    device/xiaomi/raphael/overlay_maru/daydream
