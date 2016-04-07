LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)

ifeq ($(GAPPS_IS_VENDOR_LIB),true)
  lib_prefix := vendor/
endif

ifdef TARGET_2ND_ARCH
  LOCAL_MULTILIB ?= both
  ifeq ($(GAPPS_IS_VENDOR_LIB),true)
    LOCAL_MODULE_PATH_64 := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
    LOCAL_MODULE_PATH_32 := $($(TARGET_2ND_ARCH_VAR_PREFIX)TARGET_OUT_VENDOR_SHARED_LIBRARIES)
  else
    LOCAL_MODULE_PATH_64 := $(TARGET_OUT_SHARED_LIBRARIES)
    LOCAL_MODULE_PATH_32 := $($(TARGET_2ND_ARCH_VAR_PREFIX)TARGET_OUT_SHARED_LIBRARIES)
  endif # GAPPS_IS_VENDOR_LIB
else
  ifeq ($(GAPPS_IS_VENDOR_LIB),true)
    LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
  else
    LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
  endif # GAPPS_IS_VENDOR_LIB
endif # TARGET_2ND_ARCH

full_name := $(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
ifdef TARGET_2ND_ARCH
  LOCAL_SRC_FILES_64 := $(call gapps-find-lib-for-arch,$(TARGET_ARCH),$(lib_prefix)lib64,$(full_name))
  LOCAL_SRC_FILES_32 := $(call gapps-find-lib-for-arch,$(TARGET_2ND_ARCH),$(lib_prefix)lib,$(full_name))
else
  LOCAL_SRC_FILES := $(call gapps-find-lib-for-arch,$(TARGET_ARCH),$(lib_prefix)lib,$(full_name))
endif

# Reset internal variables
GAPPS_IS_VENDOR_LIB :=
is_vendor_lib :=
lib_prefix :=
full_name :=

include $(BUILD_PREBUILT)
