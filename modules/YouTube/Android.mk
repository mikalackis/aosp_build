LOCAL_PATH := .
include $(CLEAR_VARS)
include $(GAPPS_CLEAR_VARS)
LOCAL_MODULE := YouTube
LOCAL_PACKAGE_NAME := com.google.android.youtube

include $(BUILD_GAPPS_PREBUILT_APK)
