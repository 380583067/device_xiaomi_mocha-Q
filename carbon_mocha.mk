# Inherit device configuration for mocha.
$(call inherit-product, device/xiaomi/mocha/full_mocha.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/carbon/config/common.mk)

PRODUCT_NAME := carbon_mocha
PRODUCT_DEVICE := mocha
PRODUCT_BAND := xiaomi
PRODUCT_MANUFACTURER := Xiaomi
BOARD_VENDOR := Xiaomi

BUILD_FINGERPRINT=Xiaomi/carbon_mocha/mocha:5.1.1/LMY49J/7fd38a3d2b:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi


  