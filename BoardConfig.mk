USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lenovo/B8000/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := blade10_row_wifi

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := LENOVO
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
# /proc/mtd is empty, so taking approx values from the stock ROW ROM
BOARD_BOOTIMAGE_PARTITION_SIZE := 10000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 870000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 200000000
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_NO_SELECT_BUTTON := true

# Try to build the kernel
TARGET_KERNEL_CONFIG := cyanogenmod_blade10_row_wifi_defconfig
# Keep this as a fallback
#TARGET_PREBUILT_KERNEL := device/lenovo/B8000/kernel

TARGET_KERNEL_SOURCE := kernel/lenovo/kernel
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.6

#TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-linux-androideabi-4.6

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lenovo/B8000/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/lenovo/B8000/configs/libbt_vndcfg.txt
