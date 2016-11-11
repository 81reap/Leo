include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = LeoPreferences
LeoPreferences_FILES = LEORootListController.m
LeoPreferences_INSTALL_PATH = /Library/PreferenceBundles
LeoPreferences_FRAMEWORKS = UIKit
LeoPreferences_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/LeoPreferences.plist$(ECHO_END)
