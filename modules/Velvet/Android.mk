LOCAL_PATH := .
include $(CLEAR_VARS)
include $(GAPPS_CLEAR_VARS)
LOCAL_MODULE := Velvet
LOCAL_PACKAGE_NAME := com.google.android.googlequicksearchbox
LOCAL_PRIVILEGED_MODULE := true

LOCAL_OVERRIDES_PACKAGES := QuickSearchBox

include $(BUILD_GAPPS_PREBUILT_APK)
