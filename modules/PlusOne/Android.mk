LOCAL_PATH := .
include $(CLEAR_VARS)
include $(GAPPS_CLEAR_VARS)
LOCAL_MODULE := PlusOne
LOCAL_PACKAGE_NAME := com.google.android.apps.plus

include $(BUILD_GAPPS_PREBUILT_APK)
