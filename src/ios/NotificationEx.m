//
//  Notification.m
//  PhoneGap
//
//  Created by Michael Nachbaur on 16/04/09.
//  Copyright 2009 Decaf Ninja Software. All rights reserved.
//
//  With modifications by Shazron Abdullah, Nitobi Software Inc.
//

#import "NotificationEx.h"
#import <Cordova/CDV.h>

@implementation NotificationEx

- (void)activityStart:(CDVInvokedUrlCommand*)command
{
    NSLog(@"Activity starting");
    UIApplication* app = [UIApplication sharedApplication];
    app.networkActivityIndicatorVisible = YES;
}

- (void)activityStop:(CDVInvokedUrlCommand*)command
{
    NSLog(@"Activitiy stopping ");
    UIApplication* app = [UIApplication sharedApplication];
    app.networkActivityIndicatorVisible = NO;
}

@end
