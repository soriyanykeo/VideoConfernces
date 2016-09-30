//
//  CustomTwilioVideo.m
//  TwilioVideoConference
//
//  Created by Soriyany keo on 9/30/16.
//
//

#import "CustomTwilioVideo.h"

@implementation CustomTwilioVideo
// Cordova command method
-(void) openTwilioVideo:(CDVInvokedUrlCommand *)command {
    // Set the hasPendingOperation field to prevent the webview from crashing
    self.hasPendingOperation = YES;
    // Save the CDVInvokedUrlCommand as a property.  We will need it later.
    self.latestCommand = command;
    // Make the overlay view controller.
    self.overlay = [[ConversationViewController alloc] initWithNibName:@"ConversationViewController" bundle:nil];
    self.overlay.plugin = self;
    // Display the view.  This will "slide up" a modal view from the bottom of the screen.
    [self.viewController presentViewController:self.overlay animated:YES completion:nil];
}
-(void)closedTwilioVideo{
    [self.viewController dismissModalViewControllerAnimated:YES];
}
@end
