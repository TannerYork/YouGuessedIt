//
//  SettingsViewController.swift
//  You Guessed It!
//
//  Created by Tanner York on 10/10/18.
//  Copyright © 2018 Tanner York. All rights reserved.
//

import UIKit


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
        if mediumButtonDesign.backgroundColor == ExtraUIColors().selectedButton {
            mediumButtonDesign.backgroundColor = ExtraUIColors().darkBlue
        }
        if hardButtonDesign.backgroundColor == ExtraUIColors().selectedButton {
            hardButtonDesign.backgroundColor = ExtraUIColors().darkBlue
        } 
        if customButtonDesign.backgroundColor == ExtraUIColors().selectedButton {
            customButtonDesign.backgroundColor = ExtraUIColors().darkBlue
        }
        easyButtonDesign.backgroundColor = ExtraUIColors().selectedButton
        Settings.sharedInstance.minRange = 0
        Settings.sharedInstance.maxRange = 50
        Settings.sharedInstance.numberOfGuesses = 10
    }
    @IBAction func mediumButton(_ sender: Any) {
        if hardButtonDesign.backgroundColor == ExtraUIColors().selectedButton {
            hardButtonDesign.backgroundColor = ExtraUIColors().darkBlue
        }
        if customButtonDesign.backgroundColor == ExtraUIColors().selectedButton {
            customButtonDesign.backgroundColor = ExtraUIColors().darkBlue
        }
        if easyButtonDesign.backgroundColor == ExtraUIColors().selectedButton {
            easyButtonDesign.backgroundColor = ExtraUIColors().darkBlue
        }
        mediumButtonDesign.backgroundColor = ExtraUIColors().selectedButton
        Settings.sharedInstance.minRange = 0
        Settings.sharedInstance.maxRange = 75
        Settings.sharedInstance.numberOfGuesses = 7
    }
    @IBAction func hardButton(_ sender: Any) {
        if customButtonDesign.backgroundColor == ExtraUIColors().selectedButton {
            customButtonDesign.backgroundColor = ExtraUIColors().darkBlue
        }
        if easyButtonDesign.backgroundColor == ExtraUIColors().selectedButton {
            easyButtonDesign.backgroundColor = ExtraUIColors().darkBlue
        }
        if mediumButtonDesign.backgroundColor == ExtraUIColors().selectedButton {
            mediumButtonDesign.backgroundColor = ExtraUIColors().darkBlue
        }
        hardButtonDesign.backgroundColor = ExtraUIColors().selectedButton
        Settings.sharedInstance.minRange = 0
        Settings.sharedInstance.maxRange = 100
        Settings.sharedInstance.numberOfGuesses = 5
        
    }
    @IBAction func custumButton(_ sender: Any) {
        if easyButtonDesign.backgroundColor == ExtraUIColors().selectedButton {
            easyButtonDesign.backgroundColor = ExtraUIColors().darkBlue
        }
        if mediumButtonDesign.backgroundColor == ExtraUIColors().selectedButton {
            mediumButtonDesign.backgroundColor = ExtraUIColors().darkBlue
        }
        if hardButtonDesign.backgroundColor == ExtraUIColors().selectedButton {
            hardButtonDesign.backgroundColor = ExtraUIColors().darkBlue
        }
        customButtonDesign.backgroundColor = ExtraUIColors().selectedButton
    }
    

}
