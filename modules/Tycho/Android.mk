LOCAL_PATH := .
include $(CLEAR_VARS)
include $(GAPPS_CLEAR_VARS)
LOCAL_MODULE := Tycho
LOCAL_PACKAGE_NAME := com.google.android.apps.tycho

include $(BUILD_GAPPS_PREBUILT_APK)
