//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageViewLeft: UIImageView!
    @IBOutlet weak var diceImageViewRight: UIImageView!

    let diceImages = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
    var leftDice = 0
    var rightDice = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        leftDice = 0
        diceImageViewLeft.image = diceImages[leftDice]
        rightDice = 0
        diceImageViewRight.image = diceImages[rightDice]
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        leftDice = Int.random(in: 0..<diceImages.count)
        rightDice = Int.random(in: 0..<diceImages.count)
        diceImageViewLeft.image = diceImages[leftDice]
        diceImageViewRight.image = diceImages[rightDice]
        // diceImageViewLeft.image = diceImages.randomElement()
        // diceImageViewRight.image = diceImages.randomElement()
    }
    
}

