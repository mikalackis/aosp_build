LOCAL_PATH := .
include $(CLEAR_VARS)
include $(GAPPS_CLEAR_VARS)
LOCAL_MODULE := PlayGames
LOCAL_PACKAGE_NAME := com.google.android.play.games

include $(BUILD_GAPPS_PREBUILT_APK)
