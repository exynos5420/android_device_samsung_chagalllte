#!/sbin/sh
#
# Copyright (C) 2017 The LineageOS Project
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


PRODUCT_MODEL=`getprop ro.bootloader`
PHONE_MODEL="t805w"

RESULT=$(echo $NFC_MODEL | grep "$PRODUCT_MODEL")

if [[ "$RESULT" = "" ]]
then
    # Remove Phone,MMS,Contacts
    rm -rf /system/vendor/app/QNfc
    rm -rf /system/vendor/app/GsmaNfcService
    rm -rf /system/priv-app/Tag
fi

mount ext4 EMMC /dev/block/platform/dw_mmc.0/by-name/SYSTEM /system
ln -ls /system/etc/wifi/bcmdhd_apsta.bin /system/etc/wifi/bcmdhd_apsta.bin_4354_a1
ln -ls /system/etc/wifi/bcmdhd_ibss.bin /system/etc/wifi/bcmdhd_ibss.bin_4354_a1
ln -ls /system/etc/wifi/bcmdhd_mfg.bin /system/etc/wifi/bcmdhd_mfg.bin_4354_a1
ln -ls /system/etc/wifi/bcmdhd_sta.bin /system/etc/wifi/bcmdhd_sta.bin_4354_a1
unmount system
