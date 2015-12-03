## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := B8000

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/B8000/B8000.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := B8000
PRODUCT_NAME := B8000
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo B8000-F
PRODUCT_MANUFACTURER := LENOVO
