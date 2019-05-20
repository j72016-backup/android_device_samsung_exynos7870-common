PRODUCT_PACKAGES += \
    camera.universal7870 \
    libexynoscamera_shim \
    libstagefright_shim \
    libcamera_client_shim \
    camera.device@3.2-impl \
    camera.device@1.0-impl \
    android.hardware.camera.provider@2.4-impl \
    android.hardware.camera.provider@2.4-service

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/camera/external_camera_config.xml:system/vendor/etc/external_camera_config.xml
