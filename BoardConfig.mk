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
#

DEVICE_PATH := device/samsung/m31s

# Kernel
#BUILD_KERNEL_FROM_SOURCE := true
ifeq ($(BUILD_KERNEL_FROM_SOURCE), true)
	TARGET_KERNEL_CONFIG := celicia-rec-m31s_defconfig
	BOARD_DTBO_CFG := $(DEVICE_PATH)/kernel/m31s.cfg
else
	TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilts/zImage
	BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilts/dtbo.img
	BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)/prebuilts/dtb
endif

# Inherit from universal9611-common tree
-include device/samsung/universal9611-common/BoardConfigCommon.mk
