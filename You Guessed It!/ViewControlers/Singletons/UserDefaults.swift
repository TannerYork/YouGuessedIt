//
//  UserDefaults.swift
//  You Guessed It!
//
//  Created by Tanner York on 10/12/18.
//  Copyright © 2018 Tanner York. All rights reserved.
//

import UIKit





class SavedData {
    static let sharedInstance = SavedData()
    
    var numberOfTimesPlayed: Int
    var numberOfWins: Int
    var numberOfLosses: Int
    init() {
        self.numberOfTimesPlayed = UserDefaults.standard.integer(forKey: "numberOfTimesPlayed")
        self.numberOfWins = UserDefaults.standard.integer(forKey: "numberOfWins")
        self.numberOfLosses = UserDefaults.standard.integer(forKey: "numberOfLosses")
    }
    
    func SaveData() {
        UserDefaults.standard.set(numberOfTimesPlayed, forKey: "numberOfTimesPlayed")
        UserDefaults.standard.set(numberOfWins, forKey: "numberOfWins")
        UserDefaults.standard.set(numberOfLosses, forKey: "numberOfLosses")
    }
}

