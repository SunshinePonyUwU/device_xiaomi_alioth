#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8250-common
include device/xiaomi/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/alioth

BUILD_BROKEN_DUP_RULES := true

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Display
TARGET_SCREEN_DENSITY := 440

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_xiaomi_alioth
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_alioth

# Kernel
TARGET_KERNEL_CONFIG += vendor/xiaomi/alioth.config

# OTA assert
TARGET_OTA_ASSERT_DEVICE := alioth,aliothin

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += $(DEVICE_PATH)/framework_compatibility_matrix.xml

# Inherit from the proprietary version
include vendor/xiaomi/alioth/BoardConfigVendor.mk

# Firmware
-include vendor/xiaomi/alioth-firmware/BoardConfigVendor.mk