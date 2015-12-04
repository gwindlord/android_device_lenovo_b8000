# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/B8000/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := B8000
PRODUCT_NAME := cm_B8000
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo B8000-F
PRODUCT_MANUFACTURER := LENOVO

# Release name
PRODUCT_RELEASE_NAME := B8000

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=cm_B8000 BUILD_FINGERPRINT="google/yakju/maguro:4.2.2/JDQ39/573038:user/release-keys" PRIVATE_BUILD_DESC="yakju-user 4.2.2 JDQ39 573038 release-keys"

# Bootanimation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
