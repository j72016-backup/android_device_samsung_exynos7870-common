PRODUCT_PACKAGES += \
    camera.universal7870 \
    libexynoscamera_shim \
    libstagefright_shim \
    libcamera_client_shim \
    android.hardware.camera.provider@2.4-impl.exynos7870 \
    android.hardware.camera.provider@2.4-service

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/camera/external_camera_config.xml:system/vendor/etc/external_camera_config.xml
