//
//  ViewController.swift
//  You Guessed It!
//
//  Created by Tanner York on 10/9/18.
//  Copyright © 2018 Tanner York. All rights reserved.
//

import UIKit
let MainStoryBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
let SettingsView  = MainStoryBoard.instantiateViewController(withIdentifier: "SettingsViewController") as! SettingsViewController

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        SavedData.sharedInstance.SaveData()
    }
    
    
    
    //MARK: Properties
    @IBOutlet weak var playButton: RoundedButton!
    @IBOutlet weak var settingsButton: RoundedButton!
    
    
    
    
    //MARK: Actions
    
    
    

}

