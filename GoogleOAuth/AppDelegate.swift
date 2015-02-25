//
//  AppDelegate.swift
//  GoogleOAuth
//
//  Created by Nicolas Besnard on 25/02/2015.
//  Copyright (c) 2015 Nicolas Besnard. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        let windowController = LoginWindowController.shared
        windowController.showWindow(self)
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

