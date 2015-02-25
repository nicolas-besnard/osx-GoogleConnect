//
//  LoginWindowController.swift
//  GoogleOAuth
//
//  Created by Nicolas Besnard on 25/02/2015.
//  Copyright (c) 2015 Nicolas Besnard. All rights reserved.
//

import Cocoa

class LoginWindowController: NSWindowController {
    // S I N G L E T O N
    class var shared: LoginWindowController {
        struct Static {
            static let instance: LoginWindowController = LoginWindowController(windowNibName: "LoginWindowController")
        }
        return Static.instance
    }
    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
    @IBAction func click(sender: AnyObject) {
        var controller: GTMOAuth2WindowController!
        controller = GTMOAuth2WindowController(
            scope: "https://www.googleapis.com/auth/calendar",
            clientID: "aze",
            clientSecret: "aze",
            keychainItemName: "ThisIsAkeyChain",
            resourceBundle: nil
        )
        
        controller.signInSheetModalForWindow(self.window, completionHandler: { (auth: GTMOAuth2Authentication!, error: NSError!) -> Void in
            println("ok")
        })
    }
}
