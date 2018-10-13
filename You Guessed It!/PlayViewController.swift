//
//  PlayViewContollerViewController.swift
//  You Guessed It!
//
//  Created by Tanner York on 10/10/18.
//  Copyright © 2018 Tanner York. All rights reserved.
//

import UIKit

class PlayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        restart()
        randomNumber = Int.random(in: 0...100)
        numberOfGuesses.text = "\(guessesRemaining) guesses remaining"
        timesPlayed.text = "Total times played: \(SavedData.sharedInstance.numberOfTimesPlayed)"
        timesWon.text = "Total times won: \(SavedData.sharedInstance.numberOfWins)"
        timesLost.text = "Total times lost: \(SavedData.sharedInstance.numberOfLosses)"
    }
    
    //MARK: Properties
    @IBOutlet weak var optionRange: UILabel!
    @IBOutlet weak var toHigh: UILabel!
    @IBOutlet weak var toLow: UILabel!
    @IBOutlet weak var numberOfGuesses: UILabel!
    @IBOutlet weak var userGuessTextFeild: UITextField!
    @IBOutlet weak var userInputResponder: UILabel!
    @IBOutlet weak var enterGuessButton: UIButton!
    @IBOutlet weak var playAgianButton: UIButton!
    @IBOutlet weak var timesPlayed: UILabel!
    @IBOutlet weak var timesWon: UILabel!
    @IBOutlet weak var timesLost: UILabel!
    
    
    
    var minimum = Settings.sharedInstance.minRange
    var maximum = Settings.sharedInstance.maxRange
    var numOfGuesses = Settings.sharedInstance.numberOfGuesses

    var randomNumber = Int.random(in: 0...100)
    var guessesRemaining = Settings.sharedInstance.numberOfGuesses


    
    
    
    //MARK: Action
    @IBAction func enterGuessButton(_ sender: Any) {
        let userGuessInput = userGuessTextFeild.text!
        guard let userGuess = Int(userGuessInput) else {
            userInputResponder.text = "I need a vaild number to work"
            return
        }
        guard userGuess <= maximum  else {
            userInputResponder.text = "Number is to high"
            return
        }
        makeAGuess(userGuess)
        if guessesRemaining <= 0 {
            userInputResponder.text = "You Loose"
            enterGuessButton.isHidden = true
            playAgianButton.isHidden = false
            userGuessTextFeild.isEnabled = false
            SavedData.sharedInstance.numberOfLosses = SavedData.sharedInstance.numberOfLosses + 1
            SavedData.sharedInstance.numberOfTimesPlayed = SavedData.sharedInstance.numberOfTimesPlayed + 1
            return
        }
        numberOfGuesses.text = "\(guessesRemaining) guesses remaining"
        timesPlayed.text = "Total times played: \(SavedData.sharedInstance.numberOfTimesPlayed)"
        timesWon.text = "Total times won: \(SavedData.sharedInstance.numberOfWins)"
        timesLost.text = "Total times lost: \(SavedData.sharedInstance.numberOfLosses)"
    }
    
    
    @IBAction func playGainButton(_ sender: Any) {
        restart()
    }
    
    
        func makeAGuess( _ guess: Int) {
            
            userGuessTextFeild.text = ""
            guard guess >= minimum && guess <= maximum else {
                userInputResponder.text = "Numbers need to be greater than \(minimum) and less that \(maximum)"
                return
            }
            
            
            if guess == randomNumber {
                userInputResponder.text = "YOU WIN"
                enterGuessButton.isHidden = true
                playAgianButton.isHidden = false
                userGuessTextFeild.isEnabled = false
                SavedData.sharedInstance.numberOfWins = SavedData.sharedInstance.numberOfWins + 1
                SavedData.sharedInstance.numberOfTimesPlayed = SavedData.sharedInstance.numberOfTimesPlayed + 1
                return
            }
            if guess > randomNumber {
                if toLow.textColor == UIColor.red {
                    toLow.textColor = darkBlue
                }
                toHigh.textColor = UIColor.red
                guessesRemaining = guessesRemaining - 1
            }
            if guess < randomNumber {
                if toHigh.textColor == UIColor.red {
                    toHigh.textColor = darkBlue
                }
                toLow.textColor = UIColor.red
                guessesRemaining = guessesRemaining - 1
            }
        }
        
         func restart() {
            // new random number
            randomNumber = Int.random(in: minimum...maximum)
            // reset guesses remaining
            guessesRemaining = 5
            // clear text field
            userGuessTextFeild.text = ""
            toHigh.textColor = darkBlue
            toLow.textColor = darkBlue
            // enable text field
            userGuessTextFeild.isEnabled = true
            // hide play again button
            playAgianButton.isHidden = true
            // show guess button
            enterGuessButton.isHidden = false
            // reset feedback label
            userInputResponder.text = ""
            // reset guesses remaining label
            numberOfGuesses.text = "\(guessesRemaining) guesses remaining"
            //Set instructions lable
            optionRange.text = "Pick a number between \(minimum) and \(maximum)"
            timesPlayed.text = "Total times played: \(SavedData.sharedInstance.numberOfTimesPlayed)"
            timesWon.text = "Total times won: \(SavedData.sharedInstance.numberOfWins)"
            timesLost.text = "Total times lost: \(SavedData.sharedInstance.numberOfLosses)"
        }
}
