#
# Copyright (C) 2013 The CyanogenMod Project
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
#

LOCAL_PATH := device/samsung/chagalllte

# Platform
BOARD_VENDOR := samsung
TARGET_SOC := exynos5420

# RIL
BOARD_PROVIDES_LIBRIL := true
# hardware/samsung/ril
BOARD_MODEM_TYPE := xmm7260
# RIL.java overwrite
BOARD_RIL_CLASS := ../../../$(LOCAL_PATH)/ril
BOARD_MODEM_NEEDS_VIDEO_CALL_FIELD := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Bootloader
TARGET_OTA_ASSERT_DEVICE := chagalllte

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/samsung/chagalllte/releasetools
TARGET_BOARD_INFO_FILE ?= device/samsung/chagalllte/board-info.txt

# Clang
USE_CLANG_PLATFORM_BUILD := true

# GPS-shims
TARGET_LD_SHIM_LIBS := /system/bin/gpsd|libshim.so

# Kernel
TARGET_KERNEL_CONFIG := lineageos_chagalllte_defconfig
BOARD_CUSTOM_BOOTIMG := true

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# lineage Hardware
BOARD_HARDWARE_CLASS := $(LOCAL_PATH)/lineagehw

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10952704 #Not using LineageOs recovery ATM so bump the size so the build doesn't complain original value 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2202009600
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12629049344
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_USES_FULL_RECOVERY_IMAGE := true
# SELinux
BOARD_SEPOLICY_DIRS += device/samsung/exynos5420-common/sepolicy
BOARD_SEPOLICY_DIRS += device/samsung/chagalllte/sepolicy

BOARD_KERNEL_CMDLINE := enforcing=0 androidboot.selinux=permissive
BOARD_HAVE_SAMSUNG_WIFI := true

WIFI_DRIVER_MODULE_ARG           := "firmware_path=/system/etc/wifi/bcmdhd_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_AP_ARG        := "firmware_path=/system/etc/wifi/bcmdhd_apsta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_BAND                        := 802_11_ABG

# Fixes screen flicker
TARGET_FORCE_SCREENSHOT_CPU_PATH := true

# Lineage Hardware
BOARD_HARDWARE_CLASS := $(COMMON_PATH)/lineagehw

# custom additions to updater-script
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/samsung/chagalllte/releasetools/ota_from_target_files

# Inherit from exynos5420-common
include device/samsung/exynos5420-common/BoardConfigCommon.mk
