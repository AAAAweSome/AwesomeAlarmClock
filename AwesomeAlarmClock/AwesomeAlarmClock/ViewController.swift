//
//  ViewController.swift
//  AwesomeAlarmClock
//
//  Created by nanke on 15/10/24.
//  Copyright © 2015 AAC. All rights reserved.
//

import UIKit

class MyClass {
    var __name: String  = ""
    var age: Int = 0
    
    init(name : String , age : Int){
        self.__name = name
        self.age = age
    }
    
    var totalName : String {
        get {
            return __name + String(age)
        }
        
        set {
            totalName = newValue
        }
    }
    
}
let MAX_HOUR = 24
let MAX_MINS = 60
class ViewController: UIViewController {
    @IBOutlet weak var myPickerView: UIPickerView!
    var Hour:[String] = [];
    var mins:[String] = [];

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        for loop in 0..<MAX_HOUR {
            Hour.append( String(loop))
        }
        for loop in 0..<MAX_MINS {
            mins.append( String(loop))
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int)->Int {
        if (component == 0) {
            return Hour.count
        }
        
        if (component == 1){
            return mins.count
        }
        return 0
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        if (component == 0){
            return Hour[row]
        }
        else if (component == 1){
            return mins[row]
        }
        
        return ""

    }
    
    
    
    @IBAction func startGame(){
        let firstNum = myPickerView.selectedRowInComponent(0)
        let secondNum = myPickerView.selectedRowInComponent(1)
        var selectinfo : String = "\nSelect Info is [\(Hour[firstNum])][\(mins[secondNum])] "
            //println("province:(provinces.keys.array[provinceNum!]);city:(cities[cityNum!])")
        
//
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
        
        var myclass  = MyClass(name : "Baby", age : 100)
        
        myalert.title = "准备好了吗\(total)\(allInfo)\(myclass.totalName)\(selectinfo)"
        myalert.message = "准备好开始了吗？"
        myalert.addButtonWithTitle("Ready, go!")
        myalert.show()
    }
}

