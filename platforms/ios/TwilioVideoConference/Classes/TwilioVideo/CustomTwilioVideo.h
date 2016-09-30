//
//  CustomTwilioVideo.h
//  TwilioVideoConference
//
//  Created by Soriyany keo on 9/30/16.
//
//
#import "ConversationViewController.h"
#import <Cordova/CDVPlugin.h>

@interface CustomTwilioVideo : CDVPlugin
// Cordova command method
-(void) openTwilioVideo:(CDVInvokedUrlCommand*)command;
-(void)closedTwilioVideo;

// Create and override some properties and methods (these will be explained later)
//-(void) capturedImageWithPath:(NSString*)imagePath;
@property (strong, nonatomic) ConversationViewController* overlay;
@property (strong, nonatomic) CDVInvokedUrlCommand* latestCommand;
@property (readwrite, assign) BOOL hasPendingOperation;

@end
