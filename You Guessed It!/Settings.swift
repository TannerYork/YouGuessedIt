//
//  Settings.swift
//  You Guessed It!
//
//  Created by Tanner York on 10/12/18.
//  Copyright © 2018 Tanner York. All rights reserved.
//

import UIKit

class Settings {
    static let sharedInstance = Settings()
    
    var numberOfGuesses: Int = 5
    var minRange: Int = 1
    var maxRange: Int = 100
    
}
