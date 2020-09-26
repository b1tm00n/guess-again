//
//  ViewController.swift
//  Guess Again
//
//  Created by andy on 23/07/2020.
//  Copyright © 2020 Bluemoons. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var UserGuess: UITextField!
    
    @IBOutlet var Result: UILabel!
    
    
    @IBAction func Guess(sender: AnyObject) {
        
        let diceRoll = String(arc4random_uniform(5))
        
        print(diceRoll)
        
        if diceRoll == UserGuess.text {
            
            Result.text = "You're right, you're so smart!"
            
        } else {
            
            Result.text = "Wrong, duh! It was a " + diceRoll
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

