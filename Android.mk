LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_SRC_FILES := memtester.c tests.c
LOCAL_MODULE := memtester
LOCAL_C_INCLUDES := $(LOCAL_PATH)
#LOCAL_MODULE_PATH :=  output path of module!
include $(BUILD_EXECUTABLE)
