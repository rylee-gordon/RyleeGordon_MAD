//
//  ViewController.swift
//  pizzaCalculator
//
//  Created by Rylee Gordon on 9/28/18.
//  Copyright © 2018 Rylee Gordon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var people: UITextField!
    @IBOutlet weak var slices: UITextField!
    @IBOutlet weak var numberPizzas: UILabel!
    @IBAction func userTappedBackground(sender: AnyObject) {
        view.endEditing(true)
    }
    //makes the keyboard go away
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func updatePizzas() {
        var amountPeople:Float //amount of people eating pizza
        var numSlices:Float //slices per person
        //if the people text field is empty, the amount of people is 0, else the amount of people is the number entered
        if people.text!.isEmpty {
            amountPeople = 0.0
        }
        else {
            amountPeople = Float(people.text!)!
        }
        //if the slices text field is empty, the amount of slices is 0, else the number of slices is the number entered
        if slices.text!.isEmpty {
            numSlices = 0.0 }
        else {
            numSlices = Float(slices.text!)!
        }
    
    
    //let is constant
    //number of people is assigned the people text field 
    let numberOfPeople=Int(people.text!) //returns an optional
    let numberOfPizzas = amountPeople*numSlices
    var perPerson : Float = 0.0 //specify Float so it's not a Double
        if numberOfPeople != nil {
            if numberOfPeople! > 0 {
                perPerson = (numberOfPizzas/8)
            }else {
                //UIAlertController object
                let alertUser=UIAlertController(title: "Alert!", message: "Number of people must be greater than 0", preferredStyle: UIAlertControllerStyle.alert)
                
                //UIAlertAction object
                let cancelIt=UIAlertAction(title: "Cancel", style:UIAlertActionStyle.cancel, handler: nil)
                alertUser.addAction(cancelIt)
                
                let okIt=UIAlertAction(title: "OK", style:UIAlertActionStyle.default, handler: { action in
                    self.people.text="1"
                    self.updatePizzas()
                })
                alertUser.addAction(okIt)
    
                present(alertUser, animated: true, completion: nil)
            } //end else
        }
        
        let numberStlyes = NumberFormatter()
        numberStlyes.numberStyle=NumberFormatter.Style.none
        numberPizzas.text=numberStlyes.string(from: NSNumber(value: perPerson))
    }
        func textFieldDidEndEditing(_ textField: UITextField) {
            updatePizzas()
        }
    
    override func viewDidLoad() {
        people.delegate=self
        slices.delegate=self
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

