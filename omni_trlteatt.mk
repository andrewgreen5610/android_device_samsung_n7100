#
# Copyright (C) 2013 OmniROM Project
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

# Inherit Omni GSM telephony parts
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit some common Omni stuff
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/trlteatt/full_trlteatt.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := omni_trlteatt
PRODUCT_DEVICE := trlteatt
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SM-N910A

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=trlteatt \
    TARGET_DEVICE=trlteuc \
    PRIVATE_BUILD_DESC="trlteuc-user 4.4.2 KOT49H N910AAUCU1ANIE release-keys" \
    BUILD_FINGERPRINT="samsung/trlteuc/trlteatt:4.4.2/KOT49H/N910AUCU1ANIE:user/release-keys"
