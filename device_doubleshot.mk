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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# common msm8660 configs
$(call inherit-product, device/htc/doubleshot/msm8660.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/doubleshot/overlay

# GPS
PRODUCT_PACKAGES += \
    gps.doubleshot

## The gps config appropriate for this device
 PRODUCT_COPY_FILES += device/common/gps/gps.conf_US:system/etc/gps.conf

# Wifi
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4329/device-bcm.mk)

# Bluetooth/wifi Firmware
$(call inherit-product-if-exists, device/htc/doubleshot/bcm_hcd.mk)

# Boot ramdisk setup
PRODUCT_COPY_FILES += \
    device/htc/doubleshot/ramdisk/fstab.doubleshot:root/fstab.doubleshot \
    device/htc/doubleshot/ramdisk/init.doubleshot.rc:root/init.doubleshot.rc \
    device/htc/doubleshot/ramdisk/init.doubleshot.usb.rc:root/init.doubleshot.usb.rc \
    device/htc/doubleshot/ramdisk/ueventd.doubleshot.rc:root/ueventd.doubleshot.rc \
    device/htc/doubleshot/ramdisk/remount.doubleshot:root/remount.doubleshot

  

## recovery and custom charging
PRODUCT_COPY_FILES += \
    device/htc/doubleshot/recovery/sbin/choice_fn:recovery/root/sbin/choice_fn \
    device/htc/doubleshot/recovery/sbin/power_test:recovery/root/sbin/power_test \
    device/htc/doubleshot/recovery/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    device/htc/doubleshot/recovery/sbin/detect_key:recovery/root/sbin/detect_key \
    device/htc/doubleshot/recovery/sbin/htcbatt:recovery/root/sbin/htcbatt
    
      
      
# QC thermald config
PRODUCT_COPY_FILES += device/htc/doubleshot/configs/thermald.conf:system/etc/thermald.conf


# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    device/htc/doubleshot/keychars/doubleshot-keypad.kcm:system/usr/keychars/doubleshot-keypad.kcm \
    device/htc/doubleshot/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/doubleshot/keylayout/cy8c-touchscreen.kl:system/usr/keylayout/cy8c-touchscreen.kl \
    device/htc/doubleshot/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/doubleshot/keylayout/doubleshot-keypad.kl:system/usr/keylayout/doubleshot-keypad.kl

# Input device config
PRODUCT_COPY_FILES += \
    device/htc/doubleshot/idc/cy8c-touchscreen.idc:system/usr/idc/cy8c-touchscreen.idc \
    device/htc/doubleshot/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# HTC BT Audio tune
PRODUCT_COPY_FILES += device/htc/doubleshot/dsp/AudioBTID.csv:system/etc/AudioBTID.csv

# Sound configs
PRODUCT_COPY_FILES += \
    device/htc/doubleshot/dsp/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    device/htc/doubleshot/dsp/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
    device/htc/doubleshot/dsp/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
    device/htc/doubleshot/dsp/CodecDSPID.txt:system/etc/CodecDSPID.txt \
    device/htc/doubleshot/dsp/CodecDSPID_WB.txt:system/etc/CodecDSPID_WB.txt \
    device/htc/doubleshot/dsp/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv \
    device/htc/doubleshot/dsp/TPA2051_CFG_XC.csv:system/etc/TPA2051_CFG_XC.csv \
    device/htc/doubleshot/dsp/soundimage/Sound_MFG.txt:system/etc/soundimage/Sound_MFG.txt \
    device/htc/doubleshot/dsp/soundimage/Sound_Original_Recording.txt:system/etc/soundimage/Sound_Original_Recording.txt \
    device/htc/doubleshot/dsp/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
    device/htc/doubleshot/dsp/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
    device/htc/doubleshot/dsp/soundimage/Sound_Phone_Original_HP_LE.txt:system/etc/soundimage/Sound_Phone_Original_HP_LE.txt \
    device/htc/doubleshot/dsp/soundimage/Sound_Phone_Original_HP.txt:system/etc/soundimage/Sound_Phone_Original_HP.txt \
    device/htc/doubleshot/dsp/soundimage/Sound_Phone_Original_HP_WB_LE.txt:system/etc/soundimage/Sound_Phone_Original_HP_WB_LE.txt \
    device/htc/doubleshot/dsp/soundimage/Sound_Phone_Original_HP_WB.txt:system/etc/soundimage/Sound_Phone_Original_HP_WB.txt \
    device/htc/doubleshot/dsp/soundimage/Sound_Phone_Original_REC_NEL.txt:system/etc/soundimage/Sound_Phone_Original_REC_NEL.txt \
    device/htc/doubleshot/dsp/soundimage/Sound_Phone_Original_REC.txt:system/etc/soundimage/Sound_Phone_Original_REC.txt \
    device/htc/doubleshot/dsp/soundimage/Sound_Phone_Original_REC_WB.txt:system/etc/soundimage/Sound_Phone_Original_REC_WB.txt \
    device/htc/doubleshot/dsp/soundimage/Sound_Phone_Original_SPK.txt:system/etc/soundimage/Sound_Phone_Original_SPK.txt \
    device/htc/doubleshot/dsp/soundimage/Sound_Phone_Original_SPK_WB.txt:system/etc/soundimage/Sound_Phone_Original_SPK_WB.txt \
    device/htc/doubleshot/dsp/soundimage/Sound_Rec_Landscape.txt:system/etc/soundimage/Sound_Rec_Landscape.txt \
    device/htc/doubleshot/dsp/soundimage/Sound_Recording.txt:system/etc/soundimage/Sound_Recording.txt \
    device/htc/doubleshot/dsp/soundimage/Sound_Rec_Portrait.txt:system/etc/soundimage/Sound_Rec_Portrait.txt

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

## misc
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y

# We have enough space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_LOCALES += en_US hdpi

# call the proprietary setup
$(call inherit-product-if-exists, vendor/htc/doubleshot/doubleshot-vendor.mk)

$(call inherit-product-if-exists, vendor/htc-extra/doubleshot/doubleshot-vendor.mk)
# media profiles and capabilities spec
$(call inherit-product, device/htc/doubleshot/media_a1026.mk)

## htc audio settings
$(call inherit-product, device/htc/doubleshot/media_htcaudio.mk)

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)


