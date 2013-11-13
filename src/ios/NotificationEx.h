//
//  Notification.h
//  PhoneGap
//
//  Created by Michael Nachbaur on 16/04/09.
//  Copyright 2009 Decaf Ninja Software. All rights reserved.
//

#import <Cordova/CDV.h>

@interface NotificationEx : CDVPlugin

- (void)activityStart:(CDVInvokedUrlCommand*)command;
- (void)activityStop:(CDVInvokedUrlCommand*)command;

@end
