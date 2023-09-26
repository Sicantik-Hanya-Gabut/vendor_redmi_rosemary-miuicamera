#
# Copyright (C) 2023 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

# Permissions
PRODUCT_COPY_FILES += \
    vendor/redmi/rosemary-miuicamera/configs/permissions/default-permissions-miuicamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/default-permissions-miuicamera.xml \
    vendor/redmi/rosemary-miuicamera/configs/permissions/miuicamera-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/miuicamera-hiddenapi-package-whitelist.xml \
    vendor/redmi/roseamry-miuicamera/configs/permissions/privapp-permissions-miuicamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-miuicamera.xml

# Device-Features
PRODUCT_COPY_FILES += \
     vendor/redmi/rosemary-miuicamera/configs/device_features/rosemary.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/device_features/rosemary.xml \
     vendor/redmi/rosemary-miuicamera/configs/device_features/secret.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/device_features/secret.xml \
     vendor/redmi/rosemary-miuicamera/configs/device_features/maltose.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/device_features/maltose.xml \
     vendor/redmi/rosemary-miuicamera/configs/device_features/rosemary.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/device_features/rosemary.xml \
     vendor/redmi/rosemary-miuicamera/configs/device_features/secret.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/device_features/secret.xml \
     vendor/redmi/rosemary-miuicamera/configs/device_features/maltose.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/device_features/munch.xml

# Properties
PRODUCT_SYSTEM_PROPERTIES += \
    ro.com.google.lens.oem_camera_package=com.android.camera \
    ro.miui.notch=1 \
    ro.product.mod_device=rosemary

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += \
    vendor/xiaomi/camera/sepolicy/vendor

$(call inherit-product, vendor/redmi/rosemary-miuicamera/rosemary-miuicamera-vendor.mk)
