//
//  SettingsViewController.swift
//  You Guessed It!
//
//  Created by Tanner York on 10/10/18.
//  Copyright © 2018 Tanner York. All rights reserved.
//

import UIKit


class DifficultyViewController: UIViewController {
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: Properties
   
   
    @IBOutlet weak var easyButtonDesign: RoundedButton!
    @IBOutlet weak var mediumButtonDesign: RoundedButton!
    @IBOutlet weak var hardButtonDesign: RoundedButton!
    @IBOutlet weak var customButtonDesign: RoundedButton!
    
    
    
    
    //MARK: Actions
    @IBAction func easyButton(_ sender: Any) {
        if hardButtonDesign.backgroundColor == .selectedButton {
            hardButtonDesign.backgroundColor = .darkBlue
        }
        if customButtonDesign.backgroundColor == .selectedButton {
            customButtonDesign.backgroundColor = .darkBlue
        }
        if mediumButtonDesign.backgroundColor == .selectedButton {
            easyButtonDesign.backgroundColor = .darkBlue
        }
        easyButtonDesign.backgroundColor = .selectedButton
        Settings.sharedInstance.minRange = 0
        Settings.sharedInstance.maxRange = 100
        Settings.sharedInstance.numberOfGuesses = 5
    }
    @IBAction func mediumButton(_ sender: Any) {
        if hardButtonDesign.backgroundColor == .selectedButton {
            hardButtonDesign.backgroundColor = .darkBlue
        }
        
        if customButtonDesign.backgroundColor == .selectedButton {
            customButtonDesign.backgroundColor = .darkBlue
        }
        if easyButtonDesign.backgroundColor == .selectedButton {
            easyButtonDesign.backgroundColor = .darkBlue
        }
        mediumButtonDesign.backgroundColor = .selectedButton
        Settings.sharedInstance.minRange = 0
        Settings.sharedInstance.maxRange = 1000
        Settings.sharedInstance.numberOfGuesses = 7
    }
    
    @IBAction func hardButton(_ sender: Any) {
        if customButtonDesign.backgroundColor == .selectedButton {
            customButtonDesign.backgroundColor = .darkBlue
        }
        if easyButtonDesign.backgroundColor == .selectedButton {
            easyButtonDesign.backgroundColor = .darkBlue
        }
        if mediumButtonDesign.backgroundColor == .selectedButton {
            mediumButtonDesign.backgroundColor = .darkBlue
        }
        hardButtonDesign.backgroundColor = .selectedButton
        Settings.sharedInstance.minRange = 0
        Settings.sharedInstance.maxRange = 10000
        Settings.sharedInstance.numberOfGuesses = 9
        
    }
    @IBAction func custumButton(_ sender: Any) {
        if easyButtonDesign.backgroundColor == .selectedButton {
            easyButtonDesign.backgroundColor = .darkBlue
        }
        if mediumButtonDesign.backgroundColor == .selectedButton {
            mediumButtonDesign.backgroundColor = .darkBlue
        }
        if hardButtonDesign.backgroundColor == .selectedButton {
            hardButtonDesign.backgroundColor = .darkBlue
        }
        customButtonDesign.backgroundColor = .selectedButton
    }
}
