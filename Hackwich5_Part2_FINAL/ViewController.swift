//
//  ViewController.swift
//  Hackwich5_Part2_FINAL
//
//  Created by Charidel Busbuso on 10/7/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var buttomLabel: UILabel!
    
    var currentIndex = 0
    var favoritefoods = ["Sushi","Burgers","Chicken","Cake","Ice Cream"]
    
    @IBOutlet weak var buttonLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topLabel.text = "My Favorite Foods"
        
    }
    
    @IBAction func myFavoriteFoodsButtonPressed(_ sender: Any)
    {
        //[0] equals Sushi
        //[1] equals Burgers
        //[2] equals Chicken
        //[3] equals Cake
        //[4] equals Ice Cream
        
        //Note: All six comments//
        
        /* Comment 1: make a if statement where the the currentIndex is greater than the favoritefoods
            Comment 2: create a code for buttomLabel that equals to favoritefoods. The buttomLabel will show all four foods.
            Comment 3: create a code for buttonLabel. The buttonLabel is the button that states "See My Favorite Foods" when you click on it, the label will change to "Next"
                buttonLabel.setTitle("Next", for: UIControl.State.normal)
            Comment 4: you need to change the currentIndex from 0 to increase number, so when you click next, it will show the next thing on the list
            Comment 5: after "else" create a print code, so the label will show on the screen (iphone simulator"
            Comment 6:disable the buttonLabel
         } */
        
        if self.currentIndex < self.favoritefoods.count
        {
            buttomLabel.text = favoritefoods[currentIndex]
            buttonLabel.setTitle("Next", for: UIControl.State.normal)
            
            currentIndex+=1
        }
        else
        {
            print("Button has been disabled")
            //Comment #6:disable the button
            (buttonLabel!).isEnabled=false
        }
    }
}
