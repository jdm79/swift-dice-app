### Dice App

A simple dice app made with Swift. Click 'roll' (or shake the phone) and the di will produce two numbers. The total of these two di will also displayed after each roll.


### How it works

Function rollButtonPressed is executed when the 'roll' button is pressed, triggering the function updateDiceImages(). This function has two pseudo-random number methods which produce a number between 1 and 6, which both create a dynamically-created image path for the dice (dice1, dice5 etc). This image path dictates which number dice face is shown. This function also adds the total of the random numbers (and adds 2) in order to display the total of the di shown on the device.

updateDiceImages() is also in viewDidLoad() so the di are rolled automatically upon opening the app, as well as when you touch the 'Roll' button or shake the phone. The function is fired once the shaking motion has finished, although you could choose to have it fire as soon as the shaking begins using 'motionBegan' rather than 'motionEnded'.


### Sample Code

``` swift
 func updateDiceImages() {
        
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        total = (randomDiceIndex1 + randomDiceIndex2) + 2
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        totalAmountView.text = String(total)
    
      }
  }
```

### Installation
```
$ git clone git@github.com:jdm79/swift-dice-app.git
```
* Open swift-dice-app in Xcode
* Run the app in the simulator by pressing play in the top-left corner of the screen on Xcode