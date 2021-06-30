//
//  ViewController.swift
//  Push Notification
//
//  Created by عبدالعزيز رضا  on 4/6/21.
//  Copyright © 2021 abdelazizReda. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert, .sound]) { (generted, error) in
            
        }
        
        let content = UNMutableNotificationContent()
        content.title = "hey using it . . . "
        content.body = "look this notification . . . "
        
        let date = Date().addingTimeInterval(10)
        let datacomponent = Calendar.current.dateComponents([.year, .month,.day,.hour,.minute,.second], from: date)
       let trigger =  UNCalendarNotificationTrigger(dateMatching: datacomponent, repeats: false)
        
        let uuidstring = UUID().uuidString
        let request = UNNotificationRequest(identifier: uuidstring, content: content, trigger: trigger)

        center.add(request) { (error) in
            
        }
    }
}

