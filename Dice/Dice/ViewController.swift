//
//  ViewController.swift
//  Dice
//
//  Created by Dylan Lian on 6/19/19.
//  Copyright © 2019 Dylan Lian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDice1: Int = 0
    var randomDice2: Int = 0
    
    @IBOutlet weak var dice1: UIImageView!
    @IBOutlet weak var dice2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomizeDice()
    }

    @IBAction func roll(_ sender: UIButton) {
        randomizeDice()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomizeDice()
    }
    
    func randomizeDice() {
        randomDice1 = Int.random(in: 0...5)
        randomDice2 = Int.random(in: 0...5)
        
        dice1.image = UIImage(named: diceArray[randomDice1])
        dice2.image = UIImage(named: diceArray[randomDice2])
    }
    
}

