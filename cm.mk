# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony.mk)

# Inherit from chagalllte device
$(call inherit-product, device/samsung/chagalllte/device.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit more cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/telephony.mk)

PRODUCT_NAME := cm_chagalllte
PRODUCT_DEVICE := chagalllte

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=SM-T805 \
    PRODUCT_NAME=chagalllte \
    PRODUCT_DEVICE=chagalllte \
    TARGET_DEVICE=chagalllte