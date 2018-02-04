#
# Copyright (C) 2016 The CyanogenMod Project
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

COMMON_PATH := device/samsung/exynos5420-common

# Platform
TARGET_BOARD_PLATFORM := exynos5
TARGET_SLSI_VARIANT := cm

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a15
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a15

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_HAVE_SAMSUNG_BLUETOOTH := true
BOARD_CUSTOM_BT_CONFIG := $(COMMON_PATH)/bluetooth/libbt_vndcfg.txt

# Camera
BOARD_NEEDS_MEMORYHEAPION := true
BOARD_GLOBAL_CFLAGS += -DSAMSUNG_DVFS
TARGET_HAS_LEGACY_CAMERA_HAL1 := true

# Force the screenshot path to CPU consumer
TARGET_FORCE_SCREENSHOT_CPU_PATH := true

# Kernel
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_SOURCE := kernel/samsung/exynos5420
BOARD_CUSTOM_BOOTIMG_MK := $(COMMON_PATH)/mkbootimg.mk

# Charging mode
BOARD_CHARGER_SHOW_PERCENTAGE := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_BATTERY_DEVICE_NAME := battery
BACKLIGHT_PATH := "/sys/class/backlight/panel/brightness"

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := universal5420
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# FIMG2D
BOARD_USES_SKIA_FIMGAPI := true

# Graphics
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# Mixer
BOARD_USE_BGRA_8888 := true

# Exynos display
BOARD_USES_VIRTUAL_DISPLAY := true

# HWCServices
BOARD_USES_HWC_SERVICES := true

# Include path
TARGET_SPECIFIC_HEADER_PATH += $(COMMON_PATH)/include

# Hardware
BOARD_HARDWARE_CLASS += hardware/samsung/lineagehw

# Keymaster
BOARD_USES_TRUST_KEYMASTER := true

# Media
BOARD_USE_SAMSUNG_CAMERAFORMAT_NV21 := true
BOARD_GLOBAL_CFLAGS += -DWIDEVINE_PLUGIN_PRE_NOTIFY_ERROR
TARGET_OMX_LEGACY_RESCALING := true

# OpenMAX Video
BOARD_USE_STOREMETADATA := true
BOARD_USE_METADATABUFFERTYPE := true
BOARD_USE_DMA_BUF := true
BOARD_USE_ANB_OUTBUF_SHARE := true
BOARD_USE_IMPROVED_BUFFER := true
BOARD_USE_NON_CACHED_GRAPHICBUFFER := true
BOARD_USE_GSC_RGB_ENCODER := true
BOARD_USE_CSC_HW := true
BOARD_USE_QOS_CTRL := false
BOARD_USE_S3D_SUPPORT := true
BOARD_USE_VP8ENC_SUPPORT := true

# Lower filesize by limiting dex-preoptimization
WITH_DEXPREOPT := true
WITH_DEXPREOPT_BOOT_IMG_ONLY := true

# Disable journaling on system.img to save space
BOARD_SYSTEMIMAGE_JOURNAL_SIZE := 0

# Unified PowerHAL
TARGET_POWERHAL_VARIANT := samsung

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/ramdisk/fstab.universal5420
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_RECOVERY_SWIPE := true
TARGET_RECOVERY_DENSITY := mdpi
BOARD_HAS_LARGE_FILESYSTEM := true

# Samsung Gralloc
TARGET_SAMSUNG_GRALLOC_EXTERNAL_USECASES := true

# Scaler
BOARD_USES_SCALER := true
BOARD_USES_GSC_VIDEO := true

# Webkit
ENABLE_WEBGL := true

# WFD
BOARD_USES_WFD := true

# Audio blobs
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true

# Wifi
BOARD_HAVE_SAMSUNG_WIFI          := true
BOARD_WLAN_DEVICE                := bcmdhd
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/wifi/bcmdhd_apsta.bin"

# Linker
LINKER_FORCED_SHIM_LIBS := /system/vendor/lib/egl/libGLES_mali.so|libpopcountsi2.so

# Seccomp
BOARD_SECCOMP_POLICY := device/samsung/exynos5420-common/seccomp
