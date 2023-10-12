export THEOS_PACKAGE_SCHEME=rootless
export TARGET = iphone:clang:latest:8.4
export DEBUG= 0 
#CFLAGs += -fobjc-arc
export FINALPACKAGE = 1
GO_EASY_ON_ME = 1


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = YourDismissedTY
YourDismissedTY_FILES = Tweak.xm
YourDismissedTY_FRAMEWORKS = UIKit Foundation WebKit
YourDismissedTY_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

