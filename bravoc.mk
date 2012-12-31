#
# Copyright (C) 2009 The Android Open Source Project
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

#
# This is the product configuration for a generic CDMA bravo,
# not specialized for any geography.
#

# Overlay
DEVICE_PACKAGE_OVERLAYS += device/htc/bravoc/overlay

# Required Packages
PRODUCT_PACKAGES += \
    gps.bravoc \
    librs_jni \
    lights.bravoc \
    sensors.bravoc

# Prebuilts
PRODUCT_COPY_FILES += \
    device/htc/bravoc/prebuilt/apns-conf.xml:system/etc/apns-conf.xml \
    device/htc/bravoc/prebuilt/bravoc-keypad.kl:system/usr/keylayout/bravoc-keypad.kl \
    device/htc/bravoc/prebuilt/bravoc-keypad.kcm:system/usr/keylayout/bravoc-keypad.kcm \
    device/htc/bravoc/prebuilt/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/bravoc/prebuilt/init.bravoc.rc:root/init.bravoc.rc \
    device/htc/bravoc/prebuilt/media_profiles.xml:system/etc/media_profiles.xml \
    device/htc/bravoc/prebuilt/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    device/htc/bravoc/prebuilt/ueventd.bravoc.rc:root/ueventd.bravoc.rc \
    device/htc/bravoc/prebuilt/vold.fstab:system/etc/vold.fstab

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml

# Common qsd8k stuff
$(call inherit-product, device/htc/qsd8k-common/qsd8k.mk)

# Also get non-open-source CDMA-specific aspects if available
$(call inherit-product-if-exists, vendor/htc/bravoc/bravoc-vendor.mk)
