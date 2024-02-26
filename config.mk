# Soong
PRODUCT_SOONG_NAMESPACES += \
    vendor/sh-fwk

# Required main framework
PRODUCT_BOOT_JARS += \
    sh-fwk \
    sh-services

# Inherit from proprietary blobs
$(call inherit-product, vendor/sh-fwk/prebuilts/prebuilts-vendor.mk)
