//
//  SignInViewController.swift
//  Mind Meld 3
//
//  Created by Louis Konig on 1/19/15.
//  Copyright (c) 2015 Louis Konig. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    @IBAction func btnSignIn(sender: AnyObject) {
    
        PFUser.logInWithUsernameInBackground(self.userName.text, password:self.password.text) {
            (user: PFUser!, error: NSError!) -> Void in
            if user != nil {
                // Do stuff after successful login.
                self.password.text=""
                self.password.text=""
                
                self.performSegueWithIdentifier("showTabView", sender: self)
            } else {
                // The login failed. Check error to see why.
                
            }
        }
    
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
