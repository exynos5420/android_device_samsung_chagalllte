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

PRODUCT_CHARACTERISTICS := tablet,noearpiece
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal large xlarge

# Audio HAL
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/mixer_paths_0.xml:system/etc/mixer_paths_0.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_PROPERTY_OVERRIDES += \
    audio_hal.disable_two_mic=true

PRODUCT_PACKAGES += \
    audio.primary.universal5420

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1600

# Fingerprint
PRODUCT_PACKAGES += \
    fingerprintd \
    fingerprint.universal5420 \
    validityService

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/sec_touchscreen.kl:system/usr/keylayout/sec_touchscreen.kl \
    $(LOCAL_PATH)/configs/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/configs/gps/gps.xml:system/etc/gps.xml

ifeq ($(TARGET_DEVICE),chagalllte)
# Shim
PRODUCT_PACKAGES += \
    libshim
endif

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.com.android.dataroaming=true

ifeq ($(TARGET_DEVICE),chagalllte)
# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml
endif

PRODUCT_PACKAGES += \
    fstab.universal5420 \
    init.target.rc \
    init.baseband.rc \
    ueventd.universal5420.rc

# Radio
PRODUCT_PACKAGES += \
    libril \
    librilutils \
    rild \
    libxml2 \
    libprotobuf-cpp-full \
    modemloader

PRODUCT_PROPERTY_OVERRIDES += \
    ro.carrier=unknown

# call dalvik heap and hwui config
$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-dalvik-heap.mk)

$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-3072-hwui-memory.mk)

ifeq ($(TARGET_DEVICE),chagalllte)
# call the proprietary setup
$(call inherit-product, vendor/samsung/chagalllte/chagalllte-vendor.mk)
endif

# Import the common tree changes
include device/samsung/exynos5420-common/exynos5420.mk
