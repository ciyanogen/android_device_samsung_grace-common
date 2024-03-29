#
# Copyright (C) 2017 Fernando Von Arx <fer.vonarx@gmail.com>
# Copyright (C) 2017 Jesse Chan <cjx123@outlook.com>
# Copyright (C) 2017 Ivan Meler <i_ivan@windowslive.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#

LOCAL_PATH := device/samsung/grace-common

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Platform
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := exynos5
TARGET_SLSI_VARIANT := bsp
TARGET_SOC := exynos8890
TARGET_BOOTLOADER_BOARD_NAME := universal8890
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x02000000

# Thermal hal
TARGET_THERMAL_HAL := slsi

# Audio HAL variant
TARGET_AUDIOHAL_VARIANT := samsung

# Binder
TARGET_USES_64_BIT_BINDER := true

# Use SDFat for exfat driver
TARGET_EXFAT_DRIVER := sdfat

# Security
VENDOR_SECURITY_PATCH := 2019-02-01

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# Init
TARGET_INIT_VENDOR_LIB := libinit_sec

# HIDL Manifest
DEVICE_MANIFEST_FILE := $(LOCAL_PATH)/configs/manifest.xml

# Hax
MALLOC_SVELTE := true

# Image
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100
TARGET_CUSTOM_DTBTOOL := dtbhtoolExynos

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/samsung/grace-common/releasetools

# Properties
TARGET_SYSTEM_PROP := device/samsung/grace-common/system.prop

# Renderscript
BOARD_OVERRIDE_RS_CPU_VARIANT_32 := cortex-a53.a57
BOARD_OVERRIDE_RS_CPU_VARIANT_64 := exynos-m1

# SELinux
# BOARD_SEPOLICY_DIRS := device/samsung/grace-common/sepolicy

# SECComp filters
BOARD_SECCOMP_POLICY += device/samsung/grace-common/seccomp

# Inherit board specific defines
-include device/samsung/grace-common/board/*.mk

# Inherit from the proprietary version
-include vendor/samsung/grace-common/BoardConfigVendor.mk
-include vendor/seal/seal/BoardConfigVendor.mk
