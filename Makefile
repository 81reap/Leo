ARCHS = arm64 armv7s armv7
TARGET = iphone:clang:latest:9.0
GO_EASY_ON_ME = 1

TWEAK_NAME = Leo
Leo_FILES = Tweak.xm
SUBPROJECTS += leopreferences

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/aggregate.mk

after-install::
	install.exec "killall -9 SpringBoard"
