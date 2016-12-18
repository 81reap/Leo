#include "LEORootListController.h"
#include "spawn.h"

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

@implementation LEOiOSListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"iOS" target:self] retain];
	}

	return _specifiers;
}

- (void)respring {
	pid_t pid;
	int status;
	const char* args[] = {"killall", "-9", "SpringBoard", NULL};
	posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char* const*)args, NULL);
	waitpid(pid, &status, WEXITED);
}

@end

@implementation LEOKeyboardListController

-(NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Keyboard" target:self] retain];
	}

	return _specifiers;
}

@end

@implementation LEOLockScreenListController

-(NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"LockScreen" target:self] retain];
	}

	return _specifiers;
}

@end

@implementation LEOAppStoreListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"AppStore" target:self] retain];
	}

	return _specifiers;
}

@end

@implementation LEOClockListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Clock" target:self] retain];
	}

	return _specifiers;
}

@end

@implementation LEOCydiaListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Cydia" target:self] retain];
	}

	return _specifiers;
}

@end

@implementation LEOPreferencesListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Preferences" target:self] retain];
	}

	return _specifiers;
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
