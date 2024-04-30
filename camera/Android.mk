LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    CameraWrapper.cpp

LOCAL_C_INCLUDES := \
    framework/native/include \
    system/core/include \
    system/media/camera/include

LOCAL_SHARED_LIBRARIES := \
    libhardware \
    liblog \
    libcamera_client \
    libbase \
    libgui \
    libhidltransport \
    libsensor \
    libutils \
    libcamera_metadata \
    android.hidl.token@1.0-utils

LOCAL_STATIC_LIBRARIES := \
    libarect

LOCAL_32_BIT_ONLY := true
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE := camera.tegra
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
    libcamera_shim.c

LOCAL_SHARED_LIBRARIES := libutils
LOCAL_MODULE := libcamera_shim
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)

 
