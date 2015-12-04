$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
# suppose this one shold be for WiFi version
#$(call inherit-product, $(SRC_TARGET_DIR)/product/generic_no_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lenovo/B8000/B8000-vendor.mk)

# call dalvik heap config
$(call inherit-product, frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk)

DEVICE_PACKAGE_OVERLAYS += device/lenovo/B8000/overlay

LOCAL_PATH := device/lenovo/B8000
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

#PRODUCT_COPY_FILES += \
#    $(LOCAL_KERNEL):kernel

#$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_BUILD_PROPERTIES :=
PRODUCT_BUILD_PROPERTIES += ril.specific.sm_cause=0
PRODUCT_BUILD_PROPERTIES += gps.solution.combo.chip=1
PRODUCT_BUILD_PROPERTIES += ril.external.md=0
PRODUCT_BUILD_PROPERTIES += fmradio.driver.chip=3
PRODUCT_BUILD_PROPERTIES += ro.sf.hwrotation=0
PRODUCT_BUILD_PROPERTIES += ril.current.share_modem=1
PRODUCT_BUILD_PROPERTIES += launcherplus.allappsgrid=2d
PRODUCT_BUILD_PROPERTIES += launcher2.allappsgrid=3d_20
PRODUCT_BUILD_PROPERTIES += curlockscreen=1
PRODUCT_BUILD_PROPERTIES += ro.mediatek.gemini_support=false
PRODUCT_BUILD_PROPERTIES += sys.lenovo.ideaui.version.sdk=1
PRODUCT_BUILD_PROPERTIES += persist.mtk.wcn.combo.chipid=-1
PRODUCT_BUILD_PROPERTIES += drm.service.enabled=true
PRODUCT_BUILD_PROPERTIES += fmradio.driver.enable=0
PRODUCT_BUILD_PROPERTIES += ril.first.md=1
PRODUCT_BUILD_PROPERTIES += ril.flightmode.poweroffMD=1
PRODUCT_BUILD_PROPERTIES += ril.telephony.mode=1
PRODUCT_BUILD_PROPERTIES += ril.radiooff.poweroffMD=0
PRODUCT_BUILD_PROPERTIES += dalvik.vm.mtk-stack-trace-file=/data/anr/mtk_traces.txt
PRODUCT_BUILD_PROPERTIES += mediatek.wlan.chip=MT6628
PRODUCT_BUILD_PROPERTIES += mediatek.wlan.module.postfix=_mt6628
PRODUCT_BUILD_PROPERTIES += ro.config.notification_sound=Heaven_nearby.ogg
PRODUCT_BUILD_PROPERTIES += ro.config.alarm_alert=Dreamland.ogg
PRODUCT_BUILD_PROPERTIES += ro.config.ringtone=Salt_water.ogg
PRODUCT_BUILD_PROPERTIES += persist.backgrounddata.enable=true
PRODUCT_BUILD_PROPERTIES += ro.setupwizard.mode=OPTIONAL
PRODUCT_BUILD_PROPERTIES += ro.com.google.gmsversion=4.2_r3
PRODUCT_BUILD_PROPERTIES += ro.com.google.clientidbase=android-lenovo
PRODUCT_BUILD_PROPERTIES += ro.com.google.clientidbase.ms=android-lenovo
PRODUCT_BUILD_PROPERTIES += ro.com.google.clientidbase.yt=android-lenovo
PRODUCT_BUILD_PROPERTIES += ro.com.google.clientidbase.am=android-lenovo
PRODUCT_BUILD_PROPERTIES += ro.com.google.clientidbase.gmm=android-lenovo

ADDITIONAL_BUILD_PROPERTIES := \
    $(ADDITIONAL_BUILD_PROPERTIES) \
    $(PRODUCT_BUILD_PROPERTIES)

