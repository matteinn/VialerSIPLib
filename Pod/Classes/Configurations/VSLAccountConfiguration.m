//
//  VSLAccountConfiguration.m
//  Copyright © 2015 Devhouse Spindle. All rights reserved.
//

#import "VSLAccountConfiguration.h"

@implementation VSLAccountConfiguration

- (instancetype)init {
    if (self = [super init]) {
        self.sipAuthRealm = @"asterisk";
        self.sipAuthScheme = @"digest";
        self.dropCallOnRegistrationFailure = NO;
        self.mediaStunType = VSLStunUseRetryOnFailure;
        self.sipStunType = VSLStunUseDefault;
    }
    return self;
}

- (NSString *)sipAddress {
    if (self.sipAccount && self.sipDomain) {
        return [NSString stringWithFormat:@"%@@%@", self.sipAccount, self.sipDomain];
    }
    return nil;
}

@end
