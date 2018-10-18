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
        
        let numberMin=Int(workoutTime.text!)
        var numberMiles=amoutRan*(6/60)
        let calBurned=numberMin!*10
        
        if numberMin != nil {
            if amoutRan > 0 {
                numberMiles = Float((numberMin!*6/60))
            }
            else {
                //UIAlertController object
                let alertUser=UIAlertController(title: "Alert!", message: "Number of people must be greater than 0", preferredStyle: UIAlertControllerStyle.alert)
    
                //UIAlertAction object
                let cancelIt=UIAlertAction(title: "Cancel", style:UIAlertActionStyle.cancel, handler: nil)
                alertUser.addAction(cancelIt)
    
                let okIt=UIAlertAction(title: "OK", style:UIAlertActionStyle.default, handler: { action in
                    self.workoutTime.text="30"
                    self.updateWorkout()
                })
                alertUser.addAction(okIt)
                
    present(alertUser, animated: true, completion: nil)
    } //end else
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

