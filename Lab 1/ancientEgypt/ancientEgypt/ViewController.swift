//
//  ViewController.swift
//  ancientEgypt
//
//  Created by Rylee Gordon on 9/12/18.
//  Copyright © 2018 Rylee Gordon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageText: UILabel!
    @IBOutlet weak var artImage: UIImageView!
    
    @IBAction func pyramid(_ sender: UIButton) {
        messageText.text = "Great Pyramid"
        artImage.image = UIImage(named:"great-pyramid")
    }
    @IBAction func temple(_ sender: UIButton) {
        messageText.text = "Abu Simbel"
        artImage.image = UIImage(named:"Abu-Simbel")
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

