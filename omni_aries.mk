# Inherit device configuration
$(call inherit-product, device/xiaomi/aries/full_aries.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := aries
PRODUCT_NAME := omni_aries
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 2
PRODUCT_MANUFACTURER := XIAOMI

# Kernel inline build
TARGET_KERNEL_CONFIG := aries-perf-usr_defconfig
TARGET_VARIANT_CONFIG := aries-perf-usr_defconfig
TARGET_SELINUX_CONFIG := aries-perf-usr_defconfig

$(call inherit-product-if-exists, vendor/xiaomi/aries/aries-vendor.mk)
