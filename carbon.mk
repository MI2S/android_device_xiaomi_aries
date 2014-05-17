#
# Copyright (C) 2012 The CyanogenMod Project
# Copyright (C) 2012 The Carbon Project
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
#

# name
PRODUCT_RELEASE_NAME := aries
# boot animation resolution
TARGET_BOOTANIMATION_NAME := 720
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# phone
$(call inherit-product, vendor/carbon/config/common_phone.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/aries/full_aries.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := aries
PRODUCT_NAME := carbon_aries
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 2S
PRODUCT_MANUFACTURER := XIAOMI

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=aries BUILD_FINGERPRINT=Xiaomi/aries/aries:4.4.2/KOT49E/737497:user/release-keys PRIVATE_BUILD_DESC="aries-user 4.4.2 KOT49E 737497 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch
