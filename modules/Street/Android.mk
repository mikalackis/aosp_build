LOCAL_PATH := .
include $(CLEAR_VARS)
include $(GAPPS_CLEAR_VARS)
LOCAL_MODULE := Street
LOCAL_PACKAGE_NAME := com.google.android.street

include $(BUILD_GAPPS_PREBUILT_APK)
