//
//  ViewController.swift
//  Dicee
//
//  Created by DeRon Sutton on 7/2/19.
//  Copyright © 2019 DeRon Sutton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    //MARK: dices
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }

    //MARK: actions
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        // The code in here will be executed when the roll button is pressed
        updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        // motionEnded makes sense in this case because i care about changing the code when
        // the user stops shaking the phone, not when they begin
        updateDiceImages()
    }
    
    func updateDiceImages(){
        // changes the image property for each image outlet to a random value in the
        // diceArray every time the button is pressed
        diceImageView1.image = UIImage(named: diceArray[Int.random(in: 0 ... 5)])
        diceImageView2.image = UIImage(named: diceArray[Int.random(in: 0 ... 5)])
    }
    
}

