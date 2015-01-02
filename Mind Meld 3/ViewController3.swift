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
    @IBOutlet weak var wordOne: UILabel!
    @IBOutlet weak var wordOneP2: UILabel!
    @IBOutlet weak var txtBoxAdd: UITextField!
    @IBOutlet weak var indicatorOne: UILabel!
    @IBOutlet weak var indicatorTwo: UILabel!
    

    @IBOutlet weak var w1: UILabel!
    @IBOutlet weak var w2: UILabel!

    var gameTurn = 0
    
    
    @IBAction func addWord(sender: AnyObject) {
    self.gameTurn = self.gameTurn + 1
    
        
        switch gameTurn{
        case 1:
            self.wordOne.text = self.txtBoxAdd.text
            self.txtBoxAdd.text = ""
        
        
        default:
            self.wordOne.text = "Error"
            
        }
    
    
    
    }
    
    
    @IBAction func turnComplete(sender: AnyObject) {
        switch self.gameTurn{
        case 1:
            self.wordOneP2.text = "party"
            self.indicatorOne.text = ""
            self.w1.text = self.wordOne.text
            self.w2.text = self.wordOneP2.text
            self.indicatorTwo.text = ">>"
    
        default:
            self.wordOneP2.text = "Error"
        
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

       lblGame.text = toPass
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    
  

  

}
 



