# Copyright 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Device path
DEVICE_PATH := device/motorola/tesla/rootdir

# Density
TARGET_SCREEN_DENSITY := 400

# Device characteristics
DEVICE_CHARACTERISTICS += hfr

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.3-service.tesla

TARGET_USES_EGISTEC_FINGERPRINT := true
TARGET_USES_FINGERPRINT_V2_1 := false

# Model
PRODUCT_MODEL := moto edge 2022

# NFC
TARGET_USES_PN5XX_PN8X_NFC := true

# Inherit from those products. Most specific first.
$(call inherit-product, device/motorola/mt6879-common/platform.mk)

# include board vendor blobs
$(call inherit-product, vendor/motorola/tesla/tesla-vendor.mk)

BOOT_KERNEL_MODULES := $(sort \
    $(strip $(shell cat device/motorola/tesla/modules.load.recovery)) \
    $(strip $(shell cat device/motorola/tesla/modules.load.ramdisk)))
