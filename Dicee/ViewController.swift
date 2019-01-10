//
//  ViewController.swift
//  Dicee
//
//  Created by James Daniel Malvern on 09/01/2019.
//  Copyright © 2019 Malvernation. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0;
    var randomDiceIndex2 : Int = 0;

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        randomDiceIndex1 = Int.random(in: 1 ... 6)
        randomDiceIndex2 = Int.random(in: 1 ... 6)
        
        print(randomDiceIndex1)

    }
    
}

