//
//  InterfaceController.h
//  WatchConnectivityExample WatchKit Extension
//
//  Created by Thomas Elliott on 8/11/15.
//  Copyright © 2015 Tom Elliott. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>
@import WatchConnectivity;

@interface InterfaceController : WKInterfaceController <WCSessionDelegate>

@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *messageLabel;

// Our WatchConnectivity Session for communicating with the iOS app
@property (nonatomic) WCSession* watchSession;

@end
