//
//  ViewController.swift
//  WatchConnectivityExample
//
//  Created by Thomas Elliott on 8/2/15.
//  Copyright © 2015 Tom Elliott. All rights reserved.
//

import UIKit
import WatchConnectivity

class ViewController: UIViewController, WCSessionDelegate {

    // Our WatchConnectivity Session for communicating with the watchOS app
    var watchSession : WCSession?
    
    @IBOutlet weak var messageField: UITextField!
    
    @IBAction func messageChanged(sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        if(WCSession.isSupported()){
            watchSession = WCSession.defaultSession()
            watchSession!.delegate = self
            watchSession!.activateSession()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

