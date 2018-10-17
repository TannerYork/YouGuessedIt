//
//  StatsViewController.swift
//  You Guessed It!
//
//  Created by Tanner York on 10/17/18.
//  Copyright © 2018 Tanner York. All rights reserved.
//

import UIKit

class StatsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    //MARK: Properties
    @IBOutlet weak var gamesPlayedTotal: UILabel!
    @IBOutlet weak var gamesPlayedText: UILabel!
    @IBOutlet weak var winLossPercent: UILabel!
    @IBOutlet weak var winLossText: UILabel!
    @IBOutlet weak var winTotal: UILabel!
    @IBOutlet weak var winText: UILabel!
    @IBOutlet weak var lostTotal: UILabel!
    @IBOutlet weak var lostText: UILabel!
    
    
    
    func setup() {
        let defaults = UserDefaults.standard
        let wins = defaults.integer(forKey: "numberOfWins")
        let losses = defaults.integer(forKey: "numberOfLosses")
        let games = wins + losses
        let  winRate: Int
        if games == 0 {
            winRate = 0
        } else {
            winRate = Int((Double(wins) / Double(games)) * 100.0)
        }
        gamesPlayedTotal.text = "\(games)"
        winLossPercent.text = "\(winRate)%"
        winTotal.text = "\(wins)"
        lostTotal.text = "\(losses)"
    }
    
    
}
