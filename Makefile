export PREFIX = $(THEOS)/toolchain/Xcode11.xctoolchain/usr/bin/

PACKAGE_VERSION=$(THEOS_PACKAGE_BASE_VERSION)

#export THEOS_DEVICE_IP=192.168.86.34
#export THEOS_DEVICE_PORT=2222

include $(THEOS)/makefiles/common.mk

export ARCHS = arm64 arm64e
export TARGET = iphone:clang:13.0:13.0

TWEAK_NAME = AlwaysForwardNotifications
$(TWEAK_NAME)_FILES = Tweak.xm
$(TWEAK_NAME)_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
