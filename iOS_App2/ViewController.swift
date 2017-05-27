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
        let intFingersActual = Int(arc4random_uniform(11))
        if Int(textGuess.text!)! == intFingersActual {
            print("Yes")
        }
        else {
            print("No")
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

