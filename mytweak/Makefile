THEOS_DEVICE_IP = 127.0.0.1
THEOS_DEVICE_PORT=2222

ARCHS = arm64 arm64e

TARGET := iphone:clang:latest:14.0
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = myTweak

myTweak_FILES = Tweak.x
myTweak_CFLAGS = -fobjc-arc
myTweak_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk
