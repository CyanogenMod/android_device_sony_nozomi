#
# Copyright (C) 2011 The CyanogenMod Project
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

# Inherit the fuji-common definitions
$(call inherit-product, device/sony/fuji-common/fuji.mk)

DEVICE_PACKAGE_OVERLAYS += device/sony/nozomi/overlay

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_CHARACTERISTICS := nosdcard

# Configuration scripts
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/rootdir/system/etc/pre_hw_config.sh:system/etc/pre_hw_config.sh \
   $(LOCAL_PATH)/rootdir/system/etc/hw_config.sh:system/etc/hw_config.sh

# USB function switching
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/rootdir/init.semc.service.rc:root/init.semc.service.rc \
   $(LOCAL_PATH)/rootdir/init.semc.usb.rc:root/init.semc.usb.rc

#fstab
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/rootdir/fstab.semc:root/fstab.semc

PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/rootdir/system/etc/vold.fstab:system/etc/vold.fstab \
   $(LOCAL_PATH)/rootdir/system/etc/media_profiles.xml:system/etc/media_profiles.xml

# Device specific part for two-stage boot
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/recovery/bootrec-device:recovery/bootrec-device

# Key layouts and touchscreen
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)rootdir/system/usr/keylayout/clearpad.kl:system/usr/keylayout/clearpad.kl \
   $(LOCAL_PATH)rootdir/system/usr/idc/clearpad.idc:system/usr/idc/clearpad.idc \
   $(LOCAL_PATH)rootdir/system/usr/keylayout/fuji-keypad.kl:system/usr/keylayout/fuji-keypad.kl \
   $(LOCAL_PATH)rootdir/system/usr/keylayout/gpio-key.kl:system/usr/keylayout/gpio-key.kl \
   $(LOCAL_PATH)rootdir/system/usr/keylayout/keypad-pmic-fuji.kl:system/usr/keylayout/keypad-pmic-fuji.kl \
   $(LOCAL_PATH)rootdir/system/usr/keylayout/pmic8058_pwrkey.kl:system/usr/keylayout/pmic8058_pwrkey.kl \
   $(LOCAL_PATH)rootdir/system/usr/keylayout/simple_remote.kl:system/usr/keylayout/simple_remote.kl

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product-if-exists, vendor/sony/nozomi/nozomi-vendor.mk)

# Wifi
BOARD_WLAN_DEVICE_REV := bcm4330_b2
WIFI_BAND             := 802_11_ABG
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4330/device-bcm.mk)
