#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/samsung/exynos7870-common

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

###########################################################
### PACKAGES
###########################################################

PRODUCT_PACKAGES += \
        libsamsung_symbols \
	SamsungServiceMode \
	Torch \
	RemovePackages

# Inherit splitted common product configs
-include $(LOCAL_PATH)/product/*.mk

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# Call Samsung LSI Board Support Package
ifneq ($(INCLUDE_EXYNOS_BSP),)
$(call inherit-product, hardware/samsung_slsi/exynos5/exynos5.mk)
$(call inherit-product, hardware/samsung_slsi/exynos7870/exynos7870.mk)
endif
