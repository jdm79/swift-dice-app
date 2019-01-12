//
//  ViewController.swift
//  Dicee
//
//  Created by James Daniel Malvern on 09/01/2019.
//  Copyright © 2019 Malvernation. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"];
    var previousRoll: [Int] = [0];
    var randomDiceIndex1 : Int = 0;
    var randomDiceIndex2 : Int = 0;
    var i : Int = 0;
    var total : Int = 0;
    var runningTotal : Int = 0;

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var totalAmountView: UITextField!
    @IBOutlet weak var previousAmountView: UITextField!
    
    override func viewDidLoad() {
        // this is a bit like componentDidMount in React
        // only gets triggered when the view loads up
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImages()

    }
    
    @IBAction func clearButtonPressed(_ sender: UIButton) {
    
        clear()
    
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        updateDiceImages()
        
    }
    // this is exported and used in viewDidLoad()
    func updateDiceImages() {
        
        // change range to 1 ... 6 if using the dynamic image path below
        randomDiceIndex1 = Int.random(in: 0 ... 5);
        randomDiceIndex2 = Int.random(in: 0 ... 5);
        total = (randomDiceIndex1 + randomDiceIndex2) + 2;
        runningTotal = total + previousRoll[i];
        print(i)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        totalAmountView.text = String(total)
        previousRoll.append(runningTotal);
        previousAmountView.text = String(runningTotal)
        i = i + 1;

        
        //diceImageView1.image = UIImage(named: "dice\(randomDiceIndex1)")
        //diceImageView2.image = UIImage(named: "dice\(randomDiceIndex2)")
    }
    
    func clear() {
        
        previousRoll = [0];
        i = 0;
        totalAmountView.text = String(0)
        previousAmountView.text = String(0)
        
    }
    
}

