//
//  ViewController.swift
//  TVOSExample
//
//  Created by Tung Vu on 7/4/19.
//  Copyright © 2019 Treasure Data. All rights reserved.
//

import UIKit
import TreasureData_iOS_SDK

class TVViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchDownAddEvent(sender: AnyObject) {
        TreasureData.sharedInstance().addEvent(
            withCallback: ["name": "komamitsu", "age": 99],
            database: "testdb",
            table: "demotbl",
            onSuccess:{()-> Void in
                print("addEvent: success")
        },
            onError:{(errorCode, message) -> Void in
                print("addEvent: error. errorCode=%@, message=%@", errorCode, message ?? "")
        }
        )
    }
    
    @IBAction func touchDownUploadEvents(sender: AnyObject) {
        TreasureData.sharedInstance().uploadEvents(callback: {
            print("uploadEvents: success")
        }, onError: {(errorCode, message) -> Void in
            print("uploadEvents: error. errorCode=\(errorCode), message=\(message ?? "")")
        })
    }
    
    @IBAction func fetchUserSegments(sender: AnyObject) {
        let audienceTokens = ["Your Profile API (Audience) Token here"]
        let keys = ["your_key": "your_value",]
        let options: [TDRequestOptionsKey : Any] = [.timeoutInterval: 10, .cachePolicy: 10];
        TreasureData.sharedInstance().fetchUserSegments(tokens: audienceTokens, keys: keys, options: options) { response, error in
            print("Response: \(String(describing: response))");
            print("Error: \(String(describing: error))");
        }
    }

}

