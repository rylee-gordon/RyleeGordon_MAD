//
//  ViewController.swift
//  workoutApp
//
//  Created by Rylee Gordon on 10/18/18.
//  Copyright © 2018 Rylee Gordon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var workoutTime: UITextField!
    @IBOutlet weak var miles: UILabel!
    @IBOutlet weak var calories: UILabel!
    
    
    //makes the keyboard go away
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func updateWorkout(){
        var amoutRan:Float
        
        if workoutTime.text!.isEmpty {
            amoutRan = 0.0
        }
        else {
            amoutRan = Float(workoutTime.text!)!
        }
        
        let numberMin=Float(workoutTime.text!)
        let numberMiles=numberMin!*6
        let calBurned=numberMin!*10
        
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

