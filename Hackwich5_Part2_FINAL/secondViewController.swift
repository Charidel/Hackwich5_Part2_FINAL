//
//  secondViewController.swift
//  Hackwich5_Part2_FINAL
//
//  Created by Charidel Busbuso on 10/7/23.
//

import UIKit

class secondViewController: UIViewController {
    
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var buttomLabel: UILabel!
    
    var currentIndex = 0
    var favoriteMovies = ["Harry Potter Movies", "Tangled", "WandaVision", "Doctor Who", "Hamilton"]
    
    @IBOutlet weak var buttonLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topLabel.text = "My Favorite Shows/Movies"
        
    }
    
    /* @IBAction func myFavoriteMoviesButtonPressed(_sender: Any) {
     bottomLabel.text = favoriteMoviesArray[0]
     } */
    
    
    @IBAction func myFavoriteMoviesButtonPressed(_ sender: Any)
    {
        //[0] equals Harry Potter
        //[1] equals Tnagled
        //[2] equals WandaVision
        //[3] equals Doctor Who
        //[4] equals Hamilton
        
        //Note: All six comments//
        
        /* Comment 1: make a if statement where the the currentIndex is greater than the favoriteMovies
            Comment 2: create a code for buttomLabel that equals to favortieMovies. The buttomLabel will show all four movies.
            Comment 3: create a code for buttonLabel. The buttonLabel is the button that states "See My Favorite Shows/Movies" when you click on it, the label will change to "Next"
                buttonLabel.setTitle("Next", for: UIControl.State.normal)
            Comment 4: you need to change the currentIndex from 0 to increase number, so when you click next, it will show the next thing on the list
            Comment 5: after "else" create a print code, so the label will show on the screen (iphone simulator"
                print("Button has been disabled")
            Comment 6: disable the buttonLabel
         } */
        
        if self.currentIndex < self.favoriteMovies.count
        {
            buttomLabel.text = favoriteMovies[currentIndex]
            buttonLabel.setTitle("Next", for: UIControl.State.normal)
            
            currentIndex+=1
        }
        else
        {
            print("Button has been disabled")
            (buttonLabel!).isEnabled=false
        }
    }
}
