export THEOS_PACKAGE_SCHEME=rootless
export TARGET = iphone:clang:13.7:13.0

PACKAGE_VERSION=$(THEOS_PACKAGE_BASE_VERSION)

export THEOS_DEVICE_IP=192.168.86.37
#export THEOS_DEVICE_PORT=2222

include $(THEOS)/makefiles/common.mk

export ARCHS = arm64 arm64e

TWEAK_NAME = AlwaysForwardNotifications
$(TWEAK_NAME)_FILES = Tweak.xm
$(TWEAK_NAME)_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
