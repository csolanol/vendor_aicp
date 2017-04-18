# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit AOSP device configuration for serranoltexx.
$(call inherit-product, device/samsung/serranoltexx/device.mk)

# Inherit common product files.
$(call inherit-product, vendor/aicp/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/aicp/configs/telephony.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=serranoltexx \
    TARGET_DEVICE=serranolte

# Setup device specific product configuration.
PRODUCT_NAME := aicp_serranoltexx
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := serranoltexx
PRODUCT_MODEL := GT-I9195
PRODUCT_MANUFACTURER := samsung

# AICP Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS="doc HD (semdoc)"

PRODUCT_PROPERTY_OVERRIDES +=\
    ro.product.device=serranoltexx \
    ro.product.model=GT-I9195

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540
-include vendor/aicp/configs/bootanimation.mk
