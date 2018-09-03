# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony.mk)

$(call inherit-product, device/samsung/chagalllte/device.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit more LineageOS stuff.
$(call inherit-product, vendor/cm/config/telephony.mk)

PRODUCT_NAME := lineage_chagalllte
PRODUCT_DEVICE := chagalllte
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-T805

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=SM-T805 \
    PRODUCT_NAME=chagalllte \
    PRODUCT_DEVICE=chagalllte \
    PRIVATE_BUILD_DESC="samsung/chagallltezh/chagalllte:6.0.1/MMB29K/T805ZHU1CQB1:user/release-keys" \
    TARGET_DEVICE=chagalllte

BUILD_FINGERPRINT := samsung/chagallltezh/chagalllte:6.0.1/MMB29K/T805ZHU1CQB1:user/release-keys
