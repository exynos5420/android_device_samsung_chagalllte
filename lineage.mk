# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from chagalllte device
$(call inherit-product, device/samsung/chagalllte/device.mk)

PRODUCT_NAME := full_chagalllte
PRODUCT_DEVICE := chagalllte
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-T805

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

PRODUCT_NAME := lineage_chagalllte
PRODUCT_DEVICE := chagalllte

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=SM-T805 \
    PRODUCT_NAME=chagalllte \
    PRODUCT_DEVICE=chagalllte \
    TARGET_DEVICE=chagalllte

BUILD_FINGERPRINT=samsung/chagallltezh/chagalllte:6.0.1/MMB29K/T805ZHU1CQB1:user/release-keys