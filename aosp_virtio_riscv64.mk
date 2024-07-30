#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, device/google/atv/products/atv_base.mk)

# Inherit from device
$(call inherit-product, device/virt/virtio_riscv64/device.mk)

PRODUCT_NAME := aosp_virtio_riscv64
PRODUCT_DEVICE := virtio_riscv64
PRODUCT_BRAND := VirtIO
PRODUCT_MANUFACTURER := VirtIO
PRODUCT_MODEL := VirtIO riscv64

PRODUCT_VENDOR_PROPERTIES += \
    ro.soc.manufacturer=$(PRODUCT_MANUFACTURER) \
    ro.soc.model=$(PRODUCT_DEVICE)

# Workaround build fingerprint too long
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="virtio_riscv64-eng 14 AP2A.240705.005 0 test-keys"

BUILD_FINGERPRINT := virtio/virtio_riscv64/virtio_riscv64:14/AP2A.240705.005/0:eng/test-keys
