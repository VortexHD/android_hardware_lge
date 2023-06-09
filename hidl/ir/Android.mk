# Copyright (C) 2013 The Android Open Source Project
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ifeq ($(TARGET_USE_LGE_IR),true)

LOCAL_MODULE := android.hardware.ir@1.0-service.lge
LOCAL_INIT_RC := android.hardware.ir@1.0-service.lge.rc
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SHARED_LIBRARIES := \
    liblog \
    libcutils \
    libdl \
    libxml2 \
    libhidlbase \
    libhidltransport \
    libhardware \
    libutils \
    android.hardware.ir@1.0 \
    libcir_driver

LOCAL_SRC_FILES := \
    service.cpp \
    ConsumerIr.cpp

LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true
LOCAL_PRIVATE_PLATFORM_APIS := true

include $(BUILD_EXECUTABLE)

endif
