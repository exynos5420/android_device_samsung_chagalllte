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

PRODUCT_CHARACTERISTICS := tablet
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal large xlarge

# Audio HAL
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths_0.xml:system/etc/mixer_paths_0.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_PROPERTY_OVERRIDES += \
    audio_hal.force_voice_config=wide \
    audio_hal.disable_two_mic=true

PRODUCT_PACKAGES += \
    audio.primary.universal5420

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1600

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/configs/gps/gps.xml:system/etc/gps.xml

PRODUCT_PACKAGES += \
    libxml2

# Shim
PRODUCT_PACKAGES += \
    libshim

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.com.android.dataroaming=true

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml

PRODUCT_PACKAGES += \
    fstab.universal5420 \
    init.target.rc \
    ueventd.universal5420.rc

PRODUCT_PROPERTY_OVERRIDES += \
    ro.carrier=wifi-only

# call dalvik heap and hwui config
$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-dalvik-heap.mk)

$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-3072-hwui-memory.mk)

# Sensors wrapper
#PRODUCT_PACKAGES += \
#    sensors.universal5420

# Dalvik
#PRODUCT_PROPERTY_OVERRIDES += \
#    dalvik.vm.heapstartsize=8m \
#    dalvik.vm.heapgrowthlimit=288m \
#    dalvik.vm.heapsize=768m \
#    dalvik.vm.heaptargetutilization=0.75 \
#    dalvik.vm.heapminfree=512k \
#    dalvik.vm.heapmaxfree=8m

# HWUI
#PRODUCT_PROPERTY_OVERRIDES += \
#    ro.hwui.texture_cache_size=72 \
#    ro.hwui.layer_cache_size=48 \
#    ro.hwui.path_cache_size=32 \
#    ro.hwui.gradient_cache_size=1 \
#    ro.hwui.drop_shadow_cache_size=6 \
#    ro.hwui.r_buffer_cache_size=8 \
#    ro.hwui.texture_cache_flushrate=0.4 \
#    ro.hwui.text_small_cache_width=1024 \
#    ro.hwui.text_small_cache_height=1024 \
#    ro.hwui.text_large_cache_width=2048 \
#    ro.hwui.text_large_cache_height=1024

# call the proprietary setup
$(call inherit-product, vendor/samsung/chagalllte/chagalllte-vendor.mk)

# Import the common tree changes
include device/samsung/exynos5420-common/exynos5420.mk
