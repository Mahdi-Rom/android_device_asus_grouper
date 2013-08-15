# Release name
PRODUCT_RELEASE_NAME := Nexus7

# Inherit AOSP device configuration
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Inherit common product files.
$(call inherit-product, vendor/mahdi/configs/common.mk)

# Inherit tablet config.
$(call inherit-product, vendor/mahdi/configs/common_full_tablet_wifionly.mk)

# Setup device specific product configuration.
PRODUCT_DEVICE := grouper
PRODUCT_NAME := mahdi_grouper
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := Asus

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasi BUILD_FINGERPRINT="google/nakasi/grouper:4.3/JWR66V/573038:user/release-keys" PRIVATE_BUILD_DESC="nakasi-user 4.3 JWR66V 573038 release-keys"

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/mahdi/prebuilt/bootanimations/BOOTANIMATION-1280x800.zip:system/media/bootanimation.zip
