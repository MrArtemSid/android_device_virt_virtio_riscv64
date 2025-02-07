#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Kernel (Prebuilt)
TARGET_PREBUILT_KERNEL_ARCH := riscv64
TARGET_PREBUILT_KERNEL_MODULES_ARCH := riscv64
TARGET_PREBUILT_KERNEL_USE ?= 6.6

# Inherit from common
$(call inherit-product, device/virt/virtio-common/device-common.mk)

# ATV
PRODUCT_IS_ATV := true

# AAPT
PRODUCT_AAPT_PREF_CONFIG := tvdpi

# Characteristics
PRODUCT_CHARACTERISTICS := tv

PRODUCT_SUPPORTS_CAMERA := false

PRODUCT_VENDOR_PROPERTIES += \
    config.disable_renderscript=1 \
    config.disable_cameraservice=true

# Lightweight launcher
USE_OEM_TV_APP := true
PRODUCT_PACKAGES += \
    TvSettingsTwoPanel \
    DeskClock \
    RpLauncher

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
