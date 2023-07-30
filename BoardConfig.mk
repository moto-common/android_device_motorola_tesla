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

# Platform
PRODUCT_PLATFORM := mt6879
include device/motorola/mt6879-common/PlatformConfig.mk

# Bootloader Name
TARGET_BOOTLOADER_BOARD_NAME := tesla

# Partition Information
BOARD_SUPER_PARTITION_SIZE := 10787749888
BOARD_SUPER_PARTITION_GROUPS := mot_dynamic_partitions
BOARD_MOT_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor product
BOARD_MOT_DYNAMIC_PARTITIONS_SIZE := 5389680640

BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := $(BOARD_BOOTIMAGE_PARTITION_SIZE)


TARGET_NO_RECOVERY := true

BOARD_VENDOR_RAMDISK_KERNEL_MODULES_LOAD := $(strip $(shell cat device/motorola/tesla/modules.load.ramdisk))
BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD := $(strip $(shell cat device/motorola/tesla/modules.load.recovery))
BOARD_VENDOR_KERNEL_MODULES_LOAD := $(strip $(shell cat device/motorola/tesla/modules.load))
BOARD_VENDOR_KERNEL_MODULES :=  $(foreach module,$(BOARD_VENDOR_KERNEL_MODULES_LOAD),$(TARGET_DEVICE_DIR)-kernel/modules/$(module))
