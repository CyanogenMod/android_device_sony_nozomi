## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

TARGET_BOOTANIMATION_NAME := vertical-720x1280

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/sony/nozomi/nozomi.mk)

PRODUCT_NAME := cm_nozomi

# Release name and versioning
PRODUCT_RELEASE_NAME := XperiaS-LT26i
PRODUCT_VERSION_DEVICE_SPECIFIC :=

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := nozomi

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=LT26i_1257-3921 BUILD_FINGERPRINT=SEMC/LT26i_1257-3921/LT26i:2.3.7/6.0.A.3.67/vPP_zw:user/release-keys PRIVATE_BUILD_DESC="LT26i-user 2.3.7 6.0.A.3.67 vPP_zw test-keys"
