//
//  MenuTabViewController.swift
//  Mind Meld 3
//
//  Created by Louis Konig on 1/15/15.
//  Copyright (c) 2015 Louis Konig. All rights reserved.
//

import UIKit

class MenuTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //override func viewDidAppear(animated: Bool) {
      //  super.viewDidAppear(animated)
        //self.navigationItem.setHidesBackButton(true, animated: false)
        //let logOutButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Stop, target: self, action: Selector("logOut"))
        //self.navigationItem.setLeftBarButtonItem(logOutButton, animated: false)
    //}
    
    
    override func viewDidAppear(animated: Bool) {
        var currentUser = PFUser.currentUser()
        if currentUser != nil {
            // Do stuff with the user
        } else {
            // Show the signup or login screen
            self.performSegueWithIdentifier("segSignIn", sender: self)
            println("The current user: \(currentUser)")
        }
        
        
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
