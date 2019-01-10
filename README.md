###Dice App

A simple dice app made with Swift. Click 'roll' and the di will produce two numbers.


###How it works

Function rollButtonPressed is executed when the 'roll' button is pressed, triggering two pseudo-random number methods which produce a number between 1 and 6, which both create a dynamically-created image path for the dice (dice1, dice5 etc). This image path dictates which number dice face is shown.


###Sample Code

```
@IBAction func rollButtonPressed(_ sender: UIButton) {
        
        randomDiceIndex1 = Int.random(in: 1 ... 6)
        randomDiceIndex2 = Int.random(in: 1 ... 6)
        
        diceImageView1.image = UIImage(named: "dice\(randomDiceIndex1)")
        diceImageView2.image = UIImage(named: "dice\(randomDiceIndex2)")

    }
```
