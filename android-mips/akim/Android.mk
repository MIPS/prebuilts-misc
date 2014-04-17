ifeq ($(TARGET_ARCH),mips)
ifndef is_sdk_build  # omit libakim.so from SDK images

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

ifneq ($(findstring mips32r2,$(TARGET_ARCH_VARIANT)),)
LOCAL_SRC_FILES := mips32r2/libakim.so
else
LOCAL_SRC_FILES := mips32r1/libakim.so
endif

LOCAL_MODULE := libakim.so
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := shell_$(TARGET_SHELL)
include $(BUILD_PREBUILT)

endif  # is_sdk_build
endif  # mips
