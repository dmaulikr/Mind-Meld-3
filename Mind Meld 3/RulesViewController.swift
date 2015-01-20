//
//  RulesViewController.swift
//  Mind Meld 3
//
//  Created by Louis Konig on 1/19/15.
//  Copyright (c) 2015 Louis Konig. All rights reserved.
//

import UIKit

class RulesViewController: UIViewController {

    
    @IBAction func buttonLogout(sender: AnyObject) {
        PFUser.logOut()
        var currentUser = PFUser.currentUser() // this will now be nil
        //self.performSegueWithIdentifier("logoutSeg", sender: self)
        //self.dismissViewControllerAnimated(true, completion: nil)
        self.performSegueWithIdentifier("logOutToSignIn", sender: self)
        println("The current user: \(currentUser)")
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
