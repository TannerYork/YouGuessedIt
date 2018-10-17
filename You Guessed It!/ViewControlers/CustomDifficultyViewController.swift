//
//  CustomDifficultyViewController.swift
//  You Guessed It!
//
//  Created by Tanner York on 10/10/18.
//  Copyright © 2018 Tanner York. All rights reserved.
//

import UIKit



class CustomDifficultyViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //MARK: Properties
    @IBOutlet weak var minRangeTextFeild: UITextField!
    @IBOutlet weak var maxRangeTextFeild: UITextField!
    @IBOutlet weak var numberOfGuessesFeild: UITextField!
    @IBOutlet weak var rangeWarrningText: UILabel!
    @IBOutlet weak var numOfGuessWarrningText: UILabel!
    
    
    //MARK: Actions
    func isValid(_ min: Int, _ max: Int ) -> Bool {
        var returnValue = false
        if min > max {
            rangeWarrningText.text = "Make sure the min is smaller that the max"
            returnValue = false
        } else if min < 0 || max < 0 {
            rangeWarrningText.text = "Values have to be greater than 0"
            returnValue = false
        } else if min == max {
            rangeWarrningText.text = "Min cannot equal max"
        } else {
            returnValue = true
        }
        return returnValue
    }
    
    
    @IBAction func completeCustomDifficulty(_ sender: Any) {
        let minRangeInput = minRangeTextFeild.text!
        let maxRangeInput = maxRangeTextFeild.text!
        let numberOfGuessesInput = numberOfGuessesFeild.text!
        
        guard let customMinRange = Int(minRangeInput) else {
            rangeWarrningText.text = "You need to give me two vaild numbers"
            return
        }
        guard let customMaxRange = Int(maxRangeInput) else {
            rangeWarrningText.text = "You need to give me two vaild numbers"
            return
        }
        guard let customNumOfGuess = Int(numberOfGuessesInput) else {
            rangeWarrningText.text = "You need to give me a vaild number"
            return
        }
        guard isValid(customMinRange, customMaxRange) else {
            rangeWarrningText.text = "Min needs to be greater than max"
            return
        }
        
        Settings.sharedInstance.minRange = customMinRange
        Settings.sharedInstance.maxRange = customMaxRange
        Settings.sharedInstance.numberOfGuesses = customNumOfGuess
        rangeWarrningText.text = "Cutsom difficulty set"

    }
}
