# Soong
PRODUCT_SOONG_NAMESPACES += \
    vendor/sh-fwk

# Required main framework
PRODUCT_PACKAGES += \
    sh-fwk

PRODUCT_BOOT_JARS += \
    sh-fwk

# Permissions
PRODUCT_COPY_FILES += \
    vendor/sh-fwk/privapp-permissions-2by2.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-permissions-2by2.xml

# SEPolicy
BOARD_SEPOLICY_DIRS += vendor/sh-fwk/sepolicy

SELINUX_IGNORE_NEVERALLOWS := true

# Inherit from proprietary blobs
$(call inherit-product, vendor/sh-fwk/prebuilts/prebuilts-vendor.mk)
