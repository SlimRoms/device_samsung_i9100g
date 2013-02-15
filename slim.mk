# Specify phone tech before including full_phone
$(call inherit-product, vendor/slim/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := I9100G

# Inherit some common Slim stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/i9100g/full_i9100g.mk)

# Inherit Device Settings
$(call inherit-product, vendor/slim/config/common_sgs.mk)

# Inherit torch settings
$(call inherit-product, vendor/slim/config/common_ledflash.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := i9100g
PRODUCT_NAME := slim_i9100g
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I9100G
PRODUCT_MANUFACTURER := samsung

#Extra Device info
PRODUCT_PROPERTY_OVERRIDES += \
	ro.device.cpu=Dual-core_1.2Ghz_Cortex-A9 \
	ro.device.gpu=PowerVR-SGX540 \
	ro.device.rear_cam=8MP \
	ro.device.front_cam=2MP \
	ro.device.screen_res=480x800

#Prebuilt files
PRODUCT_COPY_FILES += \
	device/samsung/i9100g/prebuilt/spn-conf/xml:system/etc/spn-conf.xml
#	device/samsung/i9100g/prebuilt/Torch.apk:system/app/Torch.apk

#Boot Animation
PRODUCT_COPY_FILES += \
	vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

#copy 00check
PRODUCT_COPY_FILES += \
	vendor/slim/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9100G TARGET_DEVICE=GT-I9100G BUILD_FINGERPRINT=samsung/GT-I9100G/GT-I9100G:4.1.2/JZO54K/I9100GXXLSR:user/release-keys PRIVATE_BUILD_DESC="GT-I9100G-user 4.1.2 JZO54K I9100GXXLSR release-keys"
