LOCAL_PATH := .
include $(CLEAR_VARS)
include $(GAPPS_CLEAR_VARS)
LOCAL_MODULE := Maps
LOCAL_PACKAGE_NAME := com.google.android.apps.maps

include $(BUILD_GAPPS_PREBUILT_APK)
