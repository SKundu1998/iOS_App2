//
//  ViewController.swift
//  iOS_App2
//
//  Created by Kapeesh Sethia on 27/05/17.
//  Copyright © 2017 rafamarkos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textGuess: UITextField!
    @IBOutlet weak var labelResult: UILabel!
    @IBAction func buttonGuessTapped(_ sender: Any) {
        if textGuess.text == nil {
            labelResult.text = "Enter something."
            return
        }
        let intFingersGuess = Int(textGuess.text!)!
        if (Double(textGuess.text!)! != Double(intFingersGuess)) {
            labelResult.text = "That's really not possible"
            return
        }
        if (intFingersGuess < 0 || intFingersGuess > 10) {
            labelResult.text = "That's really not possible."
            return
        }
        let intFingersActual = Int(arc4random_uniform(11))
        if Int(textGuess.text!)! == intFingersActual {
            labelResult.text = "Dammit, you got it."
        }
        else {
            labelResult.text = "Sucker!"
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

