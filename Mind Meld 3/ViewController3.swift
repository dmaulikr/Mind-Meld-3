//
//  ViewController3.swift
//  Mind Meld 3
//
//  Created by Louis Konig on 1/1/15.
//  Copyright (c) 2015 Louis Konig. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {
    
    @IBOutlet weak var lblGame: UILabel!
    @IBOutlet weak var wordOne: UILabel!
    @IBOutlet weak var txtBoxAdd: UITextField!
    
    
    
    @IBAction func addWord(sender: AnyObject) {
    self.wordOne.text = self.txtBoxAdd.text
        
    
    }
    
    var toPass:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       lblGame.text = toPass
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    
  

  

}
 



