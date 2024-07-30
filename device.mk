#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Kernel (Prebuilt)
TARGET_PREBUILT_EMULATOR_KERNEL_USE ?= 6.6
TARGET_PREBUILT_KERNEL_ARCH := riscv64
TARGET_PREBUILT_KERNEL_MODULES_ARCH := riscv64

# Inherit from common
$(call inherit-product, device/virt/virtio-common/device-common.mk)

PRODUCT_VENDOR_PROPERTIES += \
    config.disable_renderscript=1

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
