TARGET_INIT_VENDOR_LIB := libinit_msm
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := system/core/init
LOCAL_CFLAGS := -Wall
LOCAL_SRC_FILES := init_msm8916.cpp
ifneq ($(TARGET_LIBINIT_MSM8916_DEFINES_FILE),)
  LOCAL_SRC_FILES += ../../../../$(TARGET_LIBINIT_MSM8916_DEFINES_FILE)
endif
LOCAL_MODULE := libinit

include $(BUILD_STATIC_LIBRARY)

