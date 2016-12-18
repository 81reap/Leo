#define PREFERENCES_PATH @"/var/mobile/Library/Preferences/com.hax0rdoge.leo.plist"

//  iOS

%hook UIKeyboardLayoutStar

#define HND_ENABLED_PREF @"onehandedEnabled"

-(bool)edgeSwipeGestureEnabled {
  NSDictionary *prefs = [[NSDictionary alloc] initWithContentsOfFile:PREFERENCES_PATH];
  return ([[prefs valueForKey: HND_ENABLED_PREF] boolValue]) ? true : %orig ;
}

%end

%hook SBLockScreenView

#define STU_ENABLED_PREF @"slideToUnlockEnabled"
#define STU_TEXT_PREF @"slideToUnlockText"

- (void)setCustomSlideToUnlockText:(id)unlockText {
  NSDictionary *prefs = [[NSDictionary alloc] initWithContentsOfFile:PREFERENCES_PATH];
  NSString *text = [prefs objectForKey: STU_TEXT_PREF];

  if([text isEqualToString:@""] || text == nil || ![[prefs valueForKey: STU_ENABLED_PREF] boolValue]) {
    %orig(unlockText);
  }else if ([[prefs valueForKey: STU_ENABLED_PREF] boolValue]) {
    %orig(text);
  }
}

%end

%hook SBLockScreenViewController

#define SSB_ENABLED_PREF @"samestatusEnabled"

- (long long)statusBarStyle {
  NSDictionary *prefs = [[NSDictionary alloc] initWithContentsOfFile:PREFERENCES_PATH];
  return ([[prefs valueForKey: SSB_ENABLED_PREF] boolValue]) ? 0.0 : %orig ;
}

%end

// Preferences

%hook PSUIPrefsListController

#define SCM_ENABLED_PREF @"carrierEnabled"

- (BOOL)_showCarrier {
  NSDictionary *prefs = [[NSDictionary alloc] initWithContentsOfFile:PREFERENCES_PATH];
  return ([[prefs valueForKey: SCM_ENABLED_PREF] boolValue]) ? true : %orig ;
}

%end

//  Safari

%hook UIWebBrowserView
#import <objc/runtime.h>
#define WBS_ENABLED_PREF @"webscrollinEnabled"

+ (double)preferredScrollDecelerationFactor {
  NSDictionary *prefs = [[NSDictionary alloc] initWithContentsOfFile:PREFERENCES_PATH];
  return ([[prefs valueForKey: WBS_ENABLED_PREF] boolValue]) ? 0.998 : %orig ;
}

%end
