//
//  ViewController.swift
//  Dicee-App
//
//  Created by Yatharth Rawat on 15/12/23.
//

import UIKit

class ViewController: UIViewController {
    var liftDiceNumber = 1
    var rightDiceNumber = 5
    
    
    @IBOutlet weak var diceImageViewOne: UIImageView!
    
    
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        diceImageViewOne.image = UIImage(imageLiteralResourceName: "DiceSix")
        diceImageViewTwo.image = UIImage(imageLiteralResourceName: "DiceTwo")
            
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        print("button got tapped")
//        diceImageViewOne.image = UIImage(imageLiteralResourceName: "DiceFour")
//        diceImageViewTwo.image = UIImage(imageLiteralResourceName: "DiceFour")
        
        diceImageViewOne.image = [
            UIImage(imageLiteralResourceName: "DiceOne"),
            UIImage(imageLiteralResourceName: "DiceTwo"),
            UIImage(imageLiteralResourceName: "DiceThree"),
            UIImage(imageLiteralResourceName: "DiceFour"),
            UIImage(imageLiteralResourceName: "DiceFive"),
            UIImage(imageLiteralResourceName: "DiceSix")
        ][liftDiceNumber]
        liftDiceNumber += 1
        diceImageViewTwo.image = [UIImage(imageLiteralResourceName: "DiceOne"),
             UIImage(imageLiteralResourceName: "DiceTwo"),
             UIImage(imageLiteralResourceName: "DiceThree"),
             UIImage(imageLiteralResourceName: "DiceFour"),
             UIImage(imageLiteralResourceName: "DiceFive"),
             UIImage(imageLiteralResourceName: "DiceSix"),
        ][rightDiceNumber]
        rightDiceNumber -= 1
        
        
    }
    
}

