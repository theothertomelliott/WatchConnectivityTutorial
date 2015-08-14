//
//  ViewController.h
//  WatchConnectivityExample
//
//  Created by Thomas Elliott on 8/11/15.
//  Copyright © 2015 Tom Elliott. All rights reserved.
//

#import <UIKit/UIKit.h>
@import WatchConnectivity;

@interface ViewController : UIViewController <WCSessionDelegate>

@property (weak, nonatomic) IBOutlet UITextField *messageField;

// Our WatchConnectivity Session for communicating with the watchOS app
@property (nonatomic) WCSession* watchSession;

- (IBAction)messageChanged:(id)sender;

@end

