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


    
    
    @IBAction func addWord(sender: AnyObject) {
    self.wordOne.text = self.txtBoxAdd.text
    self.txtBoxAdd.text = ""
    
    }
    
    
    @IBAction func TurnOneComplete(sender: AnyObject) {
    self.wordOneP2.text = "party"
    self.indicatorOne.text = ""
    self.w1.text = self.wordOne.text
    self.w2.text = self.wordOneP2.text
    self.indicatorTwo.text = ">>"
    
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
 



