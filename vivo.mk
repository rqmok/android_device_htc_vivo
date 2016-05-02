# Copyright (C) 2011-2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Proprietary vendor tree
$(call inherit-product, vendor/htc/vivo/vivo-vendor.mk)

# Inherit common msm7x30 configs
$(call inherit-product, device/htc/msm7x30-common/msm7x30.mk)


DEVICE_PACKAGE_OVERLAYS += device/htc/vivo/overlay

COMMON_PATH := device/htc/vivo

# Boot ramdisk setup
PRODUCT_PACKAGES += init.target.rc

# Audio DSP Profiles
PRODUCT_COPY_FILES += \
	$(COMMON_PATH)/rootdir/system/etc/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
	$(COMMON_PATH)/rootdir/system/etc/AdieHWCodec_NEL.csv:system/etc/AdieHWCodec_NEL.csv \
	$(COMMON_PATH)/rootdir/system/etc/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
	$(COMMON_PATH)/rootdir/system/etc/AudioBTID.csv:system/etc/AudioBTID.csv \
	$(COMMON_PATH)/rootdir/system/etc/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
	$(COMMON_PATH)/rootdir/system/etc/AIC3254_REG_DualMic_NEL.csv:system/etc/AIC3254_REG_DualMic_NEL.csv \
	$(COMMON_PATH)/rootdir/system/etc/AIC3254_REG_DualMicXB.csv:system/etc/AIC3254_REG_DualMicXB.csv \
	$(COMMON_PATH)/rootdir/system/etc/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv \
	$(COMMON_PATH)/rootdir/system/etc/TPA2051_CFG_NEL.csv:system/etc/TPA2051_CFG_NEL.csv \
	$(COMMON_PATH)/rootdir/system/etc/CodecDSPID_BCLK.txt:system/etc/CodecDSPID_BCLK.txt \
	$(COMMON_PATH)/rootdir/system/etc/CodecDSPID_NEL.txt:system/etc/CodecDSPID_NEL.txt \
	$(COMMON_PATH)/rootdir/system/etc/CodecDSPID.txt:system/etc/CodecDSPID.txt \
	$(COMMON_PATH)/rootdir/system/etc/CodecDSPID_WB.txt:system/etc/CodecDSPID_WB.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Bass_Booster.txt:system/etc/soundimage/Sound_Bass_Booster.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Blues.txt:system/etc/soundimage/Sound_Blues.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Classical.txt:system/etc/soundimage/Sound_Classical.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Country.txt:system/etc/soundimage/Sound_Country.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Jazz.txt:system/etc/soundimage/Sound_Jazz.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Latin.txt:system/etc/soundimage/Sound_Latin.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_New_Age.txt:system/etc/soundimage/Sound_New_Age.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Original_BCLK.txt:system/etc/soundimage/Sound_Original_BCLK.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Original_Recording_BCLK.txt:system/etc/soundimage/Sound_Original_Recording_BCLK.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Original_Recording.txt:system/etc/soundimage/Sound_Original_Recording.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Original_SPK_BCLK.txt:system/etc/soundimage/Sound_Original_SPK_BCLK.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Phone_Original_HP_BCLK.txt:system/etc/soundimage/Sound_Phone_Original_HP_BCLK.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Phone_Original_HP.txt:system/etc/soundimage/Sound_Phone_Original_HP.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Phone_Original_REC_BCLK.txt:system/etc/soundimage/Sound_Phone_Original_REC_BCLK.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Phone_Original_REC_NEL.txt:system/etc/soundimage/Sound_Phone_Original_REC_NEL.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Phone_Original_REC.txt:system/etc/soundimage/Sound_Phone_Original_REC.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Phone_Original_REC_WB.txt:system/etc/soundimage/Sound_Phone_Original_REC_WB.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Phone_Original_SPK_BCLK.txt:system/etc/soundimage/Sound_Phone_Original_SPK_BCLK.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Phone_Original_SPK.txt:system/etc/soundimage/Sound_Phone_Original_SPK.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Phone_Original_SPK_WB.txt:system/etc/soundimage/Sound_Phone_Original_SPK_WB.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Piano.txt:system/etc/soundimage/Sound_Piano.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Pop.txt:system/etc/soundimage/Sound_Pop.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_R_B.txt:system/etc/soundimage/Sound_R_B.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Recording.txt:system/etc/soundimage/Sound_Recording.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Rock.txt:system/etc/soundimage/Sound_Rock.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_SRS_A_HP.txt:system/etc/soundimage/Sound_SRS_A_HP.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_SRS_A_SPK.txt:system/etc/soundimage/Sound_SRS_A_SPK.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_SRS_V_HP.txt:system/etc/soundimage/Sound_SRS_V_HP.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_SRS_V_SPK.txt:system/etc/soundimage/Sound_SRS_V_SPK.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Treble_Booster.txt:system/etc/soundimage/Sound_Treble_Booster.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Vocal_Booster.txt:system/etc/soundimage/Sound_Vocal_Booster.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Rec_Landscape.txt:system/etc/soundimage/Sound_Rec_Landscape.txt \
	$(COMMON_PATH)/rootdir/system/etc/soundimage/Sound_Rec_Portrait.txt:system/etc/soundimage/Sound_Rec_Portrait.txt

# Input device calibration files
PRODUCT_COPY_FILES += \
	$(COMMON_PATH)/rootdir/system/usr/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
	$(COMMON_PATH)/rootdir/system/usr/idc/cy8c-touchscreen.idc:system/usr/idc/cy8c-touchscreen.idc \
	$(COMMON_PATH)/rootdir/system/usr/idc/elan-touchscreen.idc:system/usr/idc/elan-touchscreen.idc \
	$(COMMON_PATH)/rootdir/system/usr/idc/vivo-keypad.idc:system/usr/idc/vivo-keypad.idc

# Keychars
PRODUCT_COPY_FILES += \
	$(COMMON_PATH)/rootdir/system/usr/keychars/atmel-touchscreen.kcm:system/usr/keychars/atmel-touchscreen.kcm \
	$(COMMON_PATH)/rootdir/system/usr/keychars/cy8c-touchscreen.kcm:system/usr/keychars/cy8c-touchscreen.kcm \
	$(COMMON_PATH)/rootdir/system/usr/keychars/elan-touchscreen.kcm:system/usr/keychars/elan-touchscreen.kcm

# Keylayouts
PRODUCT_COPY_FILES += \
	$(COMMON_PATH)/rootdir/system/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
	$(COMMON_PATH)/rootdir/system/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
	$(COMMON_PATH)/rootdir/system/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
	$(COMMON_PATH)/rootdir/system/usr/keylayout/vivo-keypad.kl:system/usr/keylayout/vivo-keypad.kl \
	$(COMMON_PATH)/rootdir/system/usr/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
	$(COMMON_PATH)/rootdir/system/usr/keylayout/cy8c-touchscreen.kl:system/usr/keylayout/cy8c-touchscreen.kl \
	$(COMMON_PATH)/rootdir/system/usr/keylayout/elan-touchscreen.kl:system/usr/keylayout/elan-touchscreen.kl

# Copy bcm4329 firmware
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4329/device-bcm.mk)

# BCM4329 firmware
PRODUCT_COPY_FILES += \
	$(COMMON_PATH)/rootdir/system/vendor/firmware/bcm4329.hcd:system/vendor/firmware/bcm4329.hcd \
	$(COMMON_PATH)/bluetooth/bt_vendor.conf:system/etc/bt_vendor.conf

# Lights / Sensors / Bluetooth
PRODUCT_PACKAGES += \
	lights.vivo \
	sensors.vivo \
	libbt-vendor

# Audio properties
PRODUCT_PROPERTY_OVERRIDES += \
	media.a1026.nsForVoiceRec=0 \
	media.a1026.enableA1026=0 \
	htc.audio.alt.enable=1 \
	htc.audio.hac.enable=1

# Density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_LOCALES += en_US

# Disable ADB authentication and use root shell
#ADDITIONAL_DEFAULT_PROPERTIES += \
#    ro.adb.secure=0 \
#    ro.secure=0
