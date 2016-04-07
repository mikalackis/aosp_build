# Opengapps AOSP build system
GAPPS_BUILD_SYSTEM_PATH := vendor/google/build/core
GAPPS_SOURCES_PATH := vendor/opengapps/sources
GAPPS_DEVICE_FILES_PATH := vendor/google/build
GAPPS_FILES := $(GAPPS_DEVICE_FILES_PATH)/opengapps-files.mk

include $(GAPPS_BUILD_SYSTEM_PATH)/definitions.mk

# Device should define their GAPPS_VARIANT in device/manufacturer/product/BoardConfig.mk
ifneq ($(TARGET_PRODUCT),$(filter $(TARGET_PRODUCT),sdk))
ifeq ($(GAPPS_VARIANT),)
	$(error GAPPS_VARIANT must be configured)
endif
GAPPS_VARIANT_EVAL := $(call get-gapps-variant,$(GAPPS_VARIANT))

ifeq ($(GAPPS_VARIANT_EVAL),)
$(error GAPPS_VARIANT $(GAPPS_VARIANT) was not found. Use of one of pico,nano,micro,mini,full,stock,super)
endif

TARGET_GAPPS_VARIANT := $(GAPPS_VARIANT_EVAL)
endif

