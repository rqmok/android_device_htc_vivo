# Inherit device configuration
$(call inherit-product, device/htc/vivo/full_vivo.mk)

# Inherit common CM configuration
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=htc_vivo \
    BUILD_FINGERPRINT="htc_wwe/htc_vivo/vivo:$(PLATFORM_VERSION)/$(BUILD_ID)/$(shell date +%Y%m%d%H%M%S):$(TARGET_BUILD_VARIANT)/test-keys" \
    PRIVATE_BUILD_DESC="htc_vivo-$(TARGET_BUILD_VARIANT) $(PLATFORM_VERSION) $(BUILD_ID) $(shell date +%Y%m%d%H%M%S) test-keys"

# Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_vivo
PRODUCT_GMS_CLIENTID_BASE := android-htc-rev

# Release name
PRODUCT_RELEASE_NAME := vivo
