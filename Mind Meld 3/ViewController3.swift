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
    var gameID:String! = "tYVYbuNR5J"
    
    
    
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
    
        
    var qryUpdateWord = PFQuery(className:"mmGame")
    self.gameTurn = self.gameTurn + 1
    
        
        
        switch gameTurn{
        case 1:
            self.wordOne.text = self.txtBoxAdd.text
            qryUpdateWord.getObjectInBackgroundWithId(self.gameID) {
                (mmGame: PFObject!, error: NSError!) -> Void in
                if error != nil {
                    NSLog("%@", error)
                } else {
                    mmGame["p1w1"] = self.wordOne.text
                    mmGame.saveInBackgroundWithTarget(nil, selector: nil)
                }
            }
            
            self.txtBoxAdd.text = ""

        case 2:
            self.wordTwo.text = self.txtBoxAdd.text
            qryUpdateWord.getObjectInBackgroundWithId(self.gameID) {
                (mmGame: PFObject!, error: NSError!) -> Void in
                if error != nil {
                    NSLog("%@", error)
                } else {
                    mmGame["p1w2"] = self.wordTwo.text
                    mmGame.saveInBackgroundWithTarget(nil, selector: nil)
                }
            }
            self.txtBoxAdd.text = ""
            
        case 3:
            self.wordThree.text = self.txtBoxAdd.text
            qryUpdateWord.getObjectInBackgroundWithId(self.gameID) {
                (mmGame: PFObject!, error: NSError!) -> Void in
                if error != nil {
                    NSLog("%@", error)
                } else {
                    mmGame["p1w3"] = self.wordThree.text
                    mmGame.saveInBackgroundWithTarget(nil, selector: nil)
                }
            }
            self.txtBoxAdd.text = ""

        case 4:
            self.wordFour.text = self.txtBoxAdd.text
                qryUpdateWord.getObjectInBackgroundWithId(self.gameID) {
                (mmGame: PFObject!, error: NSError!) -> Void in
                if error != nil {
                    NSLog("%@", error)
                } else {
                    mmGame["p1w4"] = self.wordFour.text
                    mmGame.saveInBackgroundWithTarget(nil, selector: nil)
                }
            }
            self.txtBoxAdd.text = ""

        case 5:
            self.wordFive.text = self.txtBoxAdd.text
            qryUpdateWord.getObjectInBackgroundWithId(self.gameID) {
                (mmGame: PFObject!, error: NSError!) -> Void in
                if error != nil {
                    NSLog("%@", error)
                } else {
                    mmGame["p1w5"] = self.wordFive.text
                    mmGame.saveInBackgroundWithTarget(nil, selector: nil)
                }
            }
            self.txtBoxAdd.text = ""
            
        case 6:
            self.wordSix.text = self.txtBoxAdd.text
            qryUpdateWord.getObjectInBackgroundWithId(self.gameID) {
                (mmGame: PFObject!, error: NSError!) -> Void in
                if error != nil {
                    NSLog("%@", error)
                } else {
                    mmGame["p1w6"] = self.wordSix.text
                    mmGame.saveInBackgroundWithTarget(nil, selector: nil)
                }
            }
            self.txtBoxAdd.text = ""
        default:
            self.wordOne.text = "Error"
            
        }
        
        


        
        
        
        
        self.timeLeft = 0
    
    }
    
    
    @IBAction func turnComplete(sender: AnyObject) {
        
    var qryUpdateWord2 = PFQuery(className:"mmGame")
        
        switch self.gameTurn{
        case 1:
            self.wordOneP2.text = playerTwoWords[self.gameTurn-1]
            qryUpdateWord2.getObjectInBackgroundWithId(self.gameID) {
                (mmGame2: PFObject!, error: NSError!) -> Void in
                if error != nil {
                    NSLog("%@", error)
                } else {
                    mmGame2["p2w1"] = self.playerTwoWords[self.gameTurn-1]
                    mmGame2.saveInBackgroundWithTarget(nil, selector: nil)
                }
            }
            self.indicatorOne.text = ""
            self.w1.text = self.wordOne.text
            self.w2.text = self.wordOneP2.text
            self.indicatorTwo.text = ">>"
 
        case 2:
            self.wordTwoP2.text = playerTwoWords[self.gameTurn-1]
            qryUpdateWord2.getObjectInBackgroundWithId(self.gameID) {
                (mmGame2: PFObject!, error: NSError!) -> Void in
                if error != nil {
                    NSLog("%@", error)
                } else {
                    mmGame2["p2w2"] = self.playerTwoWords[self.gameTurn-1]
                    mmGame2.saveInBackgroundWithTarget(nil, selector: nil)
                }
            }
            self.indicatorTwo.text = ""
            self.w1.text = self.wordTwo.text
            self.w2.text = self.wordTwoP2.text
            self.indicatorThree.text = ">>"
        
        case 3:
            self.wordThreeP2.text = playerTwoWords[self.gameTurn-1]
            qryUpdateWord2.getObjectInBackgroundWithId(self.gameID) {
                (mmGame2: PFObject!, error: NSError!) -> Void in
                if error != nil {
                    NSLog("%@", error)
                } else {
                    mmGame2["p2w3"] = self.playerTwoWords[self.gameTurn-1]
                    mmGame2.saveInBackgroundWithTarget(nil, selector: nil)
                }
            }

            self.indicatorThree.text = ""
            self.w1.text = self.wordThree.text
            self.w2.text = self.wordThreeP2.text
            self.indicatorFour.text = ">>"
        
        case 4:
            self.wordFourP2.text = playerTwoWords[self.gameTurn-1]
            qryUpdateWord2.getObjectInBackgroundWithId(self.gameID) {
                (mmGame2: PFObject!, error: NSError!) -> Void in
                if error != nil {
                    NSLog("%@", error)
                } else {
                    mmGame2["p2w4"] = self.playerTwoWords[self.gameTurn-1]
                    mmGame2.saveInBackgroundWithTarget(nil, selector: nil)
                }
            }

            self.indicatorFour.text = ""
            self.w1.text = self.wordFour.text
            self.w2.text = self.wordFourP2.text
            self.indicatorFive.text = ">>"
            
        case 5:
            self.wordFiveP2.text = playerTwoWords[self.gameTurn-1]
            qryUpdateWord2.getObjectInBackgroundWithId(self.gameID) {
                (mmGame2: PFObject!, error: NSError!) -> Void in
                if error != nil {
                    NSLog("%@", error)
                } else {
                    mmGame2["p2w5"] = self.playerTwoWords[self.gameTurn-1]
                    mmGame2.saveInBackgroundWithTarget(nil, selector: nil)
                }
            }
            
            self.indicatorFive.text = ""
            self.w1.text = self.wordFive.text
            self.w2.text = self.wordFiveP2.text
            self.indicatorSix.text = ">>"
            
        case 6:
            self.wordSixP2.text = playerTwoWords[self.gameTurn-1]
            qryUpdateWord2.getObjectInBackgroundWithId(self.gameID) {
                (mmGame2: PFObject!, error: NSError!) -> Void in
                if error != nil {
                    NSLog("%@", error)
                } else {
                    self.indicatorSix.text = ""
                    self.w1.text = self.wordSix.text
                    self.w2.text = self.wordSixP2.text
                    if self.w1.text == self.w2.text {
                        self.lblWin.text = "MIND MELD"
                        mmGame2["isMindMeld"] = true
                        mmGame2["pointsWon"] = 10
                        mmGame2["mindMeldRound"] = 6
                    }
                    else {
                        self.lblWin.text = "YOU LOSE"
                        mmGame2["isMindMeld"] = false
                        mmGame2["pointsWon"] = 0
                        mmGame2["mindMeldRound"] = 0
                    }
                    
                    mmGame2["p2w6"] = self.playerTwoWords[self.gameTurn-1]
                    mmGame2.saveInBackgroundWithTarget(nil, selector: nil)
                }
            }


            

            
            
            
        default:
            self.wordOneP2.text = "Error"
        
        }
        
        self.timeLeft = 10
    
        /*
        var louieName = PFObject(className: "louistest")
        louieName.setObject("Louie", forKey: "firstName")
        louieName.saveInBackgroundWithBlock {
            (success: Bool!, error: NSError!) -> Void in
            if (success != nil) {
                NSLog("Object created with id: \(louieName.objectId)")
            } else {
                NSLog("%@", error)
            }
        }
        
        
        
        var query = PFQuery(className: "louistest")
        query.getObjectInBackgroundWithId(louieName.objectId) {
            (ObjectIdentifier: PFObject!, error: NSError!) -> Void in
            if (error == nil) {
                NSLog("umm", louieName.objectForKey("firstName") as NSString)
            } else {
                NSLog("%@: ", error)
            }
        }
    
   
     */
    
    
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

       lblGame.text = toPass
        self.masterTimer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "countDown", userInfo: nil, repeats: true) //start timer that calls countDown every second
    
    
        var qryRandomStarterWordOne = PFQuery(className: "starterWords")
        var query = PFQuery(className:"mmGame")
        qryRandomStarterWordOne.findObjectsInBackgroundWithBlock ({(objects:[AnyObject]!, error: NSError!) in
            if(error == nil){
                
                if let wordObjects = objects as? [PFObject] {
                    let countObjects = UInt32(wordObjects.count)
                    let randomRow = Int(arc4random_uniform(countObjects))
                    let randomRow2 = Int(arc4random_uniform(countObjects))
                    
                    while randomRow == randomRow2{
                        let randomRow2 = Int(arc4random_uniform(countObjects))
                    }
                    
                    
                    let wordObject: AnyObject! = wordObjects[randomRow]
                    let wordObject2: AnyObject! = wordObjects[randomRow2]
                    
                    let word: AnyObject! = wordObject.objectForKey("startWord")
                    let word2: AnyObject! = wordObject2.objectForKey("startWord")
                    self.w1.text = String(word as NSString)
                    self.w2.text = String(word2 as NSString)
                    println("word is: \(word) \(word2)")
                    
                }
            
                query.getObjectInBackgroundWithId(self.gameID) {
                    (mmGameStart: PFObject!, error: NSError!) -> Void in
                    if error != nil {
                        NSLog("%@", error)
                    } else {
                        mmGameStart["startW1"] = self.w1.text
                        mmGameStart["startW2"] = self.w2.text
                        mmGameStart["p1w1"] = ""
                        mmGameStart["p1w2"] = ""
                        mmGameStart["p1w3"] = ""
                        mmGameStart["p1w4"] = ""
                        mmGameStart["p1w5"] = ""
                        mmGameStart["p1w6"] = ""
                        mmGameStart["p2w1"] = ""
                        mmGameStart["p2w2"] = ""
                        mmGameStart["p2w3"] = ""
                        mmGameStart["p2w4"] = ""
                        mmGameStart["p2w5"] = ""
                        mmGameStart["p2w6"] = ""
                        mmGameStart.saveInBackgroundWithTarget(nil, selector: nil)
                    }
                }
            
            
            }
            else{
                println("Error in retrieving \(error)")
            }
            
        })
        
        
        

        
        
    
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
 



