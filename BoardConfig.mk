USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lenovo/b8000/BoardConfigVendor.mk

# Try to build the kernel
#TARGET_KERNEL_CONFIG := cyanogenmod_mydevice_defconfig
# Keep this as a fallback
#TARGET_PREBUILT_KERNEL := device/lenovo/B8000/kernel

TARGET_KERNEL_SOURCE := kernel/lenovo/kernel
TARGET_KERNEL_CONFIG := cyanogenmod_blade10_row_wifi_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.6
#TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-linux-androideabi-4.6

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := LENOVO
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := blade10_row_wifi

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_NO_SELECT_BUTTON := true
