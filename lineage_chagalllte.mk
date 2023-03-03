#
# Copyright (C) 2014-2016 The CyanogenMod Project
# Copyright (C) 2017-2018 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from chagalllte device
$(call inherit-product, device/samsung/chagalllte/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := chagalllte
PRODUCT_NAME := lineage_chagalllte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T805
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=chagallltexx \
    PRIVATE_BUILD_DESC="chagallltexx-user 6.0.1 MMB29K T805XXU1CVG2 release-keys"

BUILD_FINGERPRINT := samsung/chagallltexx/chagalllte:6.0.1/MMB29K/T805XXU1CVG2:user/release-keys
