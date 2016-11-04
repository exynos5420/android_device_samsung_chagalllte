$(call inherit-product, device/samsung/chagalllte/full_chagalllte.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/aicp/configs/common_tablet.mk)

# Inherit more cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/telephony.mk)

PRODUCT_NAME := aicp_chagalllte
PRODUCT_DEVICE := chagalllte

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=SM-T805 \
    PRODUCT_NAME=chagalllte \
    PRODUCT_DEVICE=chagalllte \
    TARGET_DEVICE=chagalllte
