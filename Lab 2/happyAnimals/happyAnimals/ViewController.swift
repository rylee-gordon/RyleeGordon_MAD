//
//  ViewController.swift
//  happyAnimals
//
//  Created by Rylee Gordon on 9/19/18.
//  Copyright © 2018 Rylee Gordon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //header label as outlet and image as outlet
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var rpImage: UIImageView!
    
    @IBOutlet weak var imageControl: UISegmentedControl!
    @IBAction func changeInfo(_ sender: UISegmentedControl) {
        if imageControl.selectedSegmentIndex==0{
            titleLabel.text = "Red Panda"
            rpImage.image=UIImage(named: "redPanda")
        }
        else if imageControl.selectedSegmentIndex==1{
            titleLabel.text="Otter"
            rpImage.image=UIImage(named: "otter")
        }
    }
    
    @IBOutlet weak var hatLabel: UILabel!
    @IBOutlet weak var hatSwitch: UISwitch!
    @IBAction func updateHat(_ sender: UISwitch) {
        if hatSwitch.isOn{
            hatLabel.text=hatLabel.text?.uppercased()
        }
        if hatSwitch.isOn && imageControl.selectedSegmentIndex==0{
            rpImage.image = UIImage(named: "redPandaHat")
        }
        if hatSwitch.isOn && imageControl.selectedSegmentIndex==1{
            rpImage.image = UIImage(named: "otterHat")
            }
        else{ if hatSwitch.isOn==false && imageControl.selectedSegmentIndex==0{
            rpImage.image = UIImage(named: "redPanda")
            hatLabel.text=hatLabel.text?.lowercased()
            }
        else{ if hatSwitch.isOn==false && imageControl.selectedSegmentIndex==1{
            rpImage.image = UIImage(named: "otter")
            hatLabel.text=hatLabel.text?.lowercased()
            }
        }
    }
    }
    
    @IBOutlet weak var stacheLabel: UILabel!
    @IBOutlet weak var stacheSwitch: UISwitch!
    @IBAction func updateStache(_ sender: UISwitch) {
        if stacheSwitch.isOn{
            stacheLabel.text=stacheLabel.text?.uppercased()
        }
        if stacheSwitch.isOn && imageControl.selectedSegmentIndex==0{
            rpImage.image=UIImage(named: "redPandaStache")
        }
        if stacheSwitch.isOn && imageControl.selectedSegmentIndex==1{
            rpImage.image=UIImage(named: "otterStache")
            }
        else{ if stacheSwitch.isOn==false && imageControl.selectedSegmentIndex==0{
            rpImage.image=UIImage(named: "redPanda")
            stacheLabel.text=stacheLabel.text?.lowercased()
            }
        else{ if stacheSwitch.isOn==false && imageControl.selectedSegmentIndex==1{
            rpImage.image=UIImage(named: "otter")
            stacheLabel.text=stacheLabel.text?.lowercased()
            }
        }
    }
    }
    
    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    @IBAction func slider(_ sender: UISlider) {
        self.titleLabel.font = UIFont.systemFont(ofSize: CGFloat(slider.value))
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

