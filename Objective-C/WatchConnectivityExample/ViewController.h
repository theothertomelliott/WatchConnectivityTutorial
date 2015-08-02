//
//  ViewController.h
//  WatchConnectivityExample
//
//  Created by Thomas Elliott on 8/11/15.
//  Copyright © 2015 Tom Elliott. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *messageField;

- (IBAction)messageChanged:(id)sender;

@end

