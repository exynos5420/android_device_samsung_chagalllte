#
# Copyright (C) 2018 The LineageOS Project
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

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.vc_call_vol_steps=7

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    telephony.lteOnCdmaDevice=0 \
    keyguard.no_require_sim=true \
    rild.libpath=/vendor/lib/libsec-ril.so \
    rild.libargs=-d /dev/ttyS0 \
    ro.telephony.default_network=9 \
    ro.telephony.mms_data_profile=5 \
    ro.telephony.ril_class=SlteRIL \
    ro.ril.telephony.mqanelements=6 
