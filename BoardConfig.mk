#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/mayfly

# Inherit from sm8450-common
include device/xiaomi/sm8450-common/BoardConfigCommon.mk

# Light
TARGET_SENSOR_NOTIFIER_EXT := //device/xiaomi/mayfly:libsensor-notifier-ext-light

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/properties/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/properties/vendor.prop

# Display
TARGET_SCREEN_DENSITY := 440

# Kernel modules
BOOT_KERNEL_MODULES += \
    goodix_fod.ko \
    qcom_pm8008-regulator.ko \
    fts_touch_spi.ko \
    qcom-hv-haptics.ko
BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD += $(BOOT_KERNEL_MODULES)
BOARD_VENDOR_KERNEL_MODULES_LOAD += $(BOOT_KERNEL_MODULES)

# Vibrator
TARGET_QTI_VIBRATOR_EFFECT_LIB := libqtivibratoreffect.xiaomi
TARGET_QTI_VIBRATOR_USE_EFFECT_STREAM := true

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 100

# Include proprietary files
include vendor/xiaomi/mayfly/BoardConfigVendor.mk
