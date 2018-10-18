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
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func showWeekly(_ sender: UISwitch) {
        updateWorkout()
    }
   
    @IBAction func slider(_ sender: UISlider) {
    }
    
    @IBAction func workoutButton(_ sender: UIButton) {
        updateWorkout()
    }
    
    @IBOutlet weak var sementControl: UISegmentedControl!
    @IBAction func changePic(_ sender: UISegmentedControl) {
        if sementControl.selectedSegmentIndex==0{
            imageView.image=UIImage(named: "run")
        }
        if sementControl.selectedSegmentIndex==1{
            imageView.image=UIImage(named: "bike")
        }
        else if sementControl.selectedSegmentIndex==2{
            imageView.image=UIImage(named: "swim")
        }
        }
    
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
        
        let numberMinutes=Float(workoutTime.text!)
        
        let milesCalc = amoutRan*6
        let calsCalc = amoutRan*600
        var numberCal : Float = 0.0
        var numberMiles : Float = 0.0

        if numberMinutes != nil {
            if numberMinutes! > 29{
                numberCal =  calsCalc/60
            }
            if numberMinutes != nil {
                if numberMinutes! > 29{
                numberMiles = milesCalc/60
            }
            else {
                //UIAlertController object
                let alertUser=UIAlertController(title: "Alert!", message: "Please Workout More!", preferredStyle: UIAlertControllerStyle.alert)
    
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
            let numberStlyes = NumberFormatter()
        numberStlyes.numberStyle=NumberFormatter.Style.none
            miles.text=numberStlyes.string(from: NSNumber(value: numberMiles))
            calories.text=numberStlyes.string(from: NSNumber(value: numberCal))
        }
}
    func textFieldDidEndEditing(_ textField: UITextField) {
        updateWorkout()
    }
    
    override func viewDidLoad() {
        workoutTime.delegate=self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

