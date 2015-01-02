//
//  ViewController3.swift
//  Mind Meld 3
//
//  Created by Louis Konig on 1/1/15.
//  Copyright (c) 2015 Louis Konig. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    var toPass:String!
    
    @IBOutlet weak var lblGame: UILabel!
    @IBOutlet weak var lblTimer: UILabel!
    
    @IBOutlet weak var wordOne: UILabel!
    @IBOutlet weak var wordTwo: UILabel!
    @IBOutlet weak var wordThree: UILabel!
    @IBOutlet weak var wordFour: UILabel!
    @IBOutlet weak var wordFive: UILabel!
    @IBOutlet weak var wordSix: UILabel!
    
    
    @IBOutlet weak var wordOneP2: UILabel!
    @IBOutlet weak var wordTwoP2: UILabel!
    @IBOutlet weak var wordThreeP2: UILabel!
    @IBOutlet weak var wordFourP2: UILabel!
    @IBOutlet weak var wordFiveP2: UILabel!
    @IBOutlet weak var wordSixP2: UILabel!
    @IBOutlet weak var txtBoxAdd: UITextField!
    
    
    
    @IBOutlet weak var indicatorOne: UILabel!
    @IBOutlet weak var indicatorTwo: UILabel!
    @IBOutlet weak var indicatorThree: UILabel!
    @IBOutlet weak var indicatorFour: UILabel!
    @IBOutlet weak var indicatorFive: UILabel!
    @IBOutlet weak var indicatorSix: UILabel!
    

    @IBOutlet weak var w1: UILabel!
    @IBOutlet weak var w2: UILabel!
    
    @IBOutlet weak var lblWin: UILabel!

    var gameTurn = 0
    var playerTwoWords = ["party", "sandwich", "wings", "mozzerala sticks", "super bowl", "tostitos"]
    
    var masterTimer: NSTimer? = nil
    var timeLeft = 10 //default number of seconds left
    
    
    @IBAction func addWord(sender: AnyObject) {
    self.gameTurn = self.gameTurn + 1
    
        
        switch gameTurn{
        case 1:
            self.wordOne.text = self.txtBoxAdd.text
            self.txtBoxAdd.text = ""

        case 2:
            self.wordTwo.text = self.txtBoxAdd.text
            self.txtBoxAdd.text = ""
            
        case 3:
            self.wordThree.text = self.txtBoxAdd.text
            self.txtBoxAdd.text = ""
            
        case 4:
            self.wordFour.text = self.txtBoxAdd.text
            self.txtBoxAdd.text = ""
            
        case 5:
            self.wordFive.text = self.txtBoxAdd.text
            self.txtBoxAdd.text = ""
            
        case 6:
            self.wordSix.text = self.txtBoxAdd.text
            self.txtBoxAdd.text = ""
        
        default:
            self.wordOne.text = "Error"
            
        }
        
        self.timeLeft = 0
    
    }
    
    
    @IBAction func turnComplete(sender: AnyObject) {
        switch self.gameTurn{
        case 1:
            self.wordOneP2.text = playerTwoWords[self.gameTurn-1]
            self.indicatorOne.text = ""
            self.w1.text = self.wordOne.text
            self.w2.text = self.wordOneP2.text
            self.indicatorTwo.text = ">>"
 
        case 2:
            self.wordTwoP2.text = playerTwoWords[self.gameTurn-1]
            self.indicatorTwo.text = ""
            self.w1.text = self.wordTwo.text
            self.w2.text = self.wordTwoP2.text
            self.indicatorThree.text = ">>"
        
        case 3:
            self.wordThreeP2.text = playerTwoWords[self.gameTurn-1]
            self.indicatorThree.text = ""
            self.w1.text = self.wordThree.text
            self.w2.text = self.wordThreeP2.text
            self.indicatorFour.text = ">>"
        
        case 4:
            self.wordFourP2.text = playerTwoWords[self.gameTurn-1]
            self.indicatorFour.text = ""
            self.w1.text = self.wordFour.text
            self.w2.text = self.wordFourP2.text
            self.indicatorFive.text = ">>"
            
        case 5:
            self.wordFiveP2.text = playerTwoWords[self.gameTurn-1]
            self.indicatorFive.text = ""
            self.w1.text = self.wordFive.text
            self.w2.text = self.wordFiveP2.text
            self.indicatorSix.text = ">>"
            
        case 6:
            self.wordSixP2.text = playerTwoWords[self.gameTurn-1]
            self.indicatorSix.text = ""
            self.w1.text = self.wordSix.text
            self.w2.text = self.wordSixP2.text
            self.lblWin.text = "MIND MELD"
            
            
        default:
            self.wordOneP2.text = "Error"
        
        }
        
        self.timeLeft = 10
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

       lblGame.text = toPass
        self.masterTimer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "countDown", userInfo: nil, repeats: true) //start timer that calls countDown every second
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    
  
    func countDown(){
        --timeLeft //take a second away
        if (timeLeft > 0)
        {
            self.lblTimer.text = String(timeLeft) //update the label if the timeleft is greater than 0
        }
        else
        {
            self.lblTimer.text = "Done!"
        //    self.lblTimer.text = "Done!" //otherwise let the user know and update the label
        //    self.masterTimer!.invalidate() //get rid of timer - game over no longer needed to fire
        //    self.masterTimer = nil
            
        }
    }
  

}
 



