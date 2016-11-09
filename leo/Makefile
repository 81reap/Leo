include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = Leo
Leo_FILES = LEORootListController.m
Leo_INSTALL_PATH = /Library/PreferenceBundles
Leo_FRAMEWORKS = UIKit
Leo_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/Leo.plist$(ECHO_END)
