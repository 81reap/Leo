//  iOS

%hook SBLockScreenView

#define PREFERENCES_PATH @"/var/mobile/Library/Preferences/com.hax0rdoge.leo.plist"
#define ENABLED_PREF @"slideToUnlockEnabled"
#define TEXT_PREF @"slideToUnlockText"

- (void)setCustomSlideToUnlockText:(id)unlockText {
  NSDictionary *prefs = [[NSDictionary alloc] initWithContentsOfFile:PREFERENCES_PATH];
  NSString *text = [prefs objectForKey: TEXT_PREF];

  if(![text isEqualToString:@""] || text != nil || [[prefs objectForKey: ENABLED_PREF] boolValue]) {
    %orig(text);
  }else{
    %orig(unlockText);
  }
}

%end

//  Safari

%hook UIWebBrowserView

#define PREFERENCES_PATH @"/var/mobile/Library/Preferences/com.hax0rdoge.leo.plist"
#define WEBSCROLLIN_PREF @"webscrollinEnabled"

+ (double)preferredScrollDecelerationFactor {
  NSDictionary *prefs = [[NSDictionary alloc] initWithContentsOfFile:PREFERENCES_PATH];
  return ([[prefs valueForKey: WEBSCROLLIN_PREF] boolValue]) ? 0.998 : %orig ;
}

%end
