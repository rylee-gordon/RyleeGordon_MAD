//
//  ViewController.swift
//  moodAnimals
//
//  Created by Rylee Gordon on 10/14/18.
//  Copyright © 2018 Rylee Gordon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func red(_ sender: UIButton) {
        performSegue(withIdentifier: "red", sender: self)
    }
    @IBAction func orange(_ sender: UIButton) {
        performSegue(withIdentifier: "orange", sender: self)
    }
    @IBAction func yellow(_ sender: UIButton) {
        performSegue(withIdentifier: "yellow", sender: self)
    }
    @IBAction func blue(_ sender: UIButton) {
        performSegue(withIdentifier: "blue", sender: self)
    }
    @IBAction func purple(_ sender: UIButton) {
        performSegue(withIdentifier: "purple", sender: self)
    }
    @IBAction func brown(_ sender: UIButton) {
        performSegue(withIdentifier: "brown", sender: self)
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

