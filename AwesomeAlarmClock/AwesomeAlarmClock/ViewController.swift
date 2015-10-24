//
//  ViewController.swift
//  AwesomeAlarmClock
//
//  Created by nanke on 15/10/24.
//  Copyright © 2015 AAC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startGame(){
        let myalert = UIAlertView()
        var total = 0;
        
        for loop in 0..<4 {
            total += loop
        }
        
        let list = [
            "name":["nanke","hello"],
            "age" :[13, 18]
        ]
        
        var allInfo = ""
        for (key, value) in list{
            var xx = key
            for age in value {
                xx += String(age)
            }
            allInfo += "!!!"
            allInfo += xx
        }
        
        myalert.title = "准备好了吗\(total)\(allInfo)"
        myalert.message = "准备好开始了吗？"
        myalert.addButtonWithTitle("Ready, go!")
        myalert.show()
    }
}

