LOCAL_PATH := .
include $(CLEAR_VARS)
include $(GAPPS_CLEAR_VARS)
LOCAL_MODULE := Books
LOCAL_PACKAGE_NAME := com.google.android.apps.books

include $(BUILD_GAPPS_PREBUILT_APK)
