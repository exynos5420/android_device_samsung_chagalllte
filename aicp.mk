# Release name
PRODUCT_RELEASE_NAME := chagalllte

# Inherit some AICP  stuff.
$(call inherit-product, vendor/aicp/config/common_full_phone.mk)

# Inherit from cheeseburger device
$(call inherit-product, device/samsung/chagalllte/device.mk)

PRODUCT_NAME := aicp_chagalllte
PRODUCT_DEVICE := chagalllte
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-T805

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=SM-T805 \
    PRODUCT_NAME=chagalllte \
    PRODUCT_DEVICE=chagalllte \
    TARGET_DEVICE=chagalllte

BUILD_FINGERPRINT=samsung/chagalllte/chagalllte:6.0.1/MMB29K/T800DDU1CPL3:user/release-keys
