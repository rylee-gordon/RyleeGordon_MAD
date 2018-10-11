//
//  SecondViewController.swift
//  coloradoTrivia
//
//  Created by Rylee Gordon on 10/10/18.
//  Copyright © 2018 Rylee Gordon. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var rocks: UIButton!
    @IBOutlet weak var soil: UIButton!
    @IBOutlet weak var columbine: UIButton!
    @IBOutlet weak var magnolia: UIButton!
    @IBOutlet weak var denver: UIButton!
    @IBOutlet weak var coloradoSpgs: UIButton!
    
    @IBAction func home(_ sender: UIButton) {
    }
    
    @IBOutlet weak var score: UILabel!
    
    //determining the correct answers
    var correctAnswer = 2|3|5
    func updateScore(){
        
        if correctAnswer == 2 || correctAnswer == 3 || correctAnswer == 5 {
            score.text = "Correct!"
        }
        else{
            score.text = "Incorrect!"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    //assign each button to a value, use the values to distinguish between correct and incorrect answers
    @IBAction func rocks1(_ sender: UIButton) {
        correctAnswer = 1
        updateScore()
    }
    @IBAction func soil1(_ sender: UIButton) {
        correctAnswer = 2
        updateScore()
    }
    @IBAction func columbine1(_ sender: UIButton) {
        correctAnswer = 3
        updateScore()
    }
    @IBAction func magnolia1(_ sender: UIButton) {
        correctAnswer = 4
        updateScore()
    }
    @IBAction func denver1(_ sender: UIButton) {
        correctAnswer = 5
        updateScore()
    }
    @IBAction func coloradoSpgs1(_ sender: UIButton) {
        correctAnswer = 6
        updateScore()
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
