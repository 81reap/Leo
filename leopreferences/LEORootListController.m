#include "LEORootListController.h"

@implementation LEORootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
	}

	return _specifiers;
}

- (void)reportBug {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://github.com/Hax0rDoge/Leo/issues"]];
}

@end

@implementation LEOSafariListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Safari" target:self] retain];
	}

	return _specifiers;
}

@end

@implementation LEOCreditsListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Credits" target:self] retain];
	}

	return _specifiers;
}

- (void)twitter {
    if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"twitter://user?screen_name=Hax0rDoge"]]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"twitter://user?screen_name=Hax0rDoge"]];
    } else {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/Hax0rDoge"]];
    }
}

@end
