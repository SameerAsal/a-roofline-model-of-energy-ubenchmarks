LOCAL_PATH:= $(call my-dir)
ADRENO_SDK_DIR=/home/jee/src/AdrenoSDK

include $(CLEAR_VARS)
commonSrcFiles := cache.cpp
commonSrcFiles += timer.cpp
commonIncludes := /home/jee/src/AdrenoSDK/Samples/OpenCL/opencl_sdk/include/public/CL/


LOCAL_CFLAGS := -c -g -O0 -W
LOCAL_CFLAGS += $(commonCFlags)
LOCAL_LDLIBS := -L$(LOCAL_PATH) -lGLES_mali
LOCAL_SRC_FILES:= $(commonSrcFiles)
LOCAL_C_INCLUDES := $(commonIncludes)
LOCAL_MODULE:= clcache
LOCAL_MODULE_TAGS := optional
LOCAL_SHARED_LIBRARIES  += libcutils libOpenCL
include $(BUILD_EXECUTABLE)

