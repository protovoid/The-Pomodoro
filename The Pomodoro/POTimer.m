//
//  POTimer.m
//  The Pomodoro
//
//  Created by Chad on 9/23/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "POTimer.h"



@interface POTimer ()

@property (nonatomic, strong) NSArray *entries;

@end


@implementation POTimer

+ (POTimer *)sharedInstance {
    static POTimer *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[POTimer alloc] init];
        sharedInstance.entries = @[]; // create empty array
        // [sharedInstance registerForNotifications];
        // [sharedInstance loadFromDefaults];
    });
    return sharedInstance;
}


- (void)postMinutes {
    // In the postMinutes method post round minutes notification

}

@end
