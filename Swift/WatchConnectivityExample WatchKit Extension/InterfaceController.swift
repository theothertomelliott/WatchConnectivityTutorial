//
//  InterfaceController.swift
//  WatchConnectivityExample WatchKit Extension
//
//  Created by Thomas Elliott on 8/2/15.
//  Copyright © 2015 Tom Elliott. All rights reserved.
//

import WatchKit
import Foundation
import WatchConnectivity

class InterfaceController: WKInterfaceController, WCSessionDelegate {

    // Our WatchConnectivity Session for communicating with the iOS app
    var watchSession : WCSession?
    
    @IBOutlet var messageLabel: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        if(WCSession.isSupported()){
            watchSession = WCSession.defaultSession()
            // Add self as a delegate of the session so we can handle messages
            watchSession!.delegate = self
            watchSession!.activateSession()
        }
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
