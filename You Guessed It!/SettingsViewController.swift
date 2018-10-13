//
//  SettingsViewController.swift
//  You Guessed It!
//
//  Created by Tanner York on 10/10/18.
//  Copyright © 2018 Tanner York. All rights reserved.
//

import UIKit

let CustomSettings = CustomDifficultyViewController()

class SettingsViewController: UIViewController {
    
   

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //MARK: Properties
    @IBOutlet weak var easyButtonDesign: UIButton!
    @IBOutlet weak var mediumButtonDesign: UIButton!
    @IBOutlet weak var hardButtonDesign: UIButton!
    @IBOutlet weak var customButtonDesign: UIButton!
    
    
    
    
    //MARK: Actions
    
    @IBAction func easyButton(_ sender: Any) {
        if mediumButtonDesign.backgroundColor == selectedButton {
            mediumButtonDesign.backgroundColor = darkBlue
        }
        if hardButtonDesign.backgroundColor == selectedButton {
            hardButtonDesign.backgroundColor = darkBlue
        } 
        if customButtonDesign.backgroundColor == selectedButton {
            customButtonDesign.backgroundColor = darkBlue
        }
        easyButtonDesign.backgroundColor = selectedButton
        Settings.sharedInstance.minRange = 1
        Settings.sharedInstance.maxRange = 50
        Settings.sharedInstance.numberOfGuesses = 10
    }
    @IBAction func mediumButton(_ sender: Any) {
        if hardButtonDesign.backgroundColor == selectedButton {
            hardButtonDesign.backgroundColor = darkBlue
        }
        if customButtonDesign.backgroundColor == selectedButton {
            customButtonDesign.backgroundColor = darkBlue
        }
        if easyButtonDesign.backgroundColor == selectedButton {
            easyButtonDesign.backgroundColor = darkBlue
        }
        mediumButtonDesign.backgroundColor = selectedButton
        Settings.sharedInstance.minRange = 0
        Settings.sharedInstance.maxRange = 75
        Settings.sharedInstance.numberOfGuesses = 7
    }
    @IBAction func hardButton(_ sender: Any) {
        if customButtonDesign.backgroundColor == selectedButton {
            customButtonDesign.backgroundColor = darkBlue
        }
        if easyButtonDesign.backgroundColor == selectedButton {
            easyButtonDesign.backgroundColor = darkBlue
        }
        if mediumButtonDesign.backgroundColor == selectedButton {
            mediumButtonDesign.backgroundColor = darkBlue
        }
        hardButtonDesign.backgroundColor = selectedButton
        Settings.sharedInstance.minRange = 0
        Settings.sharedInstance.maxRange = 100
        Settings.sharedInstance.numberOfGuesses = 5
        
    }
    @IBAction func custumButton(_ sender: Any) {
        if easyButtonDesign.backgroundColor == selectedButton {
            easyButtonDesign.backgroundColor = darkBlue
        }
        if mediumButtonDesign.backgroundColor == selectedButton {
            mediumButtonDesign.backgroundColor = darkBlue
        }
        if hardButtonDesign.backgroundColor == selectedButton {
            hardButtonDesign.backgroundColor = darkBlue
        }
        customButtonDesign.backgroundColor = selectedButton
    }
    

}
