//
//  ViewController.m
//  WatchConnectivityExample
//
//  Created by Thomas Elliott on 8/11/15.
//  Copyright © 2015 Tom Elliott. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /*
     * If this device can support a WatchConnectivity session,
     * obtain a session and activate.
     *
     * It isn't usually recommended to put this in viewDidLoad, as the session
     * may not start in the case of starting in the background. We're doing it
     * here to keep this example simple.
     *
     * Note that even though we won't be receiving messages in the View Controller,
     * we still need to supply a delegate to activate the session
     */
    if([WCSession isSupported]){
        self.watchSession = [WCSession defaultSession];
        self.watchSession.delegate = self;
        [self.watchSession activateSession];
    }

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)messageChanged:(id)sender {
    if(self.watchSession){
        NSError *error = nil;
        if(![self.watchSession
         updateApplicationContext:
            @{@"message" : self.messageField.text }
             error:&error]){
            NSLog(@"Updating the context failed: %@", error.localizedDescription);
        }
        
    }
}

@end
