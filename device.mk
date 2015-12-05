$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
# suppose this one should be for WiFi version
#$(call inherit-product, $(SRC_TARGET_DIR)/product/generic_no_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lenovo/B8000/B8000-vendor.mk)

# call dalvik heap config
$(call inherit-product, frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk)

DEVICE_PACKAGE_OVERLAYS += device/lenovo/B8000/overlay

#LOCAL_PATH := device/lenovo/B8000
#ifeq ($(TARGET_PREBUILT_KERNEL),)
#	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
#else
#	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#endif

#PRODUCT_COPY_FILES += \
#   $(LOCAL_KERNEL):kernel

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

# media configs
PRODUCT_COPY_FILES += \
    device/lenovo/B8000/media_codecs.xml:system/etc/media_codecs.xml \
    device/lenovo/B8000/audio_policy.conf:system/etc/audio_policy.conf

# vold config
PRODUCT_COPY_FILES += device/lenovo/B8000/configs/vold.fstab:system/etc/vold.fstab \
    device/lenovo/B8000/configs/vold.fstab.nand:system/etc/vold.fstab.nand

PRODUCT_COPY_FILES += device/lenovo/B8000/configs/spn-conf.xml:system/etc/spn-conf.xml \
    device/lenovo/B8000/configs/virtual-spn-conf-by-efpnn.xml:system/etc/virtual-spn-conf-by-efpnn.xml \
    device/lenovo/B8000/configs/virtual-spn-conf-by-efspn.xml:system/etc/virtual-spn-conf-by-efspn.xml \
    device/lenovo/B8000/configs/virtual-spn-conf-by-imsi.xml:system/etc/virtual-spn-conf-by-imsi.xml \
    device/lenovo/B8000/configs/custom.conf:system/etc/custom.conf \
    device/lenovo/B8000/configs/factory.ini:system/etc/factory.ini \
    device/lenovo/B8000/configs/mtk_omx_core.cfg:system/etc/mtk_omx_core.cfg \
    device/lenovo/B8000/configs/aal.cfg:system/etc/aal.cfg \
    device/lenovo/B8000/configs/aal_als_cal.cfg:system/etc/aal_als_cal.cfg \
    device/lenovo/B8000/configs/aal_lcm_cal.cfg:system/etc/aal_lcm_cal.cfg \
    device/lenovo/B8000/configs/xlog-filter-default:system/etc/xlog-filter-default \
    device/lenovo/B8000/configs/xlog-filter-tags:system/etc/xlog-filter-tags \
    device/lenovo/B8000/ppp/ip-up-vpn:system/etc/ppp/ip-up-vpn \
    device/lenovo/B8000/radvd/radvd.conf:system/etc/radvd/radvd.conf \
    device/lenovo/B8000/ril/oper.lis:system/etc/ril/oper.lis \
    device/lenovo/B8000/wide-dhcpv6/dhcp6s.conf:system/etc/wide-dhcpv6/dhcp6s.conf \
    device/lenovo/B8000/wide-dhcpv6/dhcp6cDNS.conf:system/etc/wide-dhcpv6/dhcp6cDNS.conf \
    device/lenovo/B8000/wide-dhcpv6/dhcp6cctlkey:system/etc/wide-dhcpv6/dhcp6cctlkey \
    device/lenovo/B8000/wide-dhcpv6/dhcp6c.script:system/etc/wide-dhcpv6/dhcp6c.script \
    device/lenovo/B8000/wide-dhcpv6/dhcp6c.conf:system/etc/wide-dhcpv6/dhcp6c.conf \
    device/lenovo/B8000/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/lenovo/B8000/wifi/p2p_supplicant.conf:system/etc/wifi/p2p_supplicant.conf \
    device/lenovo/B8000/.tp/thermal.off.conf:system/etc/.tp/thermal.off.conf \
    device/lenovo/B8000/.tp/thermal.conf:system/etc/.tp/thermal.conf \
    device/lenovo/B8000/.tp/.ht120.mtc:system/etc/.tp/.ht120.mtc \
    device/lenovo/B8000/firmware/mt6628_ant_m1.cfg:system/etc/firmware/mt6628_ant_m1.cfg \
    device/lenovo/B8000/firmware/mt6628_patch_e1_hdr.bin:system/etc/firmware/mt6628_patch_e1_hdr.bin \
    device/lenovo/B8000/firmware/mt6628_patch_e2_0_hdr.bin:system/etc/firmware/mt6628_patch_e2_0_hdr.bin \
    device/lenovo/B8000/firmware/mt6628_patch_e2_1_hdr.bin:system/etc/firmware/mt6628_patch_e2_1_hdr.bin \
    device/lenovo/B8000/firmware/S_ANDRO_SFL.ini:system/etc/firmware/S_ANDRO_SFL.ini \
    device/lenovo/B8000/firmware/WIFI_RAM_CODE:system/etc/firmware/WIFI_RAM_CODE \
    device/lenovo/B8000/firmware/WIFI_RAM_CODE_E6:system/etc/firmware/WIFI_RAM_CODE_E6 \
    device/lenovo/B8000/firmware/WIFI_RAM_CODE_MT6628:system/etc/firmware/WIFI_RAM_CODE_MT6628 \
    device/lenovo/B8000/firmware/WMT.cfg:system/etc/firmware/WMT.cfg
