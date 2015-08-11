//
//  InterfaceController.m
//  WatchConnectivityExample WatchKit Extension
//
//  Created by Thomas Elliott on 8/11/15.
//  Copyright © 2015 Tom Elliott. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    /*
     * If this device can support a WatchConnectivity session,
     * obtain a session and activate.
     */
    if([WCSession isSupported]){
        self.watchSession = [WCSession defaultSession];
        self.watchSession.delegate = self;
        [self.watchSession activateSession];
    }
}

/** Called on the delegate of the receiver. Will be called on startup if an applicationContext is available. */
- (void) session:(WCSession *)session didReceiveApplicationContext:(NSDictionary<NSString *,id> *)applicationContext {
    NSString* message = [applicationContext objectForKey:@"message"];
    [self.messageLabel setText:message];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



