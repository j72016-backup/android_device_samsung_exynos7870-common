# Network
# Define default initial receive window size in segments.
PRODUCT_PROPERTY_OVERRIDES += \
    net.tcp.default_init_rwnd=60

# USB
PRODUCT_PROPERTY_OVERRIDES += \
    ro.adb.secure=0 \
    sys.usb.ffs.aio_compat=1
