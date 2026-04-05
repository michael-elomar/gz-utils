LOCAL_PATH := $(call my-dir)

################################################################################
# sdformat
################################################################################

include $(CLEAR_VARS)

LOCAL_MODULE := gz-utils
LOCAL_DESCRIPTION := Classes and functions for robot applications

LOCAL_LIBRARIES := \
	gz-cmake \
	CLI11 \
	spdlog

LOCAL_EXPORT_LDLIBS := -lgz-utils

LOCAL_CXXFLAGS := -std=c++17

LOCAL_EXPORT_C_INCLUDES := $(TARGET_OUT_STAGING)/usr/include/gz/utils4

LOCAL_CMAKE_CONFIGURE_ENV +=\
	PKG_CONFIG_PATH=$(TARGET_OUT_STAGING)/usr/lib/pkgconfig

# LOCAL_CMAKE_CONFIGURE_ARGS := \
# 	-DBUILD_TESTING:BOOL=False \
# 	-DUSE_UPSTREAM_CFLAGS:BOOL=False \
# 	-DIGNITION-MATH_INCLUDE_DIRS=$(TARGET_OUT_STAGING)/usr/include/ignition/math2 \
# 	-DIGNITION-MATH_LIBRARIES=$(TARGET_OUT_STAGING)/usr/lib/libignition-math2.so \
# 	-DIGNITION-MATH_LIBRARY_DIRS=$(TARGET_OUT_STAGING)/usr/lib

include $(BUILD_CMAKE)

