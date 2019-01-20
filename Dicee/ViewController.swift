//
//  ViewController.swift
//  Dicee
//
//  Created by Ratnam Yadav on 20/01/19.
//  Copyright © 2019 Ratnam Yadav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let myNames = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceIndex1:Int = 0
    var randomDiceIndex2:Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDices()
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDices()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            updateDices()
        }
    }
    
    func updateDices() {
        generateRandomDices()
        
        diceImageView1.image = getImage(randomDiceIndex1)
        diceImageView2.image = getImage(randomDiceIndex2)
    }
    
    func getImage(_ index: Int) -> UIImage? {
        let image = UIImage(named: myNames[index])
        return image
    }
    
    func generateRandomDices() {
        // Generating random number for dice
        randomDiceIndex1 = getRandomInt()
        randomDiceIndex2 = getRandomInt()
    }

    func getRandomInt() -> Int {
        return Int.random(in: 0...5)
    }
}

