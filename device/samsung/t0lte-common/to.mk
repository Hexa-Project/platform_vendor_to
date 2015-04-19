# t0lte over-ride
TARGET_POWERHAL_VARIANT := cm

# Custom toolchains
# TARGET_GCC_VERSION_AND := 4.8-sm
# TARGET_GCC_VERSION_ARM := 4.9-sm

#Enable LIQUIFY OPTIMIZATIONS V1
LIQUIFY := FALSE

# GPS fix
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/lib/libgps.utils.so:system/lib/libgps.utils.so \
    $(LOCAL_PATH)/rootdir/lib/libloc_adapter.so:system/lib/libloc_adapter.so \
    $(LOCAL_PATH)/rootdir/lib/libloc_api_v02.so:system/lib/libloc_api_v02.so \
    $(LOCAL_PATH)/rootdir/lib/libloc_eng.so:system/lib/libloc_eng.so \
    $(LOCAL_PATH)/rootdir/lib/hw/gps.default.so:system/lib/hw/gps.default.so

# Update drm files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/vendor/lib/libWVStreamControlAPI_L3.so:/system/vendor/lib/libWVStreamControlAPI_L3.so \
    $(LOCAL_PATH)/rootdir/vendor/lib/libwvdrm_L3.so:/system/vendor/lib/libwvdrm_L3.so

# Remove obsolete drm files
TARGET_COPY_FILES_OVERRIDES := \
    system/vendor/lib/libwvdrm_L1.so \
    system/vendor/lib/libWVStreamControlAPI_L1.so
